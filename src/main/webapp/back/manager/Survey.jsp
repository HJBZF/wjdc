<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../css/easyui.css" />
<link rel="stylesheet" type="text/css" href="../css/wu.css" />

<table id="Survey_data"></table>

<script type="text/javascript">
	var survey_status=["注销","下架","上架"];		//问卷的状态
	//var sid_data;
	//var good_sid;   //拿来存储这个店铺的sid，用来添加时候添加店铺编号进去
	var surveyEditRow =  undefined;     //记录当前编辑行的索引
	var surveyOp;    //我们返回后台的值
	var surveyFlag;    //这个flag表示我们弹出窗口提示用户时进行的该操作名字
	var surveyObj;    //通过这个对象来调用   surveyObj.datagrid(' ' , )   ,相关函数查看帮助文档
	
	/* $(function(){
		$.get("../../storeServlet",{op:"findSname"},function(data){
			sid_data = data;    //将后台找到的数据存到前台的一个变量中
		},"json");
	}); */
	
	surveyObj = $("#Survey_data").datagrid({
		 url:'../../findByPageSurvey',  
		 queryParams:{op:"findByPageSurvey"},
		 fitColumns:true,     //设置为true将自动使列适应表格宽度以防止出现水平滚动。
		 pagination:true,     //设置true将在数据表格底部显示分页工具栏。
		 pageSize:5,
		 pageList:[5,10,15,20],
	     striped:true,    //设置为true将交替显示行背景。
		 rownumbers:true,    //设置为true将显示行数。
		 sortName:"wcxsid",    //按照wcxsid来进行排序
		 fit:true,
		 columns:[[ 
		           {checkbox:true},
		           {field:'wcxsid',title:'问卷编号',width:80,align:'center',sortable:true},   
		           {field:'wcxuid',title:'问卷发布人',width:100,align:'center'},
		           {field:'wcxsname',title:'问卷名称',width:100,align:'center',editor:{type:"text",options:{required:true}}},   
		           {field:'wcxtid',title:'模板分类',width:80,align:'center',editor:{type:"text",options:{required:true}}},
		           {field:'wcxintroduce',title:'问卷简介',width:180,align:'center',editor:{type:"text",options:{required:true}}},
		           {field:'wcxbdate',title:'发表日期',width:80,align:'center',editor:{type:"text",options:{required:true}}},
		           {field:'wcxtime',title:'截止日期',width:80,align:'center',editor:{type:"text",options:{required:true}}},
		           {field:'status',title:'问卷状态',width:60,align:'center',formatter:function(val,row,index){
		        	   var str = "";
				    	if(row.status == 1){		//属于正常状态
				    		str += "<a href='javascript:survey_changeStatus("+row.wcxsid+",2)'>[冻结]</a>";
				    	}else if(row.status == 2){		//属于冻结状态
				    		str += "<a href='javascript:survey_changeStatus("+row.wcxsid+",1)'>[解冻]</a>";
				    	}
				    	return str;
		           }}
		       ]],
		       toolbar:[{
		    	   text:"删除",
					iconCls: 'icon-remove',
					handler: function(){
						var rows = surveyObj.datagrid("getChecked");    //返回所有已被选中行的复选框
						
						if(rows.length <= 0){
							$.messager.show({title:'温馨提示' , msg:'请选择您要删除的问卷类型信息 . . . ' , timeout:2000 , showType:'slide'});
						}else{
							$.messager.confirm('删除确认','数据一旦删除将不能恢复，您确定要删除吗 . . . ',function(r){
								var i=0;
								if(r){
									var wcxsids = "";
									
									for(i=0,len=rows.length;i<len;i++){
										wcxsids = wcxsids+rows[i].wcxsid+",";   //每个数据后面加上“，”，后台通过这个逗号来区分有几条数据
									}
									wcxsids = wcxsids.substring(0, wcxsids.length-1);   //去掉最后一个逗号
									//alert(wcxsids);
									$.post("../../delSurvey",{op:"deleteSurvey",wcxsids:wcxsids},function(data){
										data = parseInt( $.trim(data) );
										if(data>0){
											$.messager.show({title:'成功提示' , msg:'问卷信息删除成功 . . . ' , timeout:2000 , showType:'slide'});
											surveyObj.datagrid("reload");   //重载记录，跟load方法一样
										}else{
											surveyObj.datagrid("rejectChanges");   //说明删除失败，数据回滚
											$.messager.alert('失败提示' , '问卷删除失败  . . . ' , 'error');
										}
									},"text");
								}
							});
						}
					}
		       },'-',{
		       	text:"修改",
		       	iconCls:'icon-monitor-edit',
		       	handler:function(){
		       		alert("修改");
		       		surveyOp = "updateSurvey";
		       		surveyFlag = "修改";  
		       		
		       		if(surveyEditRow != undefined){   //有正在被编辑的行
		       			surveyObj.datagrid("endEdit",surveyEditRow);   //结束编辑
		       			surveyObj.datagrid("rejectChanges");   //回滚
		       			surveyEditRow = undefined;
		       		}
		       		
		       		var row = surveyObj.datagrid("getChecked")[0];
		       		if(row == undefined){
		       			$.messager.show( {title:'温馨提示' , msg:'请选择您要修改的问卷类型信息 . . . ' , timeout:2000 , showType:'slide'} );
		       		}else{
		       			var index = surveyObj.datagrid("getRowIndex",row);
		       			surveyObj.datagrid("beginEdit",index);   //在相应的行中开始编辑
		       			surveyEditRow = index;
		       		}
		       	}
		       },'-',{
		       	text:"保存",
		   		iconCls: 'icon-monitor-go',
		   		handler: function(){
		   			alert("保存");
		   			if(surveyEditRow != undefined){
		   				surveyObj.datagrid("endEdit",surveyEditRow);   //那一行结束编辑
		   				//获取用户编辑的第一行
		   				var rows = surveyObj.datagrid("getChanges")[0];
		   				if(rows!=undefined){
		   					rows.op = surveyOp;
		   					
		   					$.post("../../"+surveyOp,rows,function(data){
		   						data = parseInt( $.trim(data) );
		   						if(data>0){
		   							$.messager.show( {title:"成功提示" , msg:surveyFlag+"问卷信息成功" , timeout:2000 , showType:'slide'} );
		   							surveyObj.datagrid("reload");   //重载记录，跟load方法一样
		   						}else{
		   							$.messager.alert("失败提示" , surveyFlag+"问卷信息失败 . . . " , "error");
		   						}
		   					},"text");
		   				}
		   			} 
		   		}
		       },'-',{
		       	text:"撤销",
		   		iconCls: 'icon-undo',
		   		handler: function(){
		   			surveyFlag = "撤销";
		   			
		   			surveyObj.datagrid("endEdit",surveyEditRow);   //结束编辑
		   			surveyObj.datagrid("rejectChanges")   //回滚
		   		}
		   }]
	});
	
	function survey_changeStatus(wcxsid,status){
		$.post("../../updateSurStatus",{wcxsid:wcxsid,status:status},function(data){
			data = parseInt( $.trim(data) );
			if(data>0){
				$.messager.show({title:'成功提示',msg:'问卷信息操作成功',timeout:2000,showTupe:'slide'});
				$("#Survey_data").datagrid("reload");    //使页面重新加载
			}else{
				$.messager.alert('失败提示','问卷信息操作失败，请重新修改 . . .','error');
			}
		},"text");
	}
</script>

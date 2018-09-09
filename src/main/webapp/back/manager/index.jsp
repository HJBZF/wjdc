<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>问查星后台管理</title>
<link rel="stylesheet" type="text/css" href="../css/easyui.css">
<link rel="stylesheet" type="text/css" href="../css/icon.css">
<link rel="stylesheet" type="text/css" href="../css/wu.css">
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/ajaxfileupload.js"></script>
<script type="text/javascript" src="../js/showpic.js"></script>
<style type="text/css">
#showPhotoDiv{
	background: #ccc;
	border: 1px solid #666;
	width: 200px;
	height: 230px;
	position: absolute;
	z-index: 999;
	display: none;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%,-50%);
	-moz-transform: translate(-50%,-50%);
	transform: translate(-50%,-50%);
}

#showPhotoInfo{
	width: 100px;
	height: 100px;
	margin-left: 40px;
	margin-top: 10px;
}

.showphoto_title{
	width: 100%;
	line-height: 30px;
	height: 30px;
	background: #fff;
	padding-left: 5px;
}

.showphoto_title>img{
	position: absolute;
	top: 5px;
	right: 5px;
}

#showPhotoDiv>form{
	padding-left: 20px;
}

/* .userP {
    border-radius: 50%;
    
    height: 25px;
    width: 25px;
} */

</style>

</head>

<body class="easyui-layout">  
	<div id="showPhotoDiv">
		<div class="showphoto_title">
			修改图像
			
			<img src="../images/btn_close_down.png" onclick="closePhotoDiv()"/>
		</div>
		<div id="showPhotoInfo">
		
		</div>
		<form>
			<input type="file" name="wcxmpics" id="wcxmpics" onchange="setImagePreviews(this,'showPhotoInfo')"/>
			<input type="button" value="修改" onclick="updateManagerPhoto()"/>
		</form>
	</div>
	
    <div class="wu-header" data-options="region:'north',border:false,split:true">
    	<div class="wu-header-left">
        	<h1 style="margin-left:600px;color:orange;">问查星后台管理系统</h1>
        </div>
        <div class="wu-header-right">
        	<!-- <p><strong class="easyui-tooltip" title="2条未读消息">jjf</strong>，欢迎您！</p> -->
        	
        	<a>
        		<a href="javascript:showPhotoDiv()" id="showManagerPhoto">
	        	<c:if test="${not empty currentLoginManager.wcxmpic}">
	        		<img src="${currentLoginManager.wcxmpic}" id="userManagerPhoto" class="userP" style="width: 25px; height: 25px;" />
	        	</c:if>
	        	<c:if test="${empty currentLoginManager.wcxmpic}">
	        		<img src="../images/user.png" id="userManagerPhoto" class="userP" />
	        	</c:if>
	        	
	        	</a>
	        	<c:if test="${not empty currentLoginManager }">
					<a href="javascript:void(0)">&nbsp;<strong>${currentLoginManager.wcxmname }</strong>&nbsp;&nbsp;&nbsp;,欢迎您！</a>
				</c:if>
			</a>
			
            <p><a href="top.html">网站首页</a>|<a href="top.html">支持论坛</a>|<a href="top.html">帮助中心</a>|<a href="../backlogin.html">安全退出</a></p>
        </div>
        
     
	
    </div>
    
    <div class="wu-sidebar" data-options="region:'west',split:true,border:true,title:'导航菜单'"> 
    	<div class="easyui-accordion" data-options="border:false,fit:true"> 
        	<div title="用户信息管理" data-options="iconCls:'icon-users',selected:true" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree">    
    			<!-- 通过这个class属性来点击下面a标签生成相应的网页 -->
                    <li iconCls="icon-user-gray-cool"><a href="javascript:void(0)" data-icon="icon-user-gray-cool" data-link="interface/Manager.html" iframe="0">管理员管理</a></li>
                    <li iconCls="icon-user-green"><a href="javascript:void(0)" data-icon="icon-user-green" data-link="interface/UserInfo.html" iframe="0">用户管理</a></li>
                    <li iconCls="icon-user-add"><a href="javascript:void(0)" data-icon="icon-user-add" data-link="interface/addstu.html" iframe="0">添加管理员信息</a></li>                    
                </ul>
            </div>
            
            <div title="问卷管理" data-options="iconCls:'icon-advancedsettings2'" style="padding:10px;">  
        		<ul class="easyui-tree wu-side-tree">
                    <li iconCls="icon-ipod-nano"><a href="javascript:void(0)" data-icon="icon-ipod-nano" data-link="Survey.jsp" iframe="0">问卷类型管理</a></li>
                    <li iconCls="icon-house-key"><a href="javascript:void(0)" data-icon="icon-house-key" data-link="Template.html" iframe="0">问卷管理</a></li>
                </ul>
    		</div>  
    		
            <div title="题型管理" data-options="iconCls:'icon-application-home'" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree">
                    <li iconCls="icon-medal-bronze-3"><a href="javascript:void(0)" data-icon="icon-medal-bronze-3" data-link="#" iframe="0">题目类型管理</a></li>
                  
                </ul>
            </div>
        </div>
    </div>	
    
    <!-- 展现要打开的链接网页区域 -->
    <div class="wu-main" data-options="region:'center'">
    	<div id="wu-tabs" class="easyui-tabs" data-options="border:false,fit:true">
    		<div title="首页" data-options="href:'top.html',closable:false,iconCls:'icon-tip',cls:'pd3'">
            </div>
    	</div>
    </div>
    
    <div class="wu-footer" data-options="region:'south',border:true,split:true">
    	&copy; 2018 Wu All Rights Reserved
    </div>
    
    <!-- 下面的script中实现的是点击页面左侧边框中得小标签（eg：管理员管理）打开manager文件夹下面的管理员管理的界面插入到 id="wu-tabs" 的div中 -->
    <script type="text/javascript">
    	$(function(){
			$('.wu-side-tree a').bind("click",function(){
    			var title = $(this).text();
    			var url = $(this).attr('data-link');	//获取到所点击的 a标签的data-link属性，也就是要跳转的页面地址
    			var iconCls = $(this).attr('data-icon');	//获取到所点击的 a标签的data-icon属性，可以直接显示在网页链接上
    			var iframe = $(this).attr('iframe')==1?true:false;		//判断是否存在这个界面，存在则为true，再次点击就不要打开新的网页
    			addTab(title,url,iconCls,iframe);		//调用addTab函数，在下面，实现添加网页功能
    		});
    	});
    	
    	/**
    	*Name 选项卡初始化
    	*/
    	$('#wu-tabs').tabs({
    		tools:[{
    			iconCls:'icon-reload',
    			border:false,
    			handler:function(){
    				$("#wu-datagrid").datagrid('reload');
    			}
    		}]
    	});
    	
    	/**
		* Name 添加菜单选项
		* Param title 名称
		* Param href 链接
		* Param iconCls 图标样式
		* Param iframe 链接跳转方式（true为iframe，false为href）
		*/	
		function addTab(title, href, iconCls, iframe){
			var tabPanel = $('#wu-tabs');
			if(!tabPanel.tabs('exists',title)){
				var content = '<iframe scrolling="auto" frameborder="0"  src="'+ href +'" style="width:100%;height:100%;"></iframe>';
				if(iframe){
					tabPanel.tabs('add',{
						title:title,
						content:content,
						iconCls:iconCls,
						fit:true,
						cls:'pd3',
						closable:true
					});
				}
				else{
					tabPanel.tabs('add',{
						title:title,
						href:href,
						iconCls:iconCls,
						fit:true,
						cls:'pd3',
						closable:true
					});
				}
			}
			else
			{
				tabPanel.tabs('select',title);
			}
		}
		
    	/**
    	* Name 移除菜单选项
    	*/
    	function removeTab(){
    		var tabPanel = $('#wu-tabs');
    		var tab = tabPanel.tabs('getSelected');
    		if(tab){
    			var index = tabPanel.tabs('getTabIndex',tab);
    			tabPanel.tabs('close',index);
    		}
    	}
    	
    	function showPhotoDiv(){
    		$("#showPhotoDiv").css("display","block");
    	}

    	function closePhotoDiv(){
    		$("#showPhotoDiv").css("display","none");
    	}
    	
    	function updateManagerPhoto(){
    		$.ajaxFileUpload({
    			url:'../../updatePhoto',
    			secureuri:false,
    			fileElementId:"wcxmpics",
    			dataType:"text",
    			success:function(data,status){
    				data=$.trim(data);
    				if(data!=null && data!=""){
    					alert("修改图片成功...");
    					$("#showManagerPhoto>img").attr("src",data);
    					$("#showPhotoDiv").css("display","none");
    				}else{
    					alert("图片修改失败...");
    				}
    			},
    			error:function(data,status,e){
    				alert("修改图片失败...");
    			}
    		});
    	}

    </script>

</body>
</html>
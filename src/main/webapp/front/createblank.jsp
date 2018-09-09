<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

pageContext.setAttribute("APP_PATH",request.getContextPath());

if(session.getAttribute("currentLoginUser") == null || session.getAttribute("currentLoginUser")=="" ){
	
}
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>创建调查问卷_问查星</title>
<link type="text/css" rel="stylesheet" href="css/login.css"/>
<link rel="shortcut icon" href="${APP_PATH}/img/wlogo.png" type="image/x-icon">

</head>

<body>
	<div id="BS">
    	<%@include file="jsp/head.jsp" %>
    	
        <div class="BS-box" style="text-align:left;">
            <div id="ctl01_ContentPlaceHolder1_divCss">
            </div>
            <form name="aspnetForm" method="post" action="addSurvey.jsp" id="aspnetForm">
            	<div>
					<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="" />
				</div>
                <div>
                	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="E6EA5056" />
				</div>
                <div id="ctl01_ContentPlaceHolder1_divCreate" class="nav-header">
                
                	<div class="container">
                    	<div class="nav-wrapper clearfix">
                        	<h1 id="ctl01_ContentPlaceHolder1_spanTitle" class="hd-title pull-left">创建调查问卷</h1>
                        </div>
                    </div>
                    
                </div>
                <div class="main-wrapper">
                	<div class="create-box">
                    	<div class="create__fill">
                        	<div class="fill__name-box clearfix">
                            	<label for="" class="pull-left" id="spanName">调查名称: </label>
                                <input name="ctl01$ContentPlaceHolder1$txtQName" type="text" id="ctl01_ContentPlaceHolder1_txtQName" class="pull-left" style="line-height:50px;" />
                            </div>
                            <div class="btn-block" style="position:relative;">
                            	<table align="center">
                                	<tr>
                                    	<td valign="top">
                                        	<div id="spanCode" style="float: left; display: inline; margin-top: 60px"></div>
                                            &nbsp;   &nbsp;   &nbsp;
                                        </td>
                                        <td valign="middle" style="padding-bottom: 30px;">
                                        	<input  name="ctl01$ContentPlaceHolder1$lbtnNextStep" value="立即创建"  id="ctl01_ContentPlaceHolder1_lbtnNextStep" class="btn btn-default create__btn-new" style="width:200px;" />
                                            <div style="float: right; display: inline; margin-top: 58px; margin-left: 30px;">
                                            	<span id="ctl01_ContentPlaceHolder1_lblMsg" style="color:Red;"></span>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div style="font-size: 18px;color: #cccccc;border-top: 1px solid #cccccc;">
                            	<em class="word" style="color:#888888;position: relative;top: -11px; font-style: normal;padding: 0 6px; background-color: #fff;">或选择以下方式创建</em>
                            </div>
                        </div>
                        <div class="create__figure clearfix">
                        	<div class="figure pull-left">
                            	<div class="pic-box icon template-icon"></div>
                                <div class="details-wrapper">
                                	<div class="details-title">选择模板</div>
                            		<div class="details-info">使用问卷星提供的专业模板</div>
                            		<a href="addSurvey.jsp" class="btn btn-default btn-nobg main__btn--new">创建</a>
                                </div>
                            </div>
                            <div class="figure pull-left" >
                            	<div class="pic-box icon text-icon"></div>
                                <div class="details-wrapper">
                            		<div class="details-title">导入文本</div>
                            		<div class="details-info">自由编辑文本自动生成问卷</div>
                            		<a href="" class="btn btn-default btn-nobg main__btn--new">创建</a>
                        		</div>
                            </div>
                            <div class="figure pull-left">
                            	<div class="pic-box icon service-icon"></div>
                                <div class="details-wrapper">
                                	<div class="details-title">录入服务</div>
                            		<div class="details-info">人工协助录入问卷更便捷</div>
                                    <a href="" class="btn btn-default btn-nobg main__btn--new">创建</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div style="display:none;">
    
    </div>
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
    
    var createQuestion = $("#ctl01_ContentPlaceHolder1_lbtnNextStep");
    
     $(createQuestion).click(function(){
    	 if($.trim( $("#ctl01_ContentPlaceHolder1_txtQName").val() )  == ""){
     		alert("请输入问卷名称");
     		return;
     	}else if($("#ctl01_lblUserName").text()==''  ){
     		alert('请先登录');
     		location.href="login.html";
     	}else{
		    var questionName = $.trim( $("#ctl01_ContentPlaceHolder1_txtQName").val() );
     		
     		$.post("addSurvey",{wcxsname:questionName},function(data){
 	    		if(data == 1 || data=="1"){
 		    		location.href="addSurvey.jsp";
 	    		}	
     		},"text");
     	}
    }) 
    
    </script>
</body>
</html>

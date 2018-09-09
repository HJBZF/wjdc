<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>我的问卷 - 问卷星（免费版）</title>
<link type="text/css" rel="stylesheet" href="css/myquestionnaires.css" />
<link rel="shortcut icon" href="../image/wlogo.png" type="image/x-icon">

</head>

<body>
	<div id="BS">
		<%@include file="jsp/head.jsp" %>

		<div class="BS-box" style="text-align:left;">
        	<form id="aspnetForm" action="myquestionnaires.aspx?randomt=1520563315" method="post" name="aspnetForm">
            	<div></div>
                <div></div>
                <div class="main-wrapper">
                <div id="ctl01_ContentPlaceHolder1_divEmpty" class="my-container">
                	<div class="survey-wrapper notsurvey clearfix">
                    	<div id="survey-added" class="survey-added">
                        	<div class="survey-create clearfix">
                            	<div class="create-guide">
                                    <img alt="" src="../image/picture1.png">
                                    <h2>您目前还没有问卷，马上创建一份问卷吧！</h2>
                                    <a class="btn btn-default btn-lg create-btn" title="创建新问卷" href="survey.html">
                                    	<i class="icon create-iconnew"></i>
                                        创建问卷
                                    </a>
                                    <a id="ctl01_ContentPlaceHolder1_hrefTiyan" class="btn btn-default btn-lg btn-nobg" href="/newwjx/manage/tiyan.aspx">体验问卷功能</a>
                                </div>
                                <div id="ctl01_ContentPlaceHolder1_divTuiGuang" class="extend-box clearfix">
                                	<div class="extend-items pull-left">
                                    	<h2>人工录入问卷</h2>
                                        <p>亲，如果准备好了文档，不想花时间创建问卷，您可以委托小星帮您快速录入，省时省心！</p>
                                        <a class="btn btn-default btn-sm btn-nobg" href="/newwjx/mysojump/designservices.aspx?dp=1">我要协助</a>
                                    </div>
                                    <div class="extend-items pull-right">
                                    	<h2>样本服务</h2>
                                        <p>您是否苦恼缺乏理想的填写人群？小星拥有260万样本库活跃成员，高效、精准匹配您的需求！</p>
                                        <a class="btn btn-default btn-sm btn-nobg" href="/sample/service.aspx?npub=1">我想了解</a>
                                    </div>
                                </div>
                                <div id="ctl01_ContentPlaceHolder1_divEmptyKefu" class="article-mini noquestion-mini">
                                	<ul>
                                    	<li>
                                        	<a href="javascript:void(0)">
                                            	<div class="icon-box">
                                                	<img alt="客服中心" src="../image/service1.png">
                                                    <br>
                                                    客服中心
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                        	<a href="javascript:void(0)">
                                            	<div class="icon-box">
                                                	<img alt="微信绑定" src="../image/WeChat1.png">
                                                    <br>
                                                    微信绑定
                                                 </div>
                                            </a>
                                        </li>
                                        <li alt="帮助中心">
                                        	<a href="/help/help.aspx">
                                            	<div class="icon-box">
                                                	<img alt="帮助中心" src="../image/question1.png">
                                                    <br>
                                                    帮助中心
                                                </div>   
                                            </a>
                                        </li>       
                                        <li>
                                        	<a target="_blank" href="/jq/3685992.aspx">    
                                            	<div class="icon-box">
                                                	<img alt="意见反馈" src="../image/advice1.png">
													<br>    
                                                    意见反馈
                                                </div>
                                            </a>
                                        </li>
                                    </ul>                                  
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form> 
    </div>
</div>
<div id="ctl01_footlink" class="my-footer MP-footer">
	<div id="ctl01_divWjxFooter">
    	<a href="/">
        	<i class="logo-box">
            	<img alt="问卷星_领先的网络调查平台，问卷调查，报名表、考试测验" src="../image/logo-small.png">
            </i>
        </a>
        <i class="line"></i>
		<i class="log-dec">不止问卷调查/在线考试</i>
    </div>
</div>
</body>
</html>

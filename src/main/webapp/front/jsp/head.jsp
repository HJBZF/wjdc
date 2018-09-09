<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>问查星</title>
<style>
body {
    color: #333333;
    font-family: "microsoft yahei";
    font-size: 12px;
    margin: 0;
    min-width: 990px;
}
a {
    background: transparent none repeat scroll 0 0;
    color: #1ea0fa;
    text-decoration: none;
}
dl, dt, dd, ul, li, ol, p, form, img {
    border: medium none;
    list-style: outside none none;
    margin: 0;
    padding: 0;
}
.pull-right {
    float: right !important;
}
.pull-left {
    float: left !important;
}
/*下图标*/
.caret {
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 5px dashed;
    display: inline-block;
    height: 0;
    margin-left: 6px;
    vertical-align: middle;
    width: 0;
}
/*隐藏下图标*/
.caret-inverted {
    border-bottom: 5px dashed;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    display: inline-block;
    height: 0;
    margin-left: 6px;
    vertical-align: middle;
    width: 0;
}
/*返回*/
.icon {
    display: inline-block;
    margin: 0 6px 0 0;
    vertical-align: middle;
}
/*用户信息，升级，客服中心*/
.spinner-list {
    position: relative;
}
/*鼠标移上去*/
.spinner-list:hover ul {
    display: block;
}
/*隐藏用户信息，升级，客服中心*/
.spinner-list ul {
    background-color: #fff;
    border-radius: 6px;
    box-shadow: 0 0 10px 2px rgba(48, 166, 245, 0.5);
    display: none;
    left: 0;
    margin-top: -7px;
    padding: 0;
    position: absolute;
    top: 100%;
    width: 100%;
    z-index: 3;
}
/*格式*/
.spinner-list ul li, .spinner-list ul li a {
    color: #808080;
    display: block;
    font-size: 14px;
    line-height: 28px;
    text-align: center;
}
.spinner-list ul .caret-inverted {
    color: #fff;
    left: 40px;
    line-height: 0;
    position: absolute;
    top: -5px;
}
/*变色*/
.spinner-list ul li:hover a {
    color: #1ea0fa;
}
.header {
    background-color: #0078c8;
    color: #fff;
    font-size: 16px;
    height: 54px;
    margin: 0 auto;
}
/*logo格式*/
.logo {
    height: 34px;
    line-height: 34px;
    margin-top: 10px;
    vertical-align: middle;
}
/*logo图片 */
.logo .returnicon {
    background: rgba(0, 0, 0, 0) url(../image/return.png) no-repeat scroll center center;
    display: inline-block;
    height: 34px;
    margin-right: 15px;
    width: 34px;
}
/*鼠标移上去*/
.logo .hover {
    color: #fff;
}
.logo .hover:hover {
    color: #fff799;
}
.logo .hover:hover .returnicon {
    background: rgba(0, 0, 0, 0) url(../image/return-hover.png) no-repeat scroll center center;
}
/*格式*/
.user-wrapper dl {
    cursor: pointer;
    padding: 0 10px;
}
.user-wrapper dl:last-child {
    padding-right: 0;
}
/*|线*/
.my-question .box {
    float: left;
    margin-right: 20px;
}
.my-question .line {
    background-color: #fff;
    float: left;
    height: 16px;
    margin-top: 20px;
    width: 1px;
}
.user-info dt, .user-info dd {
    display: inline-block;
    float: left;
    vertical-align: middle;
}
.user-wrapper dl dt.user-icon em {
    background: rgba(0, 0, 0, 0) url(../image/user.png) no-repeat scroll center center;
    display: inline-block;
    height: 24px;
    margin: 5px 0 0 5px;
    vertical-align: top;
    width: 24px;
}
/*退出*/
.user-wrapper dl dt.info-icon, .user-wrapper dl dt.out-icon {
    height: 20px;
    margin-right: 10px;
    margin-top: 17px;
    position: relative;
    width: 20px;
}
.user-wrapper dl dt.info-icon {
    background: rgba(0, 0, 0, 0) url(../image/news.png) no-repeat scroll center center;
}
.user-wrapper dl dt.out-icon {
    background: rgba(0, 0, 0, 0) url(../image/exit.png) no-repeat scroll center center;
}
.user-wrapper dl i.questions-icon {
    background: rgba(0, 0, 0, 0) url(../image/home24.png) no-repeat scroll center center;
    height: 20px;
    width: 20px;
}
.user-wrapper dl dt i.icon {
    display: inline-block;
    margin: -3px 10px 0 0;
    vertical-align: middle;
}
.my-container {
    margin: 0 auto;
    width: 964px;
}
.my-container {
    width: 1160px;
}
.user-name {
    color: #fff;
    display: inline-block;
    line-height: 54px;
}
dt.user-icon {
    background-color: #30a6f5;
    border-radius: 100px;
    height: 34px;
    margin-right: 12px;
    margin-top: 10px;
    width: 34px;
}
</style>

</head>

<body>
	<div id="BS">
    	<div class="header">
        	<div class="my-container clearfix">
            	<div id="ctl01_divreturn" class="logo pull-left">
                	<a href="javascript:history.go(-1)" class="hover" id="hrefPGoBack"><em class="icon returnicon"></em>返回</a>
                </div>
                <div class="user-wrapper pull-right" id="userbutton">
                	<dl class="my-question pull-left">
                    	<dt class="box user-info">
                        	<a class="user-name" href="" ><i class="icon questions-icon"><em></em></i><span id="ctl01_spanMyq">我的问卷</span></a>
                        </dt>
                        <dd class="line"></dd>
                    </dl>
                    <dl class="user-info pull-left">
                    	
                    	<dt class="icon user-icon"><em></em></dt>
                    	
                        <dd class="spinner-list">
                        	
	                        <c:if test="${not empty currentLoginUser }">
								<a href="javascript:void(0)" class="user-name">
	                        		<span id="ctl01_lblUserName" style="text-align:center">${currentLoginUser.wcxuname }</span>
	                        		<span class="caret"></span>
	                        	</a>
							</c:if>
                            
                            <ul style="width:100px">
                            	<span class="caret-inverted"></span>
                                <li><a href="${APP_PATH }/front/jsp/user.jsp">用户信息</a></li>
                                <li id="ctl01_hrefUpgrade"><a href="/register/upgradevip.aspx?upgradeReason=1">升级</a></li>
                                <li id="ctl01_liClient"><a href="/html/contactus.aspx">客服中心</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="user-info pull-left" >
                    	<a class="user-name" href="/newwjx/manage/myask.aspx">
                        	<dt id="ctl01_spanMessage" class="icon info-icon"></dt>
                            <dd class="spinner-list">
                        		<span>消息</span>
                   			</dd>
                        </a>
                    </dl>
                    <dl id="ctl01_hrefWjxout" class="user-info pull-left IE-8">
                        <a class="user-name" href="/loginout.aspx">
                        <dt class="icon out-icon"></dt>
                        <dd class="spinner-list">
                            <span id="loginout">退出</span>
                        </dd>
                        </a>
                    </dl>
                </div>
            </div>
        </div>
        
    </div>
    
</body>
<script type="text/javascript" src="${APP_PATH }/js/jQuery-3.3.0-min.js"></script>
<script type="text/javascript">
	console.log($)
	$("#loginout").click(function(){
		$.post("invaild",{},function(data){
			if(data ==1){
				location.href="../front/login.html";
			}
		})
	})
</script>
</html>

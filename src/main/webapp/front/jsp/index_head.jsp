<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="wcxhome_head" style="position: fixed;">
	<div class="inner clearfixed">
		<a href="javascript:void(0)" class="left fl"><img
			src="img/logonew.png" width="130" height="48"
			style="vertical-align: middle;"></a>
		<div class="fr wcxhome_nav right clearfixed">
			<ul class="wcxhome_menu fl">
				<li><a href="javascript:void(0)" class="first_survey"><span>首页</span><span
						class="line"></span></a></li>
				<li class="navitem"><a href="javascript:void(0)"> <span>应用展示
							<i class="transition"
							style="width: 10px; height: 10px; display: block;"></i>
					</span> <span class="line"></span>
				</a>
					<ul class="subnav">
						<li><a href="front/createblank.jsp"><img
								src="img/survey_orange.png" alt=""><span>问卷调查</span></a></li>
						<li><a href="javascript:void(0)"><img
								src="img/360_orange.png" alt=""><span>360度评估</span></a></li>
						<li><a href="javascript:void(0)"><img
								src="img/form_orange.png" alt=""><span>报名表单</span></a></li>
						<li><a href="javascript:void(0)"><img
								src="img/evaluation_orange.png" alt=""><span>在线测评</span></a></li>
						<li><a href="javascript:void(0)"><img
								src="img/vote_orange.png" alt=""><span>在线投票</span></a></li>
					</ul></li>
				<li><a href="javascript:void(0)"><span>企业版服务</span><span
						class="line"></span></a></li>
				<li><a href="javascript:void(0)"><span>样本服务</span><span
						class="line"></span></a></li>
				<li><a href="javascript:void(0)"><span>问卷调查模板</span><span
						class="line"></span></a></li>
			</ul>
			<ul class="wcxhome_btn fr">
				
				<c:if test="${ empty currentLoginUser }">
					<li id="Register"><a href="front/login.html"
							target="_blank" id="login" class="transition">登录</a></li>
					<li><a href="front/register.jsp" target="_blank">注册</a></li>
				</c:if>
				
				<c:if test="${not empty currentLoginUser}">
					<li id="loginBack"><a href="front/myquestionnaires.jsp" target="_blank" id="loginBack" class="loginBack" style="width:125px;line-height:5px">进入管理后台</a></li>
				</c:if>

			</ul>
		</div>
	</div>
</div>
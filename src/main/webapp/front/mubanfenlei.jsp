<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选择创建问卷类型_问查星</title>
<link type="text/css" rel="stylesheet" href="../css/mubanfenlei.css" />
<link rel="shortcut icon" href="../img/wlogo.png" type="image/x-icon">

</head>
<body>
	<div id="BS">
		<%@include file="jsp/head.jsp"%>

		<div class="BS-box" style="text-align: left;">
			<form id="aspnetForm" action="choosetype.aspx?t=1515151626198"
				method="post" name="aspnetForm">
				<div></div>
				<div></div>
				<div class="nav-header">
					<div class="container">
						<div class="nav-wrapper clearfix">
							<h1 class="hd-title pull-left">选择创建问卷类型</h1>
						</div>
					</div>
				</div>
				<div class="section main-wrapper">
					<div id="divModule" class="module-box">
						<div class="figure clicked">
							<div class="pic-box icon survey-icon pull-left"></div>
							<div class="details-wrapper pull-left">
								<div class="details-title">
									<span class="pull-left">问卷调查</span> 
										<a class="btn btn-blue-frame details__more pull-left" onclick="PDF_launch('/newwjx/step/investigation.aspx',800,490);">了解更多</a>
								</div>
								<div class="details-info">丰富题型，强大逻辑</div>
								<div class="details-info">问卷密码，红包抽奖</div>
							</div>
							<div class="clear dotted-line--solid"></div>
							<a class="btn btn-blue-frame main__btn--new" href="">创建</a>
							<input type="checkbox" style="position:absolute;right:20px;bottom:25px;width:18px;height:18px;display:none;">
						</div>
						<div class="figure">
							<i class="examfigurestar icon"></i>
							<div class="pic-box icon exam-icon pull-left"></div>
							<div class="details-wrapper pull-left">
								<div class="details-title">
									<span class="pull-left">在线考试</span>
										<a class="btn btn-blue-frame details__more pull-left" onclick="PDF_launch('/newwjx/step/vote.aspx',800,490);" href="javascript:void(0)">了解更多</a>
								</div>
								<div class="details-info">题库抽题，限时作答</div>
								<div class="details-info">成绩查询，自动阅卷</div>
							</div>
							<div class="clear dotted-line--solid"></div>
							<a class="btn btn-blue-frame main__btn--new" href="">创建</a>
							<input type="checkbox" style="position:absolute;right:20px;bottom:25px;width:18px;height:18px;display:none;">
						</div>
						<div class="figure">
							<div class="pic-box icon vote-icon pull-left"></div>
							<div class="details-wrapper pull-left">
								<div class="details-title">
									<span class="pull-left">在线投票</span>
										<a class="btn btn-blue-frame details__more pull-left" onclick="PDF_launch('/newwjx/step/vote.aspx',800,490);" href="javascript:void(0)">了解更多</a>
								</div>
								<div class="details-info">图文视频，选项随机</div>
								<div class="details-info">实时排行，微信投票</div>
							</div>
							<div class=" clear dotted-line--solid"></div>
							<a class="btn btn-blue-frame main__btn--new" href="">创建</a>
							<input type="checkbox" style="position:absolute;right:20px;bottom:25px;width:18px;height:18px;display:none;">
						</div>
						<div class="figure">
							<div class="pic-box icon search-icon pull-left"></div>
							<div class="details-wrapper pull-left">
								<div class="details-title">
									<span class="pull-left">报名表单</span>
										<a class="btn btn-blue-frame details__more pull-left" onclick="PDF_launch('/newwjx/step/register.aspx',800,490);" href="javascript:void(0)">了解更多</a>
								</div>
								<div class="details-info">信息登记，微信签到</div>
								<div class="details-info">活动报名，意见反馈</div>
							</div>
							<div class=" clear dotted-line--solid"></div>
							<a class="btn btn-blue-frame main__btn--new" href="">创建</a>
							<input type="checkbox" style="position:absolute;right:20px;bottom:25px;width:18px;height:18px;display:none;">
						</div>
						<div class="figure">
							<div class="pic-box icon employee-icon pull-left"></div>
							<div class="details-wrapper pull-left">
								<div class="details-title">
									<span class="pull-left">360度评估</span>
										<a class="btn btn-blue-frame details__more pull-left" onclick="PDF_launch('/newwjx/step/evaluation.aspx',800,490);" href="javascript:void(0)">了解更多</a>
								</div>
								<div class="details-info">批量评估，权重维度</div>
								<div class="details-info">便捷发放，个人报告</div>
							</div>
							<div class=" clear dotted-line--solid"></div>
							<a class="btn btn-blue-frame main__btn--new" href="">创建</a>
							<input type="checkbox" style="position:absolute;right:20px;bottom:25px;width:18px;height:18px;display:none;">
						</div>
						<div class="figure">
							<div class="pic-box icon online-icon pull-left"></div>
							<div class="details-wrapper pull-left">
								<div class="details-title">
									<span class="pull-left">在线测评</span>
										<a class="btn btn-blue-frame details__more pull-left" onclick="PDF_launch('/newwjx/step/onlineevaluation.aspx',800,490);" href="javascript:void(0)">了解更多</a>
								</div>
								<div class="details-info">支持多级测评维度</div>
								<div class="details-info">自动呈现测评报告</div>
							</div>
							<div class="clear dotted-line--solid"></div>
							<a class="btn btn-blue-frame main__btn--new" href="">创建</a>
							<input type="checkbox" style="position:absolute;right:20px;bottom:25px;width:18px;height:18px;display:none;">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
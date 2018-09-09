<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>问卷调查_问查星</title>
<link rel="icon" href="image/top_star.png">
</head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/wjxmaster.css" />

<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<!-- <link id="ctl00_hrefMobile" rel="alternate"
	media="only screen and(max-width: 640px)"
	href="https://www.wjx.cn/mobile/app/survey.aspx" /> -->
<meta name="applicable-device" content="pc" />
<body>
	 <jsp:include page="jsp/index_head.jsp"></jsp:include>
	<div class="wjxhome__wrapper" id="BS">

		<div id="divoutbox" style="">

			<link rel="stylesheet" type="text/css" href="css/application1.css" />
			<div class="wjxapplication__banner wjxsurvey__banner">
				<div class="wjxapplication__banner--word wjxsurvey__banner--word">
					<h1 class="common">问卷调查</h1>
					<div class="h2 common">强大易用，从“星”开始</div>
				</div>
			</div>
			<div class="wjxapplication__main">
				<div class="wjxsurvey__icon">
					<ul>
						<li><img src="image/government.png"> <span>政府机构</span>
						</li>
						<li><img src="image/school.png"> <span>学校教育</span></li>
						<li><img class="common" src="image/online.png"> <span>电商/网游</span>
						</li>
						<li><img class="common" src="image/sales.png"> <span>市场/销售</span>
						</li>
						<li><img class="HR" src="image/HR.png"> <span>企业HR</span>
						</li>

					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="wjxapplication__title wjxsurvey__title">
					<div class="h2">应用功能介绍</div>
					<p>/ FUNCTION INTRODUCTION</p>
				</div>
				<div class="wjxsurvey__type background_white">
					<div class="wjxsurvey_box wjxhome__middle">
						<img class="pull-left" src="image/type.png">
						<div class="wjxapplication__copy pull-right distance_type">
							<div class="h2">32种题型，应有尽有</div>
							<div class="h3">
								单选、多选、矩阵、排序、量表、比重、表格、文件<br>上传等多种题型
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="wjxsurvey__logic background_gray">
					<div class="wjxsurvey_box wjxhome__middle">
						<div class="wjxapplication__copy pull-left distance_logic">
							<div class="h2">问卷逻辑，轻松实现</div>
							<div class="h3">三种问卷逻辑，实现题目选项之间复杂关系</div>
						</div>
						<img class="pull-right" src="image/logic.png">
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="wjxsurvey__collect background_white">
					<div class="wjxsurvey_box wjxhome__middle">
						<img class="pull-left" src="image/collect.png">
						<div class="wjxapplication__copy pull-right distance_collect">
							<div class="h2">多渠道推送问卷收集答卷</div>
							<div class="h3">
								跟踪被邀请人是否打开了问卷，是否填写了问卷，给<br>您带来更便捷的收集体验
							</div>
							<ul>
								<li><span></span>
									<div class="h4">QQ好友、QQ群、空间</div></li>
								<li><span></span>
									<div class="h4">微信好友、微信群、朋友圈</div></li>
								<li><span></span>
									<div class="h4">发送问卷二维码，好友扫一扫填问卷</div></li>
								<li><span></span>
									<div class="h4">群发短信邀请</div></li>
								<li><span></span>
									<div class="h4">群发邮件邀请</div></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="wjxsurvey__password background_gray">
					<div class="wjxsurvey_box wjxhome__middle">
						<div class="wjxapplication__copy pull-left distance_password">
							<div class="h2">问卷密码，安全无忧</div>
							<ul>
								<li><span></span>
									<div class="h4">单个密码：设置唯一密码，轻松保护问卷</div></li>
								<li><span></span>
									<div class="h4">密码列表：使用工号、手机号等作为密码，为每个填写者分配唯一密码</div></li>
								<li><span></span>
									<div class="h4">短信验证：输入手机号码，获取短信验证码，两步完成验证！</div></li>
							</ul>
						</div>
						<img class="pull-right" src="image/password.png">
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="wjxsurvey__lottery background_white">
					<div class="wjxsurvey_box wjxhome__middle">
						<img class="pull-left" src="image/lottery.png">
						<div class="wjxapplication__copy pull-right distance_lottery">
							<div class="h2">设置抽奖，让问卷变得有趣</div>
							<ul>
								<li><span></span>
									<div class="h4">系统默认抽奖</div></li>
								<li><span></span>
									<div class="h4">
										自定义奖品：<br>实物类（手机、平板、everything）<br>虚拟类（积分、优惠券、红包拿到手软）
									</div></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="wjxsurvey__analysis background_gray">
					<div class="wjxsurvey_box wjxhome__middle">
						<div class="wjxapplication__copy pull-left distance_lottery">
							<div class="h2">问卷分析&下载</div>
							<ul>
								<li><span></span>
									<div class="h4">频数分析：直观呈现数据结果，简单统计选项的频数</div></li>
								<li><span></span>
									<div class="h4">分类统计：可以按性别、年龄、部门进行分类统计</div></li>
								<li><span></span>
									<div class="h4">交叉分析：设定一个或多个自变量和因变量，进行交叉分析</div></li>
								<li><span></span>
									<div class="h4">下载word：统计分析的表格、图形等都可以下载到Word文档</div></li>
							</ul>
						</div>
						<img class="pull-right" src="image/analysis.png">
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="wjxsurvey__download background_white">
					<div class="wjxsurvey_box wjxhome__middle">
						<img class="pull-left" src="image/download.png">
						<div class="wjxapplication__copy pull-right distance_logic">
							<div class="h2">Excel / SPSS数据下载</div>
							<div class="h3">下载.sav的SPSS数据文件，用于更加高级的数据分析</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="wjxapplication__example background_gray">
				<div class="wjxapplication__title wjxapplication__title_example">
					<div class="h2">示例问卷</div>
					<p>/ SAMPLE QUESTIONNAIRES</p>
				</div>
				<div class="sample-contents">
					<div class="sam-contents-left left-pic-wjdc">
						<div class="sam-con-lef-text">
							家居建材产品网上<br>购物的市场调查
						</div>
					</div>
					<div class="sam-contents-right-btn">
						<a class="common-button" href="https://www.wjx.cn/jq/3684880.aspx"
							target="_blank">体验调查</a> <a class="view__report underline"
							href="https://www.wjx.cn/report/3684880.aspx" target="_blank">查看报告</a>
						<div class="explain-PC">PC端</div>
					</div>
					<div class="sam-contents-right-or">
						<img src="image/or.png">
					</div>
					<div class="sam-contents-right-ewm">
						<div class="ewm" style="margin-top: 30px;">
							<img src="image/qrcode.ashx" width="90" style="max-width: 90px;">
						</div>
						<div class="explain-mobile">移动端</div>
					</div>
				</div>
				<div class="sample-more">
					<a href="javascript:void(0)">更多问卷调查模板 ></a>
				</div>
				<div class="sample-two-btn">
					<a class="sam-two-btn-left" href="createblank.jsp">立即发起调查</a> <a
						href="javascript:void(0)" target="_blank"
						class="sam-two-btn-right">录入问卷服务</a>
				</div>
			</div>
			<div class="wjxhome__rocket-box text-center clearfix">
				<div class="wjxhome__rocket"></div>
				<div class="wjxhome__rocket-top pull-left">Top</div>
			</div>


		</div>
		<div class="wjxhome__foot" id="Wfooter" style="">
			<div class="part_one wjxhome__middle">
				<ul class="contactinfo pull-left">
					<li class="logo_foot"><a href="javascript:void(0)"
						class="footlogo"><img src="image/logo.png" width="121"
							height="75" alt="问卷星_不止问卷调查/在线考试" /></a></li>
					<li><img src="image/phone.png"> <span>400-993-5858</span>
					</li>
					<li><img src="image/email.png"> <span>cs#wjx.cn</span></li>
				</ul>
				<ul class="content pull-left">
					<li>
						<div class="h3">产品</div> <a href="javascript:void(0)">企业版</a> <a
						href="javascript:void(0)" target="_blank">云考试</a> <a
						href="javascript:void(0)">定制版</a> <a href="javascript:void(0)">样本服务</a>
					</li>
					<li style="margin-left: 90px;">
						<div class="h3">客户</div> <a href="javascript:void(0)">客户展示</a> <a
						href="javascript:void(0)">最新问卷</a>
					</li>
					<li>
						<div class="h3">支持</div> <a href="javascript:void(0)">客服中心</a> <a
						href="javascript:void(0)">帮助中心</a> <a href="javascript:void(0)">开放平台</a>
					</li>
					<li>
						<div class="h3">团队</div> <a href="javascript:void(0)">关于我们</a> <a
						href="javascript:void(0)">加入我们 <img class="star"
							src="image/star.png"></a> <a href="javascript:void(0)">产品动态</a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="part_two">
				<div class="validation wjxhome__middle"
					style="color: #7a7d80; font-size: 12px;">
					<em></em> <span id="ctl00_textbeianinf">长沙冉星信息科技有限公司
						版权所有&nbsp;&nbsp;&nbsp;&nbsp;ICP证:43019002000245&nbsp;&nbsp;&nbsp;&nbsp;<a
						href='javascript:void(0)' target='_blank' style='color: #7a7d80;'
						rel='nofollow'>湘ICP备17005436号-1</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
						style='color: #7a7d80' target='_blank'
						href='http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=43019002000245'
						rel='nofollow'>湘公网安备 43019002000245号</a>&nbsp;&nbsp;<a
						href='http://www.hngswj.gov.cn/ei/Ei!certificate.action?id=2c990dab5ff9cdca015ffb31f42a0041'
						target='_blank' rel='nofollow' style='color: #7a7d80'>工商网监</a>
					</span> <a href="javascript:void(0)" id="ctl00_hrefAnQuan"
						key="553dfded58725379d18afc34" logo_size="83x30" rel="nofollow"
						logo_type="business"></a> &nbsp; <a href="javascript:void(0)"
						rel="nofollow" style='color: #7a7d80'>工商网监</a> <a
						id="_pingansec_bottomimagesmall_shiming" target="_blank"
						style="color: #7a7d80;" rel='nofollow' href="javascript:void(0)">认证联盟</a>
				</div>
			</div>
		</div>

		<div style="display: none;"></div>
		<script>var _hmt = _hmt || [];(function() {var hm = document.createElement("script");hm.src = "https://hm.baidu.com/hm.js?21be24c80829bd7a683b2c536fcf520b";var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(hm, s);})();</script>
</body>
</html>

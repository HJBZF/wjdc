<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html>
<html lang="zh-Hans-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>添加问卷项</title>
<link type="text/css" rel="stylesheet" href="css/add.css" />
<link rel="icon" href="../img/wlogo.png" />
<link type="">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body, ul, li, ol, dl, dd, p, h1, h2, h3, h4, h5, h6 {
	margin: 0;
}

a {
	text-decoration: none;
}

img {
	border: none;
}

ol, ul {
	list-style: none;
}

/*选择等级*/
#box {
	position: relative;
	margin: 0 auto;
	width: 610px;
	height: 100px;
	font-size: 20px;
	line-height: 100px;
	background: #fff;
	padding: 30px 0 30px 0;
	margin-bottom: 10px;
}

#box:hover {
	box-shadow: -20px 0 10px 0 #ff6700;
}

.title {
	position: relative;
	margin: 0 auto;
	width: 610px;
	height: 100px;
	font-size: 20px;
	line-height: 100px;
	background: #fff;
	padding: 30px 0 30px 0;
	margin-bottom: 10px;
}

.title:hover {
	box-shadow: -20px 0 10px 0 #ff6700;
}

#box .left {
	position: absolute;
	left: 0px;
	top: 5px;
	color: red;
	height: 30px;
}

#box .right {
	position: absolute;
	left: 200px;
	top: 5px;
	color: red;
	height: 30px;
}

#box ul {
	position: absolute;
	left: 80px;
	top: 6px;
	margin: 40px 10px 0 10px;
	width: 100px;
	height: 20px;
}

#box ul li {
	float: left;
	width: 20px;
	height: 20px;
	background: url(../image/starcontent.png);
	cursor: pointer;
}

#box ul li.on {
	background-position: 0 -28px;
}

#box .surveycontent {
	position: absolute;
	top: 70px;
	margin-top: 10px;
	line-height: 20px;
}

#box .problem {
	position: absolute;
	top: 5px;
	height: 35px;
	line-height: 35px;
	width: 100%;
	color: #918377
}

.title .left {
	position: absolute;
	left: 0px;
	top: 5px;
	color: red;
	height: 30px;
}

.title .right {
	position: absolute;
	left: 200px;
	top: 5px;
	color: red;
	height: 30px;
}

.title ul {
	position: absolute;
	left: 80px;
	top: 6px;
	margin: 40px 10px 0 10px;
	width: 100px;
	height: 20px;
}

.title ul li {
	float: left;
	width: 20px;
	height: 20px;
	background: url(../image/starcontent.png);
	cursor: pointer;
}

.title ul li.on {
	background-position: 0 -28px;
}

.title .surveycontent {
	position: absolute;
	top: 70px;
	margin-top: 10px;
	line-height: 20px;
}

.title .problem {
	position: absolute;
	top: 5px;
	height: 35px;
	line-height: 35px;
	width: 100%;
}



#wrap {
	text-align: left;
	opacity: 1;
	width: 920px;
	background: url(../image/oldbg2.jpg) no-repeat top center;
	margin: 0 auto;
	padding-top: 105px;
}

#surveyTitle {
	margin: 4px auto;
	height: 100px;
	line-height: 39px;
	padding: 2px;
	background: #fff;
	color: #ff6700;
	width: 610px;
	border-bottom: 4px dashed #333;
	font-size: 40px;
	font-style: italic;
	font-weight: bold;
	text-align: center;
}

.description input {
	width: 100%;
	height: 40px;
	display: block;
}
</style>
<script type="text/javascript"
	src="${APP_PATH }/static/js/jQuery-3.3.0-min.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body style="background: #ddf4ff url(../image/oldbg2-bg.jpg) repeat-x;">
	<div id="wrap"></div>

	<!-- 标题 -->
	<div id="surveyTitle"><%= session.getAttribute("wcxsname") %>
		<p class="description">
			<input class="wcxintroduce" placeholder="请输入描述信息">
		</p>
	</div>


	<div id="box">
		<p class="problem" contenteditable="true">1.你对你小组长的评价: (点击可修改问题)</p>
		<span class="left">很不满意</span>
		<ul>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
		<span class="right">满意</span>
		<p class="surveycontent">提示: 请认真给当前文章打分!</p>
		<div class="div_edit_question" style=""></div>
	</div>

	<div class="title">
		<p class="problem" contenteditable="true">2.你对你女朋友的评价: (点击可修改问题)</p>
		<span class="left">很不满意</span>
		<ul>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
		<span class="right">满意</span>
		<p class="surveycontent">提示: 请认真给当前文章打分!</p>
		<div class="div_ins_question"></div>
		<div class="div_edit_question" style=""></div>
	</div>
	<div id="voteManage" class="box ">
		<div id="content">
			<form id="myform">
				<dl>
					<dt class="wcxselect">投票标题：</dt>
					<dd>
						<input id="title" class="input-text" type="text" name="title">
					</dd>
					<dt>投票类型：</dt>
					<dd>
						<input type="radio" value="1" checked="checked" name="type">单选
						<input type="radio" value="2" name="type">多选
					</dd>
					<dt>投票选项：</dt>
					<dd id="voteoptions">
						<p>
							<input class="input-text" type="text" name="options">
						</p>
						<p>
							<input class="input-text" type="text" name="options">
						</p>
					</dd>
					<dt></dt>
					<dd class="button">
						<a
							style="background: url(../image/button_submit.gif) no-repeat; display: inline-block; float: left; width: 76px; height: 31px"
							href="javascript:addVoting()"></a> <a onclick="AddOption()"
							href="javascript:void(0);">增加选项</a> <a href="#">取消操作</a>
					</dd>
				</dl>
			</form>
		</div>
	</div>


	<form class="form-horizontal" style="margin:0 auto;width:600px;">
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">问题3:</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control wcxcompletion"  placeholder="请输入问题">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">回答:</label>
	    <div class="col-sm-10">
	      <textarea class="form-control" rows="3"></textarea>
	    </div>
	  </div>
	  
	</form>
	<div id="addElement" style="display: none;"></div>
	<div style="margin: 0 auto; width: 400px;" id="edit">
		<button type="button" class="btn btn-success" id="complete">完成编辑</button>
		<button type="button" class="btn btn-info" id="optionsAddition">添加可选问题</button>
		<button type="button" class="btn btn-info">添加评分问题</button>
	</div>

	<script src="js/jquery-1.9.1.js"></script>
	<script>
    		
		//完成编辑,提交到后台去
		$("#complete").click(function(){
			var wcxintroduce = $(".wcxintroduce").val();
    		var wcxsname = $.trim( $("#surveyTitle").text());
    		
    		var wcxtime = "2018-3-17";
    		if(wcxintroduce == ""){
    			alert("请介绍您的问卷~");
    			return;
    		}
    		var date = new Date();
    		var wcxbdate = "";
    		var month = date.getMonth()+1;
    		wcxbdate = ""+date.getFullYear()+"-"+month+"-"+date.getDate()+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
    		$.post("commitSurvey",{wcxsname:wcxsname,wcxtid:1,wcxintroduce:wcxintroduce,wcxpublishdate:wcxbdate,wcxfinishdate:wcxtime,status:1},function(data){
    			if(data == 1){
    				location.href="myquestionnaires.jsp";
    			}
    		},"text");
		})
    	
    
    	
        /* var aLi = document.querySelectorAll("#box ul li"),
            oP = document.querySelector("#box .surveycontent"),
            oUl = document.querySelector("#box ul"),
            showIndex = -1,//代表最终的评分
            pTxt = ["提示：请认真给当前文章打分","很差","较差","还行","推荐","力荐"],
            length = aLi.length;
        //鼠标离开
        oUl.onmouseleave = function (){
           chang(showIndex);
        };

        for(var i = 0; i < length; i++){
            aLi[i].ind = i;
            aLi[i].onclick = function (){
                showIndex = this.ind;
            };
            //鼠标移入
            aLi[i].onmouseenter = function (){
                var index = this.ind;
                chang(index);
            };
        };
        function chang(x){
            oP.innerHTML = pTxt[x+1];
            for(var j = 0; j < length; j++){
                aLi[j].className = "";
            };
            for(j = 0; j <= x; j++){
                aLi[j].className = "on";
            };
        }; */

        
        
        //添加问题
        $("#optionsAddition").click(function(){
        	console.log(typeof ( $("#voteMange").clone()  ))
        	
        	var copy = $("#voteMange").clone();
        	$("#addElement").insertBefore(copy);
        });
        
        
        var isIE = !!document.all;
        function AddOption()
        {
        	var voteoptions = document.getElementById("voteoptions");
        	var _p = document.createElement("p");
        	var _input = document.createElement("input");
        	_input.type = "text";
        	_input.className = "input-text";
        	_input.setAttribute("name", "options");
        	_p.appendChild(_input);
        	var _a = document.createElement("a");
        	_a.className = "del";
        	_a.setAttribute("href", "javascript:;");
        	if(isIE) {
        		_a.attachEvent("onclick", DelOption);
        	} else {
        		_a.addEventListener("click", DelOption, false);
        	}
        	_a.appendChild(document.createTextNode("删除"));
        	_p.appendChild(_a);
        	voteoptions.appendChild(_p);
        }
        
        
        function DelOption(e)
        {
        	if(!e) e = window.event;
        	var a = e.srcElement || e.target;
        	var obj = a.parentNode;
        	obj.parentNode.removeChild(obj);
        }
    </script>
</body>
</html>
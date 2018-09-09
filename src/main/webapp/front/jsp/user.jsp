<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户信息</title>
	<style>
		#loginWindows{
			position:absolute;
			top:50%;
			left:50%;
			
			-moz-transform:translate(-50%,-50%);
			-webkit-transform:translate(-50%,-50%);
			transform:translate(-50%,-50%);
		}
		
		ul li{
			list-style-type:none;
			margin-top: 10px;
		}
		
		ul>li>lable{
			display:inlin-block;
			width:80px;
			text-align:right;
		}
		
		.mytext{
			width:200px;
			line-height:20px;
		}
		
		#show_license{
			position:absolute;
			left:400px;
			top:280px;
		}
		
		#store_reg li{
			font-size:20px;
			color:red;
			padding-top:15px;
		}
	</style>

</head>
<body>
<div id="show_add_store" class="easyui-dialog" title="店家注册" data-options="iconCls:'icon-user-add',resizable:true,modal:true,closed:true">
		<form id="store_reg">
			<ul>
				<li>
					<label style="font-size:20px;">店铺类型：</label>
					<select id="stid" class="myselect"></select>
				</li>
				<li>
					<label>店铺名称:</label>
					<input class="mytext" type="text" id="sname" name="sname"/>
				</li>
				<li>
					<label>店铺密码:</label>
					<input class="mytext" type="password" id="storepwd" name="storepwd"/>
				</li>
				<li>
					<label>省份：</label>
					<select id="province" class="myselect"><option>--请选择省份--</option></select>
				</li>
				<li>
					<label>城市：</label>
					<select id="city" class="myselect"><option>--请选择城市--</option></select>
				</li>
				<li>
					<label>地区：</label>
					<select id="area" class="myselect"><option>--请选择地区--</option></select>
				</li>
				<li>
					<label>详细地址:</label>
					<input class="mytext" type="text" id="addr" name="addr"/>
				</li>
				<li>
					<label>预约电话:</label>
					<input class="mytext" type="text" id="tel" name="tel"/>
				</li>
				<li>
					<label>营业时间:</label>
					<input class="mytext" type="text" id="runtime" name="runtime"/>
				</li>
				<li>
					<label>营业执照：</label>
					<input type="file" id="license" name="license" onchange="setImagePreviews(this,'show_license')"/>
				</li>
				<li>
					<label for="pic">店铺图片:</label>
					<input class="mytext" type="file" id="pic" name="pic" multiple="multiple" onchange="setImagePreviews(this,'show_pic')"/>
				</li>
				<li>
					<div id="show_pic"></div>
				</li>
			</ul>
		</form>
		<div id="show_license">
		
		</div>
	</div>
</body>
</html>
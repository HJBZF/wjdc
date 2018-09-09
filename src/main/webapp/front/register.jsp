<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-Hans-CN">
    <head>
    <%
    	//获取服务器地址, 它是以/开始,并不以/结束
    	pageContext.setAttribute("WEBAPP",request.getContextPath());
    %>
        <meta charset="UTF-8">
        <title>问查星注册</title>
        <meta http-equiv="Cache-Control" content="no-transform">
        <meta http-equiv="Cache-Control" content="no-siteapp">
        <link rel="shortcut icon" href="${WEBAPP }/img/wlogo.png" type="image/x-icon">
        <style type="text/css">
        @import url(css/common.css);
        @import url(css/register.css);
        </style>
    </head>
    <body>
        <div class="bg">
            <div class="head">
                <a href="javascript:void(0)" class="logo"><img src="../img/logo1.png" width="150" height="59" alt=""></a>
                <div class="info fr">
                    <a href="login.html" class="login btn">登录</a>
                    <a href="${WEBAPP }/index.jsp" class="backwcx btn">返回首页</a>
                </div>
            </div>
            <div id="register-box" class="validate-box">
                <filedset class="validate-wrapper">
                    <h1 id="Register_divVT" class="validate-caption">用户注册</h1>
                    <div id="Register1_pn1Create">
                        <ul>
                            <li>
                                <label for="" class="icon user-icon"></label>
                                <input id="Register1_UserName" maxlength="50" class="validate-input user-name" type="text" placeholder="支持英文与数字,注册后不能修改">
                                <label id="divUserNameRightInfo" for="Register1_UserName" class="error green" style="display:none;">用户名可用</label>
                                <label id="divUserNameProptInfo" for="Register1_UserName" class="error blue" style="display:none;">支持英文与数字，注册后不能修改</label>
                                <label id="divUserNameErrorInfo" for="Register1_UserName" class="error red" style="display:none;">用户名不能为空</label>
                            </li>
                            <li>
                                <label for="" class="icon icon-password"></label>
                                <input id="Register1_password" maxlength="50" class="validate-input user-name" type="password" placeholder="6~20位字母、数字或特殊符号。">
                                <label id="divPasswordRightInfo" for="Register1_password" class="error green" style="display:none;">密码设置成功</label>
                                <label id="divPasswordProptInfo" for="Register1_password" class="error blue" style="display:none;">6~20位字母、数字或特殊符号。</label>
                                <label id="divPasswordErrorInfo" for="Register1_password" class="error red" style="display:none;">密码长度要在6-20个字符之间</label>
                            </li>
                            <li>
                                <label for="" class="icon icon-photo"></label>
                                <input id="Register1_tel" maxlength="50" class="validate-input user-name" type="text" placeholder="可通过手机号登录问卷星">
                                <label id="divUserNameProptInfo" for="Register1_tel" class="error blue" style="display:none;">可通过手机号登录问卷星</label>
                                <label id="divPasswordErrorInfo" for="Register1_tel" class="error red" style="display:none;">用户名不能为空</label>
                            </li>
                            <li>
                                <div style="position:relative;padding-top:15px;">
                                        <input type="text" maxlength="6" id="Register1_txtCodeInput" class="validate-input fl" placeholder="图形验证码" style="width:160px;padding-left:20px;">
                                    <div style="height:40px;line-height: 40px;" class="code-btn" >
                                        <img  class="image-verification-code fl" 
                                        style="padding:0 10px 0 18px;width:150px;vertical-align:bottom;cursor:pointer" 
                                        src="validCode/valiCodeImg.jsp" onclick="this.src='validCode/valiCodeImg.jsp?d='+new Date().getTime()" alt="验证码" title="看不清吗?点击可以刷新验证码!">

                                    </div>
                                </div>
                            </li>
                            <li>
                                <div style="font-size: 14px;text-align:left;padding-left:20px;" class="fl">
                                    <a href="wcxProtocl.html" id="Register_protocl"  target="_blank" style="color:#666;text-decoration:underline;display:inline-block;">我接受问查星服务协议</a>
                                    <span id="Register1_lbMsg" style="color:Red;display:none;">请先进行手机号码验证</span>
                                </div>
                                <div class="clearfix"></div>
                                <div style="padding-top:20px;">
                                    <input type="submit" id="Register_Create" name="Register1$btnCreate" value="创建用户" onclick="validate()" class="submitbutton">
                                    <a href="login.html" id="Register1_hrefLogin" class="log-on">已有账号,立即登录</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </filedset>
            </div>
        </div>
        <script src="${WEBAPP }/js/jQuery-3.3.0-min.js"></script>
        <script type="text/javascript">

            var $USER = $("#Register1_UserName"),
                $ErrorInfo = $("#divUserNameErrorInfo"),
                $Password = $("#Register1_password");
            var $Tel = $("#Register1_tel"),
                $UserNameProp = $("#divUserNameProptInfo");

            var $Label = $("#Register1_pn1Create ul label"),
                $BlueLabel = $("#Register1_pn1Create .blue"),
                $RedLabel = $("#Register1_pn1Create .red"),
                $GreenLabel = $("#Register1_pn1Create .green"),
                $Register_Create = $("#Register_Create"),
                $Input = $("#Register1_pn1Create input");

            $USER.focus(function(){

                var nameVal = $("#Register1_UserName").val();
                var pattern = /^[a-zA-z0-9]\w{4,18}|\w$/;
                if(!pattern.test(nameVal)){
                    $BlueLabel.first().show("slow");
                }else{
                    $GreenLabel.first().hide("slow");
                }
            })
            $USER.blur(function(){
                $BlueLabel.first().hide("slow");
                var nameVal = $("#Register1_UserName").val();
                var pattern = /^[a-zA-z0-9]\w{4,18}|\w$/;
                console.log(pattern.test(nameVal))
                if(!pattern.test(nameVal)){
                    $RedLabel.first().html("用户名只能包含英文，数字");
                }else{
                    $GreenLabel.first().hide("slow");
                }
            })

            $USER.keyup(function(){
                lose($USER);
                //验证用户名
                function lose(obj){
                    var pattern = /^[a-zA-z0-9]{4,9}|[a-zA-z0-9]$/;
                    var nameVal = $("#Register1_UserName").val();
                    if(pattern.test(nameVal)){
                        $RedLabel.first().hide();
                        $BlueLabel.first().hide();
                        $GreenLabel.first().show();
                    }else{
                        $BlueLabel.first().hide();
                        $RedLabel.first().show();
                    }
                }
            })

            $Password.click(function(){
                $BlueLabel.eq(1).show("slow");
            })
            $Password.blur(function(){
                $BlueLabel.eq(1).hide("slow");
                $GreenLabel.eq(1).hide("slow");
            })

            $Password.keyup(function(){
                lose($Password);
                //验证用户名
                function lose(obj){
                console.log($GreenLabel.eq(1))
                    var nameVal = $("#Register1_password").val();
                    var pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{8,16}$/;
                    if(! pattern.test(nameVal)){
                        $RedLabel.eq(1).show();
                        $BlueLabel.eq(1).hide();
                        $GreenLabel.eq(1).hide();
                    }else{
                        $RedLabel.eq(1).hide();
                        $BlueLabel.eq(1).hide();
                        $GreenLabel.eq(1).show();
                    }
                }
            })

<%
	//session.getAttribute("rand");
	System.out.println(session.getAttribute("rand"));
%>


            function validate(){
                var $Register1_txtCodeInput = $("#Register1_txtCodeInput").val();
                var $userName = $("#Register1_UserName").val();
                var $pwd = $("#Register1_password").val();
                var $email = $("#Register1_tel").val();
                if(Register1_txtCodeInput == '' || $pwd == ''){
                    $("#Register1_lbMsg").show();
                }else if($Register1_txtCodeInput == ""){
                	alert("请输入验证码");
                }else{
                	$.post("userRegister",{wcxuname:$userName,wcxupwd:$pwd,wcxuemail:$email},function(data){
                		alert("创建成功");
                		location.href="login.html";
                	},"text")
                }
            }

        </script>
    </body>
</html>
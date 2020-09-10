<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2020/9/10
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>register</title>
    <script src="${pageContext.request.contextPath}static/bootstrap/js/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}static/bootstrap/js/jquery-ui.min.js"></script>
    <link type="text/css" href="${pageContext.request.contextPath}static/bootstrap/css/jquery-ui.min.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}static/bootstrap/css/register.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}static/bootstrap/js/my.js"></script>
    <SCRIPT language = "JavaScript">
        // function checkUserName(){    //验证用户名
        //     var fname = document.myform.username.value;
        //     var reg=/^[0-9a-zA-Z]/;
        // 	var re = new Regex(@"^[a-zA-Z0-9_\\\\-\u4e00-\u9fa5]+$");
        //     if(fname.length != 0){
        //         for(i=0;i<fname.length;i++){
        //             if(!reg.test(fname)){
        //                 alert("只能输入字母或数字");
        //                 return false;}
        //         }
        //         if(fname.length<4||fname.length>16){
        //             alert("只能输入4-16个字符")
        //             return false;
        //         }
        //
        //     }
        //     else{    alert("请输入用户名");
        //         document.myform.username.focus();
        //         return false     }
        //     return true;
        // }
        function checkUserName($str){
            reg = /^[a-za-z]|[u4e00-u9fa5]+$/;
            red = /[u4e00-u9fa5]+$/;
            ref = /^[a-za-z]+$/;
            rea = /ns*r/;
            if(!reg.test($str)){
                $("div[name=errormsg]").eq(10).show();
                $("#contactnameview").val("");
                $("#contactnameview").focus();
                return false;
            }
            if(red.test($str)){
                if($str.length>=6){
                    $("div[name=errormsg]").eq(10).show();
                    $("#contactnameview").val("");
                    $("#contactnameview").focus();
                    return false;
                }
            }
            if(ref.test($str)){
                if($str.length>=10){
                    $("div[name=errormsg]").eq(10).show();
                    $("#contactnameview").val("");
                    $("#contactnameview").focus();

                    return false;
                }
            } else{    alert("请输入用户名");
                document.myform.username.focus();
                return false   }
            return true;

        }

        function passCheck(){ //验证密码
            var userpass = document.myform.password.value;
            if(userpass == ""){
                alert("未输入密码 \n" + "请输入密码");
                document.myform.password.focus();
                return false;   }
            if(userpass.length < 6||userpass.length>12){
                alert("密码必须在 6-12 个字符。\n");
                return false;   }
            return true;   }

        function passCheck2(){
            var p1=document.myform.password.value;
            var p2=document.myform.password2.value;
            if(p1!=p2){
                alert("确认密码与密码输入不一致");
                return false;
            }else{
                return true;
            }
        }

        function checkEmail(){
            var Email = document.getElementById("email").value;
            var e = Email.indexOf("@"&&".");
            if(Email.length!=0){
                if(e>0){
                    if(Email.charAt(0)=="@"&&"."){
                        alert("符号@和符号.不能再邮件地址第一位");
                        return false;
                    }
                    else{
                        return true;
                    }
                }
                else{
                    alert("电子邮件格式不正确\n"+"必须包含@符号和.符号！");
                    return false;
                }
            }
            else{
                alert("请输入电子邮件！")
                return false;
            }
        }

        function checkbirthday(){    //验证用户名
            var year = document.myform.birthday.value;
            if(year < 1949 || year > 2007){
                alert("年份范围从1949-2200年");
                return false;}
            return true;     }


        function validateform(){
            if(checkUserName()&&passCheck( )&&passCheck2()&&checkEmail()&&checkbirthday())
                return true;
            else
                return false;
        }

        function clearText( ) {
            document.myform.user.value="" ;
            document.myform.password.value="" ;
        }

        //显示隐藏对应的switchPwd()方法:
        $(function(){
            // 通过jqurey修改
            $("#passwordeye").click(function(){
                let type =  $("#password").attr('type')
                if(type === "password"){
                    $("#password").attr("type","text");
                }else{
                    $("#password").attr("type","password");
                }
            });
            $("#passwordeye2").click(function(){
                let type =  $("#password2").attr('type')
                if(type === "password"){
                    $("#password2").attr("type","text");
                }else{
                    $("#password2").attr("type","password");
                }
            });
        });

    </SCRIPT>
</head>
<body>
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
<img src="${pageContext.request.contextPath}static/bootstrap/img/login_bg.jpg" class="bg">
<div id="head">
    <img src="${pageContext.request.contextPath}static/bootstrap/img/register_head.png" width=100% height=auto />
</div>
<div id="center">
    <form name="myform" onSubmit="return validateform( )" enctype="multipart/form-data" action="cgi-bin/register.cgi" method="post" >
        <div class="input-group">
            <h3>用&nbsp;&nbsp;户&nbsp;&nbsp;名：</h3><input class="form-control"  id="username" name="username" type="text"  style="height:40px" value=""  placeholder="只能输入中文、字母或数字，4-16个字符"/>
        </div>
        <div class="input-group">
            <h3>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</h3><input class="form-control"  id="password" name="password" type="password" style="height:40px" value=""  placeholder="密码长度6-12位"/>
            <span class="input-group-btn">
			<INPUT class="btn btn-default" id="passwordeye" type="button" value="show/hide"">
        </span>
        </div>
        <div class="input-group">
            <h3>确认密码：</h3><input class="form-control"  id="password2" name="password2" type="password" style="height:40px" value=""/>
            <span class="input-group-btn">
			<INPUT class="btn btn-default" id="passwordeye" type="button" value="show/hide"">
        </span>
        </div>
        <div class="input-group">
            <h3>手&nbsp;&nbsp;机&nbsp;&nbsp;号：</h3><input class="form-control"  id="password" name="password" type="password" style="height:40px" value=""  placeholder="手机号码11位"/>

        </div>
        <div class="input-group">
            <label>验证码:</label>
            <input name="verifyCode">
            <button type="button" class="btn btn-primary">获取短信验证码</button>
        </div>

        <div id="btn">
            <INPUT name="registerButton"  class="btn btn-primary" type="submit" id="Button" value="注册"  onclick="checkUserName()">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}jsp/User_login.jsp"><INPUT  class="btn btn-primary" name="loginButton" id="Button" type="button" value="登录"></a>
        </div>
    </form>
</div>

</body>
</html>

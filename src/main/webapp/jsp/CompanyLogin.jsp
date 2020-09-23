
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html  class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title> 家政公司端登录 </title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/static/X-admin/lib/layui/layui.js" charset="utf-8"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-bg">
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
<div class="login layui-anim layui-anim-up">
    <div class="message">家政公司端登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form" >
        <input name="id" placeholder="请输入账号" id="id"  type="text" lay-verify="required"  class="layui-input" >
        <hr class="hr15">
        <input name="password" lay-verify="required" id="password" placeholder="请输入密码"  type="password" class="layui-input">
        <hr class="hr15">
        <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="button" onclick="jqAjax()">
        <hr class="hr20" >
    </form>
</div>


<!-- 底部结束 -->

<script>
    function jqAjax() {//登录的ajax
        var id = $("#id").val();
        var password = $("#password").val();
        console.log(name+":"+password);
        // var vCode = $("#code").val();
        var  admin = {"id":id,"password":password};
        var path = $("#path").val();
        $.ajax({
            url:path+"/company/login",
            type:"post",
            data:admin,
            dataType:"text",
            success:function (data) {

                if (data == 1){
                    alert("登录成功");
                    location.href=path+"/menu/findMenu?jobs=2";
                }
                else {
                    alert("账号或密码错误")
                    changeImg();
                }
            },

        })
    }
</script>
</body>
</html>
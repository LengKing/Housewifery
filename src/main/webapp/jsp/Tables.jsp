<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2020/8/17
  Time: 2:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>管理员的增加</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/X-admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/X-admin/js/xadmin.js"></script>
    <script src="${pageContext.request.contextPath}/js/demo.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form">
            <div class="layui-form-item">
                <label for="evaluation" class="layui-form-label">
                    <span class="x-red">*</span>添加评价
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="name" name="evaluation" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会成为您唯一的登入名
                </div>
            </div>
<%--            <div class="layui-form-item">--%>
<%--                <label for="account" class="layui-form-label">--%>
<%--                    <span for="account" class="x-red">*</span>账号--%>
<%--                </label>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <input type="text" id="account" name="account" required="" lay-verify="phone"--%>
<%--                           autocomplete="off" class="layui-input">--%>
<%--                </div>--%>
<%--                <div class="layui-form-mid layui-word-aux">--%>
<%--                    <span class="x-red">*</span>将会成为您唯一的登入名--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="layui-form-item">--%>
<%--                <label for="password" class="layui-form-label">--%>
<%--                    <span class="x-red">*</span>密码--%>
<%--                </label>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <input type="text" id="password" name="password" required="" lay-verify="email"--%>
<%--                           autocomplete="off" class="layui-input">--%>
<%--                </div>--%>
<%--                <div class="layui-form-mid layui-word-aux">--%>
<%--                    <span class="x-red">*</span>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="layui-form-item">

                <button  class="layui-btn" lay-filter="add"  onclick="AdminAdd(this)">
                    增加
                </button>
            </div>
        </form>
    </div>
</div>

</body>

</html>

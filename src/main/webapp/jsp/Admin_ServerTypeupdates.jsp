<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/16
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改服务</title>
    <script src="../static/js/jquery-3.5.1.js"></script>
    <script src="../static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <script src="../static/js/Admins.js"></script>
</head>
<body>
<div>
    <table style="text-align: center">
        <tr>
            <h2 style="margin: 8px; text-align: center">修改服务</h2>
        </tr>
        <tr>
            <td style="margin: 8px">ID：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="id" name="id" type="text" disabled="disabled"  class="layui-input"></td>

        </tr>

        <tr>
            <td style="margin: 8px">服务类型：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="typeName" name="typeName" type="text"  disabled="disabled"  class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">服务：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="name" name="name" type="text" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">服务子ID：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="id1" name="id1" type="text" disabled="disabled" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px"><input onclick="updateServers(this)" type="button" value="修改" class="layui-btn layui-btn-primary"></td>
            <td style="margin: 8px"><input onclick="guanbi()" type="button" value="返回" class="layui-btn layui-btn-primary"></td>
        </tr>
    </table>
</div>
</body>
</html>
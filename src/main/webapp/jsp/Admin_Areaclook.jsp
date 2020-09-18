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
    <title>查看区域详细信息</title>
    <script src="../static/js/jquery-3.5.1.js"></script>
    <script src="../static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <script src="../static/js/Admins.js"></script>
</head>
<body>
<div>
    <table style="text-align: center">
        <tr>
            <h2 style="margin: 8px; text-align: center">查看区域详细信息</h2>
        </tr>
        <tr>
            <td style="margin: 8px">区域：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="area" name="area" type="text" disabled="disabled" class="layui-input"></td>

        </tr>

        <tr>
            <td style="margin: 8px">公司名：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="name" name="name" type="text" disabled="disabled" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">公司法人代表：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="legal" name="legal" type="text" disabled="disabled" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">公司地址：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="address" name="address" type="text" disabled="disabled" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">公司联系方式：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="phone" name="phone" type="text" disabled="disabled" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">公司注册时间：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="entryDate" name="entryDate" type="text" disabled="disabled" class="layui-input"></td>
        </tr>

        <tr>
<%--            <td style="margin: 8px"><input onclick="fabus(this)" type="button" value="发布" class="layui-btn layui-btn-primary"></td>--%>
            <td style="margin: 8px"><input onclick="guanbi()" type="button" value="返回" class="layui-btn layui-btn-primary"></td>
        </tr>
    </table>
</div>
</body>
</html>
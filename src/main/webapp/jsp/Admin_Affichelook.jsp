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
    <title>查看详情发布动态公告</title>
    <script src="../static/js/jquery-3.5.1.js"></script>
    <script src="../static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <script src="../static/js/Admins.js"></script>
</head>
<body>
<div>
    <table style="text-align: center">
        <tr>
            <h2 style="margin: 8px; text-align: center">发布动态公告详情</h2>
        </tr>
        <tr>
            <td style="margin: 8px">标题：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="title" name="title" type="text" disabled="disabled" class="layui-input"></td>

        </tr>

        <tr>
            <td style="margin: 8px">发布时间：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="releasrDate" name="releasrDate" type="text" disabled="disabled" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">描述内容：</td>
            <td style="margin: 8px"> <textarea style="margin: 8px" disabled="disabled" name="describes" id="describes" placeholder="请输入内容" class="layui-textarea"></textarea></td>
        </tr>

        <tr>
            <td style="margin: 8px"><input onclick="fabus(this)" type="button" value="发布" class="layui-btn layui-btn-primary"></td>
            <td style="margin: 8px"><input onclick="guanbi()" type="button" value="返回" class="layui-btn layui-btn-primary"></td>
        </tr>
    </table>
</div>
</body>
</html>
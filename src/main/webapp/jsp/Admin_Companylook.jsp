<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/16
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公司列表查看详情</title>
    <script src="../static/js/jquery-3.5.1.js"></script>
    <script src="../static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <script src="../static/js/Admins.js"></script>
</head>
<body>
<div style="margin: 8px">
    <table style="text-align: center">
        <tr>
            <h2 style="margin: 8px; text-align: center">查看详情</h2>
        </tr>
        <tr>
            <td style="margin: 8px">公司id：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="id" name="id" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">公司名称：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="name" name="name" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">法人代表：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="legal" name="legal" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">公司地址：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="address" name="address" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px"v>联系方式：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="phone" name="phone" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">公司状态：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="stateName" name="stateName" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">服务区域：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="areaName" name="areaName" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">入驻时间：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="entryDate" name="entryDate" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">收款账户：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="account" name="account" type="text" class="layui-input" disabled="disabled"></td>
        </tr>
        <tr>
            <td style="margin: 8px">账户余额：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="money" name="money" type="text" class="layui-input" disabled="disabled"></td>
        </tr>


        <tr>
<%--            <td><input onclick="look(this)" type="button" value="提交" class="layui-btn layui-btn-primary"></td>--%>
            <td style="margin: 8px"><input style="margin: 8px;" onclick="guanbi()" type="button" value="返回" class="layui-btn layui-btn-primary"></td>
        </tr>
    </table>
</div>
</body>
</html>
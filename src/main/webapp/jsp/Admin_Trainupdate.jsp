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
    <title>修改培训计划</title>
    <script src="../static/js/jquery-3.5.1.js"></script>
    <script src="../static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <script src="../static/js/Admins.js"></script>
</head>
<body>
<div>
    <table style="text-align: center">
        <tr>
            <h2 style="margin: 8px;text-align: center">修改培训计划</h2>
        </tr>
        <tr>
            <td style="margin: 8px">标题：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="title" name="title" type="text" class="layui-input"></td>
            <td style="margin: 8px"><input id="id" name="id" type="text" style="display: none" class="layui-input"></td>
        </tr>
        <tr>
            <td style="margin: 8px">开始时间：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="startDate" name="startDate" type="date" class="layui-input"></td>
        </tr>
        <tr>
            <td style="margin: 8px">结束时间：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="endDate" name="endDate" type="date" class="layui-input"></td>
        </tr>
        <tr>
            <td style="margin: 8px">培训开始时间段：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="startTime" name="startTime" type="text" class="layui-input"></td>
        </tr>
        <tr>
            <td style="margin: 8px">培训结束时间段：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="endTime" name="endTime" type="text" class="layui-input"></td>
        </tr>
        <tr>
            <td style="margin: 8px">培训内容：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="content" name="content" type="text" class="layui-input"></td>
        </tr>
        <tr>
            <td style="margin: 8px">培训人数：</td>
            <td style="margin: 8px"><input style="margin: 8px" id="count" name="count" type="text" class="layui-input"></td>
        </tr>

        <tr>
            <td style="margin: 8px">培训时长：</td>
            <td style="margin: 8px">
                <select id="length" name="length" lay-verify="required" lay-search="" style="margin: 8px;width: 197px;height: 38px">
                    <option value="">请选择</option>
                    <option value="1天">1天</option>
                    <option value="2天">2天</option>
                    <option value="3天">3天</option>
                    <option value="4天">4天</option>
                    <option value="5天">5天</option>
                    <option value="6天">6天</option>
                    <option value="7天">7天</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><input onclick="updateTrain(this)" type="button" value="提交" class="layui-btn layui-btn-primary"></td>
            <td><input onclick="guanbi()" type="button" value="返回" class="layui-btn layui-btn-primary"></td>
        </tr>
    </table>
</div>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/8
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布需求</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../static/layui/css/layui.css"  media="all">
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>需求信息</legend>
</fieldset>

<form class="layui-form layui-form-pane" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">详细地址：</label>
        <div class="layui-input-block">
            <input type="text" name="title" autocomplete="off" placeholder="请填写详细的服务地址" class="layui-input">
        </div>
    </div>
    <label class="layui-form-label">服务类别：</label>
    <div class="layui-input-inline">
        <select name="quiz1">
            <option value="">请选择</option>
            <option value="" selected="">保洁</option>
            <option value="">月嫂</option>
            <option value="">家教</option>
        </select>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-inline">
            <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">文本域</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">跳转式提交</button>
    </div>
</form>


</body>
</html>

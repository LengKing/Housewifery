<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/11
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>立即下单</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script type="text/javascript" src="../static/js/1.9.1jquery.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css"  media="all">
    <script src="../static/layui/layui.all.js" charset="utf-8"></script>
    <script src="../static/js/postDemand.js"></script>
    <script src="../static/js/Admins.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>立即下单</legend>
</fieldset>

<form class="layui-form">
    <input id="userId" name="userId" value="" style="display: none"  type="text">
    <div class="layui-form-item">
    <label class="layui-form-label">详细地址：</label>
    <div class="layui-input-block">
        <input type="text" name="address" id="address" required  lay-verify="required" placeholder="请填写详细的服务地址" autocomplete="off" class="layui-input">
    </div>
</div>

    <div class="layui-form-item">
        <label class="layui-form-label">服务类别：</label>
        <div class="layui-input-block">

        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">服务频次：</label>
        <div class="layui-input-block">
            <select name="serviceCount" id="serviceCount" lay-verify="required">
                <option value=""></option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" type="button" onclick="">确认下单</button>
            <button class="layui-btn" type="button" onclick="guanbi()">取消</button>
        </div>
    </div>
</form>

</body>

<script>
    layui.use('form', function(){
        var form = layui.form;
        form.render();
    });

</script>
</html>

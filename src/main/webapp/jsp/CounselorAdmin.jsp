<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/9
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
    label{
        width: 300px;
    }
</style>

<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-sm12 layui-col-md6" style="width: 100%;height: 30%">
            <div class="layui-card">
                <div class="layui-card-header">顾问管理</div>
                <div class="layui-card-body" style="min-height: 400px;">
                    <div id="main4" class="layui-col-sm12" style="height: 400px;">
                        <table class="layui-table layui-form" id="jobs" lay-filter="jobs"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    layui.use(['table', 'layer'], function () {
        var table = layui.table;
        var layer=layui.layer;
        var tableIns = table.render({
            elem: '#jobs'
            , height: 400
            , url: '${pageContext.request.contextPath}/counselor/selCounselor' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'id', title: '顾问ID', width: 100,align: 'center'}
                ,{field: 'number', title: '顾问编号', width: 100,align: 'center'}
                ,{field: 'position', title: '职位', width: 150,align: 'center'}
                ,{field: 'detail', title: '职责', width: 400,align: 'center'}
            ]]
            ,done: function () {
                $("[data-field='id']").css('display','none');
            }
            , limit: 5
            , limits: [5, 6, 7]
        });

    });


</script>

</body>

</html>

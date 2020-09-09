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
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <script src="../static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../static/js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-sm12 layui-col-md6" style="width: 100%;height: 30%">
            <div class="layui-card">
                <div class="layui-card-header">技能培训</div>
                <div class="layui-card-body" style="min-height: 400px;">
                    <div id="main4" class="layui-col-sm12" style="height: 400px;">
                        <table class="layui-table layui-form" id="train" lay-filter="train"></table>
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
            elem: '#train'
            , height: 400
            , url: '${pageContext.request.contextPath}/train/selTrain' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'id', title: 'ID', width: 80,align: 'center'}
                ,{field: 'title', title: '培训项目名', width: 200,align: 'center'}
                ,{field: 'content', title: '培训内容', width: 150,align: 'center'}
                ,{field: 'length', title: '培训时长', width: 80,align: 'center'}
                ,{field: 'credential', title: '认证证书', width: 120,align: 'center'}
                , {title: '操作', width: 250, align: 'center', toolbar: '#barDemo'}
            ]]
            ,done: function () {
                $("[data-field='id']").css('display','none');
            }
            , limit: 5
            , limits: [5, 6, 7]
        });
        table.on('tool(train)', function (obj) {
            var id = obj.data.id;           //获得当前行数据
            var layEvent = obj.event;       //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var title=obj.data.title;
            if (layEvent === 'detail') {    //查看详情
                layer.open({
                    title:"培训详情",
                    type: 1,
                    area: ['400', '500'],
                    content:$("#detail_div"),
                    btn:'查看培训内容',
                    btn1:function () {
                        var account=obj.data.account;
                        var name=$("#upd_name").val();
                        var jobs=$("#upd_jobs").val();
                        $.ajax({
                            url: "${pageContext.request.contextPath}/train/playTrain",
                            type: "Post",
                            data: {},
                            dataType: "text",

                        });
                    }
                })
            }else if (layEvent === 'update'){

            }else if(layEvent === 'delete'){

            }

        });
    });
</script>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-normal" type="button" lay-event="detail">查看详情</button>
    <button class="layui-btn layui-btn-normal" type="button" lay-event="update">修改</button>
    <button class="layui-btn layui-btn-normal" type="button" lay-event="delete">删除</button>
</script>
</body>
<div id="detail_div" style="width: 400px;height: 450px;text-align: center;display: none">
    <form class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label" >培训标题</label>
            <div class="layui-input-block">
                <label class="layui-form-label" id="title"></label>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" >培训开始时间</label>
            <div class="layui-input-block">
                <label class="layui-form-label" id="startDate"></label>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" >培训结束时间</label>
            <div class="layui-input-inline">
                <label class="layui-form-label" id="endDate"></label>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" >培训内容</label>
            <div class="layui-input-inline">
                <label class="layui-form-label" id="content"></label>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" >培训人数</label>
            <div class="layui-input-inline">
                <label class="layui-form-label" id="count"></label>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" >培训时长</label>
            <div class="layui-input-inline">
                <label class="layui-form-label" id="length"></label>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" >认证证书</label>
            <div class="layui-input-inline">
                <label class="layui-form-label" id="credential"></label>
            </div>
        </div>
    </form>
</div>
</html>

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
                <div class="layui-card-header">订单信息</div>
                <div class="layui-card-body">
                    <button class="layui-btn" id="addJobs">
                    <i class="layui-icon">&#xe654;</i>添加</button></div>
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
            , url: '${pageContext.request.contextPath}/jobs/selJobs' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'id', title: '角色号', width: 100,align: 'center'}
                ,{field: 'jobs', title: '角色名', width: 150,align: 'center'}
                ,{field: 'detail', title: '角色描述', width: 400,align: 'center'}
                ,{title: '操作', width: 200, align: 'center', toolbar: '#barDemo'}
            ]]
            ,done: function () {
                $("[data-field='id']").css('display','none');
            }
            , limit: 5
            , limits: [5, 6, 7]
        });

        table.on('tool(jobs)', function (obj) {
            id = obj.data.id;           //获得当前行数据
            var layEvent = obj.event;       //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'update') {    //修改
                $.ajax({
                    url: "${pageContext.request.contextPath}/jobs/findJobsById",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    success:function (data) {
                    var jobs=JSON.parse(data);
                    $("#update_jobs").val(jobs.jobs);
                    $("#update_detail").val(jobs.detail);
                    }
                });
                layer.open({
                    title:"角色修改",
                    type: 1,
                    area: 'auto',
                    shadeClose:"true",
                    content:$("#update_div"),
                    btn:'保存',
                    btnAlign: 'c',
                    btn1:function (index) {
                      var jobs=$("#update_jobs").val()
                      var detail=$("#update_detail").val();
                        $.ajax({
                            url: "${pageContext.request.contextPath}/jobs/updateJobs",
                            type: "Post",
                            data: {"id":id,"jobs":jobs,"detail":detail},
                            dataType: "text",
                            success:function (data) {
                                if (data=="1"){
                                    table.reload('jobs',{
                                        url: '${pageContext.request.contextPath}/jobs/selJobs'
                                        ,height: 400
                                        ,page:{
                                            curr:1
                                        }
                                    })
                                    layer.alert("角色修改成功",{title:"信息",time:2000});
                                    layer.close(index);
                                }else {
                                    layer.alert("角色修改失败",{title:"信息",time:2000});
                                }
                            }
                        });
                    },

                })
            }else if (layEvent === 'delete') {    //删除
                $.ajax({
                    url: "${pageContext.request.contextPath}/jobs/deleteJobs",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    success:function (data) {
                        table.reload('jobs',{
                            url: '${pageContext.request.contextPath}/jobs/selJobs'
                            ,height: 400
                            ,page:{
                                curr:1
                            }
                        })
                        layer.alert(data,{title:"信息",time:2000});
                    }
                });
            }
        });

        $("#addJobs").on('click',function () {
            layer.open({
                title:"新增培训",
                type: 1,
                area: 'auto',
                shadeClose:"true",
                content:$("#add_div"),
                btn:'提交',
                btnAlign: 'c',
                btn1:function (index) {
                    var jobs=$("#add_jobs").val()
                    var detail=$("#add_detail").val();
                    $.ajax({
                        url: "${pageContext.request.contextPath}/jobs/addJobs",
                        type: "Post",
                        data: {"jobs":jobs,"detail":detail},
                        dataType: "text",
                        success:function (data) {
                            if (data=="1"){
                                table.reload('jobs',{
                                    url: '${pageContext.request.contextPath}/jobs/selJobs'
                                    ,height: 400
                                    ,page:{
                                        curr:1
                                    }
                                })
                                layer.alert("角色添加成功",{title:"信息",time:2000});
                                layer.close(index);
                            }else {
                                layer.alert("角色添加失败",{title:"信息",time:2000});
                            }
                        }
                    });
                },
            })
        })
    });


</script>

<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-normal" type="button" lay-event="update">修改</button>
    <button class="layui-btn layui-btn-normal" type="button" lay-event="delete">删除</button>
</script>

</body>

<div id="update_div" style="width: 350px;height: 300px;text-align: center;display: none">
    <table class="layui-table" lay-skin="line">
        <tr>
            <td>角色名</td>
            <td ><input id="update_jobs" style="width: 200px;height: 30px"></td>
        </tr>
        <tr>
            <td>角色描述</td>
            <td ><input id="update_detail" style="width: 200px;height: 30px"></td>
        </tr>

    </table>
</div>

<div id="add_div" style="width: 350px;height: 300px;text-align: center;display: none">
    <table class="layui-table" lay-skin="line">
        <tr>
            <td>角色名</td>
            <td><input id="add_jobs" class="layui-input" placeholder="请输入角色名" style="width: 200px;height: 30px"></td>
        </tr>
        <tr>
            <td>角色描述</td>
            <td><input id="add_detail" class="layui-input" placeholder="请输入角色描述" style="width: 200px;height: 30px"></td>
        </tr>

    </table>
</div>

</html>

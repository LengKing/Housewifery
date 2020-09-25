<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>我的评价</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css" media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<div class="layui-card-header">我的评价</div>
<table class="layui-table" id="evaluation" lay-filter="evaluation"></table>
<script type="text/html" id="barDemo">
    {{#  if(d.evaluationStateName=="待评价"){ }}
    <button class="layui-btn layui-btn-normal" type="button" lay-event="evaluation">评价</button>
    {{#  } }}
    {{#  if(d.evaluationStateName=="已评价"){ }}
    <button class="layui-btn layui-btn-normal" type="button" lay-event="detail">查看评价</button>
    <button class="layui-btn layui-btn-normal" type="button" lay-event="del">删除</button>
    {{#  } }}
</script>
<script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form','table','jquery','layer'], function(){
        var table = layui.table;
        var form = layui.form;
        var layer=layui.layer;
        var $ = layui.jquery;
        var tableinf = table.render({
            elem: '#evaluation'
            ,url:'${pageContext.request.contextPath}/evaluation/selEvaluation'
            // ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,title: '待评价表'
            ,height:400
            ,cols: [[
                {field:'id', title:'订单ID', width:130,align: "center" }
                ,{field:'employee', title:'家政人员名字', width:130,align: "center" }
                ,{field:'company', title:'家政公司', width:180,align: "center"}
                ,{field:'orderTime', title:'订单时间', width:200, align: "center"}
                ,{field:'cost', title:'费用', width:150, align: "center"}
                ,{field:'evaluationStateName', title:'状态', width:160, align: "center"}
                ,{title: '操作', width: 200, align: 'center', toolbar: '#barDemo',align: "center"}
            ]]
            ,done:function (res) {
                console.log(res.data)
            }
            , limit: 5
            , limits: [5, 6, 7]
        });

        //监听行工具事件
        table.on('tool(evaluation)', function(obj){
            id=obj.data.id;
            var layEvent = obj.event;
            if (layEvent === 'del') {    //删除
                $.ajax({
                    url: "${pageContext.request.contextPath}/evaluation/delEvaluation",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    beforeSend:function(){
                        return confirm("确认删除该评价？")
                    },
                    success:function (data) {
                        table.reload('evaluation',{
                            url: '${pageContext.request.contextPath}/evaluation/selEvaluation'
                            ,height: 400
                            ,page:{
                                curr:1
                            }
                        })
                        layer.alert(data,{title:"信息",time:2000});
                    }
                });
            }else if (layEvent === 'detail') {
                $.ajax({
                    url: "${pageContext.request.contextPath}/evaluation/findEvaluation",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    success:function (data) {
                        alert(data);
                    }
                });
            }else if (layEvent === 'evaluation') {    //评价
                layer.open({
                    title:"发表评价",
                    type: 1,
                    area: 'auto',
                    content:$("#evaluation_div"),
                    btn:'提交',
                    btnAlign: 'c',
                    btn1:function (index) {
                        var comment=$("#comment").val();
                        $.ajax({
                            url: "${pageContext.request.contextPath}/evaluation/addEvaluation",
                            type: "Post",
                            data: {"id":id,"comment":comment},
                            dataType: "text",
                            beforeSend:function () {
                                if(comment==""){
                                    layer.alert("请输入评价",{icon:5,title:"提示",time:1500});
                                    return false;
                                }else{
                                    return confirm("确认提交评价？")
                                }
                            },
                            success:function (data) {
                                alert(data);
                                if (data=="提交成功"){
                                    layer.close(index);
                                    table.reload('evaluation',{
                                        url: '${pageContext.request.contextPath}/evaluation/selEvaluation'
                                        ,height: 400
                                        ,page:{
                                            curr:1
                                        }
                                    })
                                }
                            },
                            error:function () {
                                layer.alert("网络繁忙",{icon:5,title:"提示",time:2000});
                            }
                        });
                    }
                })

            }
        });
    });
</script>

</body>
<div id="evaluation_div" style="width: 350px;height: 120px;text-align: center;display: none">
    <table class="layui-table" lay-skin="line">
        <tr>
            <td>评价内容</td>
            <td><input class="layui-input" id="comment"></td>
        </tr>
    </table>

</div>

</html>
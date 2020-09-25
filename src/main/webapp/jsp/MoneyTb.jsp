<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/static/js/userLogin.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
<div class="layui-card-header">我的订单</div>
<form class="layui-form" lay-filter="component-form-group" id="search_submits" onsubmit="return false" style="margin-top: 15px">
    <div class="layui-form layui-card-header layuiadmin-card-header-auto" lay-filter="layadmin-useradmin-formlist">

        <div class="layui-inline">
            <button class="layui-btn" lay-submit="search_submits" lay-filter="search"  onclick="OrderQuery(this)">查询</button>
        </div>
    </div>
</form>
<table class="layui-hide" id="test" lay-filter="test"></table>


<script type="text/html" id="barDemo">
    {{#  if(d.orderState=="服务中"){ }}
    <button class="layui-btn layui-btn-normal" type="button" lay-event="over">确认服务完成</button>
    {{#  } }}
    {{#  if(d.orderState=="已处理"){ }}
    <button class="layui-btn layui-btn-normal" type="button" lay-event="after">发起售后</button>
    {{#  } }}
</script>


<script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>

    layui.use(['form','table','jquery'], function(){
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;
        var tableinf = table.render({
            elem: '#test'
            ,url:'${pageContext.request.contextPath}/Order/selOrder'
            , page: true //开启分页
            ,title: '用户订单表'
            ,cols: [[
                {field:'id', title:'订单号', width:100, fixed: 'left', unresize: true, sort: true }
                ,{field:'serviceName', title:'服务', width:120, edit: 'text'}
                ,{field:'type', title:'服务类别', width:150, edit: 'text', sort: true}
                ,{field:'cost', title:'消费金额', width:100, edit: 'text', sort: true}
                ,{field:'orderTime', title:'订单时间', width:150, edit: 'text', sort: true}
                ,{field:'company', title:'商家名称', width:150, edit: 'text', sort: true}
                ,{field:'orderState', title:'订单状态', width:100, edit: 'text', sort: true}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:200}
            ]]
            , limit: 5
            , limits: [5, 6, 7]
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var id = obj.data.id;
            //console.log(obj)
            if(obj.event === 'over'){
                $.ajax({
                    url: "${pageContext.request.contextPath}/Order/overOrder",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    beforeSend:function(){
                        return confirm("该订单确认完成？")
                    },
                    success:function (data) {
                        table.reload('test',{
                            url: '${pageContext.request.contextPath}/Order/selOrder'
                            ,height: 400
                            ,page:{
                                curr:1
                            }
                        })
                        layer.alert(data,{title:"信息",time:2000});
                    }
                });

            } else if(obj.event === 'after'){
                layer.open({
                    title:"发起售后",
                    type: 1,
                    area: 'auto',
                    content:$("#evaluation_div"),
                    btn:'提交',
                    btnAlign: 'c',
                    btn1:function (index) {
                        var why=$("#comment").val();
                        $.ajax({
                            url: "${pageContext.request.contextPath}/Order/addAfter",
                            type: "Post",
                            data: {"id":id,"why":why},
                            dataType: "text",
                            beforeSend:function () {
                                if(why==""){
                                    layer.alert("请输入售后原因",{icon:5,title:"提示",time:1500});
                                    return false;
                                }else{
                                    return confirm("确认发起售后？")
                                }
                            },
                            success:function (data) {
                                alert(data);
                                if (data=="提交成功"){
                                    layer.close(index);
                                    table.reload('test',{
                                        url: '${pageContext.request.contextPath}/Order/selOrder'
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
            <td>售后原因</td>
            <td><input class="layui-input" id="comment"></td>
        </tr>
    </table>

</div>
</html>
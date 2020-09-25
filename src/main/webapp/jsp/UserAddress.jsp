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
<div class="layui-card-header">我的地址</div>
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
<form class="layui-form" lay-filter="component-form-group" id="search_submits" onsubmit="return false" style="margin-top: 15px">
    <div class="layui-form layui-card-header layuiadmin-card-header-auto" lay-filter="layadmin-useradmin-formlist">
        <div class="layui-inline">
            <button class="layui-btn" lay-submit="search_submits" id="addAdress">&#xe654;</i>添加</button>
        </div>
    </div>
</form>
<table class="layui-hide" id="test" lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
            , height: 400
            , url: '${pageContext.request.contextPath}/user/selAddress' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'id', title: '地址ID', width: 80,align: 'center'}
                ,{field: 'address', title: '服务地址', width: 300,align: 'center'}
                ,{title: '操作', width: 300, align: 'center', toolbar: '#barDemo'}
            ]]
            , limit: 5
            , limits: [5, 6, 7]
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var id = obj.data.id;
            var address=obj.data.address;
            if(obj.event === 'del'){
                $.ajax({
                    url: "${pageContext.request.contextPath}/user/delAddress",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    beforeSend:function(){
                        return confirm("确认删除该地址？")
                    },
                    success:function (data) {
                        table.reload('test',{
                            url: '${pageContext.request.contextPath}/user/selAddress'
                            ,height: 400
                            ,page:{
                                curr:1
                            }
                        })
                        layer.alert(data,{title:"信息",time:2000});
                    }
                });

            } else if(obj.event === 'edit') {
                $("#address").val(address);
                layer.open({
                    title:"地址修改",
                    type: 1,
                    area: ['420','120'],
                    content:$("#address_div"),
                    btn:'提交',
                    btnAlign: 'c',
                    btn1:function (index) {
                        var address=$("#address").val();
                        $.ajax({
                            url: "${pageContext.request.contextPath}/user/updAddress",
                            type: "Post",
                            data: {"id":id,"address":address},
                            dataType: "text",
                            beforeSend:function () {
                                if(address==""){
                                    layer.alert("请输入地址",{icon:5,title:"提示",time:1500});
                                    return false;
                                }else{
                                    return confirm("确认修改地址？")
                                }
                            },
                            success:function (data) {
                                alert(data);
                                if (data=="修改成功"){
                                    layer.close(index);
                                    table.reload('test',{
                                        url: '${pageContext.request.contextPath}/user/selAddress'
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
$("#addAdress").click(function () {
    $("#address").val("");
    layer.open({
        title:"新增地址",
        type: 1,
        area: ['420','120'],
        content:$("#address_div"),
        btn:'提交',
        btnAlign: 'c',
        btn1:function (index) {
            var address=$("#address").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/user/addAddress",
                type: "Post",
                data: {"address":address},
                dataType: "text",
                beforeSend:function () {
                    if(address==""){
                        layer.alert("请输入地址",{icon:5,title:"提示",time:1500});
                        return false;
                    }else{
                        return confirm("确认添加地址？")
                    }
                },
                success:function (data) {
                    alert(data);
                    if (data=="添加成功"){
                        layer.close(index);
                        table.reload('test',{
                            url: '${pageContext.request.contextPath}/user/selAddress'
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
})


    });
</script>

</body>
<div id="address_div" style="width: 400px;height: 100px;text-align: center;display: none">
    <table class="layui-table" lay-skin="line">
        <tr>
            <td>服务地址</td>
            <td width="300px"><input class="layui-input" id="address" style="width: 300px"></td>
        </tr>
    </table>

</div>
</html>
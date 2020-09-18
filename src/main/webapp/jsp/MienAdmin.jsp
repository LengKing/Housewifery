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
    <title>培训风采</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jsmodern-4.1.4.min.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jsmodern-4.1.4.min.js"></script>
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

<script>
    $(function () {
        $.post("${pageContext.request.contextPath}/params/findParams",{"type":"content_type"},function(data){
            $(data).each(function(i,n){
                $("#update_type").append("<option value='" +n+"'>" +n+ "</option>");
                $("#add_type").append("<option value='" +n+"'>" +n+ "</option>");
            });
        },"json");

    })
</script>

<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-sm12 layui-col-md6" style="width: 100%;height: 30%">
            <div class="layui-card">
                <div class="layui-card-header">培训风采</div>
                <div class="layui-card-body">
                    <button class="layui-btn" id="addMien">
                    <i class="layui-icon">&#xe654;</i>添加</button></div>
                <div class="layui-card-body" style="min-height: 400px;">
                    <div id="main4" class="layui-col-sm12" style="height: 400px;">
                        <table class="layui-table layui-form" id="mien" lay-filter="mien"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    layui.use(['table', 'layer','upload'], function () {
        var table = layui.table;
        var layer=layui.layer;
        var $ = layui.jquery
            ,upload = layui.upload;
        var tableIns = table.render({
            elem: '#mien'
            , height: 400
            , url: '${pageContext.request.contextPath}/mien/selMien' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'url', title: 'ID', width: 100,align: 'center'}
                ,{field: 'id', title: 'ID', width: 100,align: 'center'}
                ,{field: 'title', title: '风采标题', width: 200,align: 'center'}
                ,{field: 'type', title: '风采类型', width: 100,align: 'center'}
                ,{field: 'showDate', title: '展示时间', width: 100,align: 'center'}
                ,{title: '操作', width: 250, align: 'center', toolbar: '#barDemo'}
            ]]
            ,done: function () {
                $("[data-field='url']").css('display','none');
            }
            , limit: 5
            , limits: [5, 6, 7]
        });

        table.on('tool(mien)', function (obj) {
            var title1=obj.data.title;
            var url=obj.data.url;
            id = obj.data.id;           //获得当前行数据
            var layEvent = obj.event;       //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'update') {    //修改
                $.ajax({
                    url: "${pageContext.request.contextPath}/mien/findMienById",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    success:function (data) {
                    var mien=JSON.parse(data);
                    $("#update_title").val(mien.title);
                    $("#update_type").val(mien.type);
                    }
                });
                layer.open({
                    title:"风采修改",
                    type: 1,
                    area: 'auto',
                    shadeClose:"true",
                    content:$("#update_div"),
                    btn:'保存',
                    btnAlign: 'c',
                    btn1:function (index) {
                      var title=$("#update_title").val();
                      var type=$("#update_type").val();
                        $.ajax({
                            url: "${pageContext.request.contextPath}/mien/updateMien",
                            type: "Post",
                            data: {"id":id,"title":title,"type":type},
                            dataType: "text",
                            beforeSend:function(){
                                return confirm("确认修改"+title1+"？")
                            },
                            success:function (data) {
                                if (data=="1"){
                                    table.reload('mien',{
                                        url: '${pageContext.request.contextPath}/mien/selMien'
                                        ,height: 400
                                        ,page:{
                                            curr:1
                                        }
                                    })
                                    layer.alert("知识修改成功",{title:"信息",time:2000});
                                    layer.close(index);
                                }else {
                                    layer.alert("知识修改失败",{title:"信息",time:2000});
                                }
                            }
                        });
                    },

                })
            }else if (layEvent === 'delete') {    //删除
                $.ajax({
                    url: "${pageContext.request.contextPath}/mien/deleteMien",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    beforeSend:function(){
                        return confirm("确认删除"+title1+"？")
                    },
                    success:function (data) {

                        table.reload('mien',{
                            url: '${pageContext.request.contextPath}/mien/selMien'
                            ,height: 400
                            ,page:{
                                curr:1
                            }
                        })
                        layer.alert(data,{title:"信息",time:2000});
                    }
                });
            }else if (layEvent==='image') {
                window.open(url);
            }
        });

        $("#addMien").on('click',function () {
            layer.open({
                title:"新增风采",
                type: 1,
                area: 'auto',
                content:$("#add_div"),
            })
            upload.render({
                elem: '#test8'
                ,url: '${pageContext.request.contextPath}/mien/addMien' //改成您自己的上传接口
                ,auto: false
                ,accept:"file"
                ,multiple: true
                ,before:function (obj) {
                    // layer.load();
                    this.data={"title":$("#add_title").val(),"type":$("#add_type").val()};
                }
                ,bindAction: '#test9'
                ,done: function(res){
                    console.log(res)
                    layer.msg(res.msg);
                    table.reload('mien',{
                        url: '${pageContext.request.contextPath}/mien/selMien'
                        ,height: 400
                        ,page:{
                            curr:1
                        }
                    })
                }
            });
        })
    });

</script>

<script type="text/html" id="barDemo">


    <button class="layui-btn layui-btn-normal" type="button" lay-event="image">查看图片</button>
    <button class="layui-btn layui-btn-normal" type="button" lay-event="update">修改</button>
    <button class="layui-btn layui-btn-normal" type="button" lay-event="delete">删除</button>
</script>

</body>

<div id="update_div" style="width: 350px;height: 300px;text-align: center;display: none">
    <table class="layui-table" lay-skin="line">
        <tr>
            <td>风采标题</td>
            <td ><input id="update_title" style="width: 200px;height: 30px"></td>
        </tr>
        <tr>
            <td>风采类别</td>
            <td ><select id="update_type" name="update_type" class="layui-select">
                <option></option>
            </select></td>
        </tr>

    </table>
</div>

<div id="add_div" style="width: 350px;height: 520px;text-align: center;display: none">
    <table class="layui-table" lay-skin="line">
        <tr>
            <td>风采标题</td>
            <td><input class="layui-input" id="add_title"></td>
        </tr>
        <tr>
            <td>风采类别</td>
            <td><select name="add_type" id="add_type" class="layui-select">
                <option></option></select>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="80px">
                <button type="button" class="layui-btn layui-btn-normal" id="test8">选择文件</button>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="80px" style="text-align: center">
                <button type="button" class="layui-btn layui-btn-normal" id="test9">提交</button>
            </td>
        </tr>

    </table>
</div>


</html>

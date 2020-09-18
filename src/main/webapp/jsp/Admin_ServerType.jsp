<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/15
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>服务</title>
    <script type="text/javascript" src="../static/js/jquery-3.5.1.js" charset="UTF-8"></script>
    <script src="../static/layui/layui.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
    <script src="../static/js/Admins.js"></script>
</head>
<body>


<div class="layui-input-block" style="margin-top: 20px">

    <div class="layui-inline">
        <label class="layui-form-label">服务类型：</label>
        <div class="layui-input-inline">
            <input name="typeName" id="typeName" class="layui-input" type="text" autocomplete="off">
        </div>
    </div>
    <button class="layui-btn" style="margin-top: 0px;" id="searchUserifAccount" data-type="reload">
        <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
    </button>
</div>

<div>
    <table id="demo" lay-filter="test"></table>

    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-danger layui-btn-xs" onclick="lookType(this)">查看详情</a>
        <a class="layui-btn layui-btn-xs" onclick="updatesType(this)">修改服务类型</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" onclick="updateServer(this)">修改服务</a>
        <a class="layui-btn layui-btn-xs" onclick="addType(this)">添加服务</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除服务类型</a>
        <a class="layui-btn layui-btn-xs" lay-event="dels">删除服务</a>
    </script>
    <script>
        var path = $("#path").val();
        //加载table模块
        layui.use(['table', 'layer', 'laypage'], function () {
            var table = layui.table;
            var laypage = layui.laypage; //分页
            var layer = layui.layer; //弹层

            //执行一个 table 实例
            table.render({
                elem: '#demo'
                , height: 510
                , url:'/adminType/getType' //数据接口
                , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                    layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
                    , curr: 1 //设定初始在第 1 页
                    , limits: [1, 2, 3, 5, 6, 8, 10]
                    // , groups: 1 //只显示 1 个连续页码 修改会只显示一个页面
                    , first: '首页' //不显示首页
                    , last: '尾页' //不显示尾页
                }
                , toolbar: 'default'
                , cols: [[ //表头
                    {field: 'id', title: 'ID', width: 180, sort: true}
                    , {field: 'typeName', title: '服务类型', width: 180}
                    , {field: 'name', title: '服务', width: 180}
                    , {field: 'id1', title: '服务子ID', width: 180}
                    , {field: 'pid1', title: '服务ID', width: 180,hide:true}
                    , {fixed: 'right', align: 'center', toolbar: '#barDemo'}
                ]]
            });

            table.on('tool(test)', function (obj) {
                var data = obj.data;

                if (obj.event === 'del') {
                    layer.confirm('真的要删除吗', function (index) {
                        $.ajax({
                            url: "/adminType/deleteType",
                            data: {id: data.id},
                            success: function (data) {
                                if (data == "删除成功") {
                                    obj.del();
                                    layer.close(index);
                                    layer.msg("删除成功");
                                    $("#searchUserifAccount").click();
                                } else {
                                    layer.msg("删除失败");
                                    layer.close(index);
                                }
                            }
                        })

                    });
                }
                else if (obj.event === 'dels') {
                    layer.confirm('真的要删除吗', function (index) {
                        $.ajax({
                            url: "/adminType/deleteTypes",
                            data: {id1: data.id1},
                            success: function (data) {
                                if (data == "删除成功") {
                                    obj.del();
                                    layer.close(index);
                                    layer.msg("删除成功");
                                    $("#searchUserifAccount").click();
                                } else {
                                    layer.msg("删除失败");
                                    layer.close(index);
                                }
                            }
                        })

                    });
                }
            });

            var active = {
                reload: function () {
                    var typeName = $("#typeName").val();//搜索框内容
                    //执行重载
                    table.reload('demo', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        , where: {
                            typeName: typeName//作为参数传递给后端
                        }
                    });

                }

            };

            $('#searchUserifAccount').on('click', function () {
                var type = $(this).data('type');//自定义type属性，这里即为reload
                active[type] ? active[type].call(this) : ''; //如果存在active[type]，则调用改函数
            });

        });


    </script>
</div>
</body>
</html>


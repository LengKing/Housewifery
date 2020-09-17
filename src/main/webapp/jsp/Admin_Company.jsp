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
    <title>家政公司列表</title>
    <script type="text/javascript" src="../static/js/jquery-3.5.1.js" charset="UTF-8"></script>
    <script src="../static/layui/layui.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
    <script src="../static/js/Admins.js"></script>
</head>
<body>


<div class="layui-input-block" style="margin-top: 20px">

    <div class="layui-inline">
        <label class="layui-form-label">公司名：</label>
        <div class="layui-input-inline">
            <input name="name" id="name" class="layui-input" type="text" autocomplete="off">
        </div>
    </div>
    <button class="layui-btn" style="margin-top: 0px;" id="searchUserifAccount" data-type="reload">
        <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
    </button>
</div>

<div>
    <table id="demo" lay-filter="test"></table>

    <script type="text/html" id="barDemo">
<%--        <a class="layui-btn layui-btn-danger layui-btn-xs" onclick="update(this)">修改</a>--%>
        <a class="layui-btn layui-btn-xs" onclick="look(this)">查看详情</a>
    </script>
    <script>

        //加载table模块
        layui.use(['table', 'layer', 'laypage'], function () {
            var table = layui.table;
            // var laypage = layui.laypage; //分页
            var layer = layui.layer; //弹层

            //执行一个 table 实例
            table.render({
                elem: '#demo'
                , height: 510
                , url: '/companyManage/getCompany' //数据接口
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
                    {field: 'id', title: 'ID', width: 80, sort: true}
                    , {field: 'name', title: '公司名称', width: 150}
                    , {field: 'legal', title: '法人代表', width: 100}
                    , {field: 'address', title: '公司地址', width: 100}
                    , {field: 'phone', title: '公司联系方式', width: 150}
                    , {field: 'stateName', title: '公司状态', width: 100}
                    , {field: 'areaName', title: '服务区域', width: 100}
                    , {field: 'entryDate', title: '入驻时间', width: 180}
                    , {field: 'account', title: '收款账户', width: 180}
                    , {field: 'money', title: '账户余额', width: 90}
                    , {fixed: 'right', align: 'center', toolbar: '#barDemo'}
                ]]
            });
            //
            // //监听头工具栏事件
            // table.on('tool(test)', function (obj) {
            //     var checkStatus = table.checkStatus(obj.config.id)
            //         , data = checkStatus.data; //获取选中的数据
            //     switch (obj.event) {
            //         case 'add':
            //             layer.msg('添加');
            //             break;
            //     }
            //     ;
            // });

            table.on('tool(test)', function (obj) {
                var data = obj.data;
                if (obj.event === 'ckxq') {
                    $.ajax({
                        url: "/adminManage/updateState",
                        data: {account: data.account, userState: userState},
                        success: function (data) {
                            if (data == "操作成功") {
                                layer.alert("禁用成功！");
                                $("#searchUserifAccount").click();
                            } else {
                                layer.alert("禁用失败！");
                                $("#searchUserifAccount").click();
                            }
                        }
                    });
                }
                // else if (obj.event === 'start') {
                //     var userState = 2
                //     var c = confirm("确定要启用吗？")
                //     $.ajax({
                //         url: "/adminManage/updateState",
                //         data: {account: data.account, userState: userState},
                //         success: function (data) {
                //             if (data == "操作成功") {
                //                 layer.alert("启用成功！");
                //                 $("#searchUserifAccount").click();
                //             } else {
                //                 layer.alert("启用失败！");
                //                 $("#searchUserifAccount").click();
                //             }
                //         }
                //     });
                // }
            });
            var active = {
                reload: function () {
                    var name = $("#name").val();//搜索框内容
                    //执行重载
                    table.reload('demo', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        , where: {
                            name: name//作为参数传递给后端
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


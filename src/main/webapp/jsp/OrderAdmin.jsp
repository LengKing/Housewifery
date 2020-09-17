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
    .p_div{
        margin: 20px auto;
        width: 80px;
        height: 50px;
        line-height: 50px;
        font-size: 12px;
        border: solid 1px #ddd;
        background-color: #F1F1F1;
        float: left;
        text-align: center;
        border-radius: 12px;
    }
    .p_i{
        margin:20px auto;
        width: 30px;
        height: 50px;
        line-height: 50px;
        float: left;
        text-align: center;
    }
    .t_div{
        margin: 0 auto;
        width: 110px;
        height: 30px;
        line-height: 30px;
        font-size: 6px;
        float: left;
    }
    label{
        font-size: 8px;
    }
</style>

<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-sm12 layui-col-md6" style="width: 100%;height: 30%">
            <div class="layui-card">
                <div class="layui-card-header">订单信息</div>
                <div class="layui-card-body"><input placeholder="请输入家政公司名" id="company"  style="width: 200px;height: 30px">
                    <button class="layui-btn" id="selOrder">
                    <i class="layui-icon">&#xe615;</i>订单搜索</button></div>
                <div class="layui-card-body" style="min-height: 400px;">
                    <div id="main4" class="layui-col-sm12" style="height: 400px;">
                        <table class="layui-table layui-form" id="order" lay-filter="order"></table>
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
            elem: '#order'
            , height: 400
            , url: '${pageContext.request.contextPath}/order/selOrder' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'id', title: '订单号', width: 80,align: 'center'}
                ,{field: 'employee', title: '家政人员姓名', width: 150,align: 'center'}
                ,{field: 'serviceName', title: '服务', width: 100,align: 'center'}
                ,{field: 'company', title: '所属公司', width: 150,align: 'center'}
                ,{field: 'orderTime', title: '订单时间', width: 200,align: 'center'}
                ,{field: 'orderState', title: '状态', width: 80,align: 'center'}
                ,{title: '操作', width: 250, align: 'center', toolbar: '#barDemo'}
            ]]
            , limit: 5
            , limits: [5, 6, 7]
        });
        table.on('tool(order)', function (obj) {
            id = obj.data.id;           //获得当前行数据
            var layEvent = obj.event;       //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'detail') {    //查看详情
                $("#id").text("");
                $("#userId").text("");
                $("#serviceName").text("");
                $("#count").text("");
                $("#orderTime").text("");
                $("#serviceDate").text("");
                $("#cost").text("");
                $("#employee").text("");
                $("#d_company").text("");
                $("#orderState").text("");
                $.ajax({
                    url: "${pageContext.request.contextPath}/order/findOrderById",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    success:function (data) {
                    var order=JSON.parse(data);
                    $("#id").text(order.id);
                    $("#userId").text(order.user);
                    $("#serviceName").text(order.serviceName);
                    $("#count").text(order.count);
                    $("#orderTime").text(order.orderTime);
                    $("#serviceDate").text(order.serviceDate);
                    $("#cost").text(order.cost+"元");
                    $("#employee").text(order.employee);
                    $("#d_company").text(order.company);
                    $("#orderState").text(order.orderState);
                    }
                });
                layer.open({
                    title:"订单详情",
                    type: 1,
                    area: 'auto',
                    content:$("#detail_div"),
                })
            } else if (layEvent === 'process') {   //查看流程图
                $("#one").css('background','#F1F1F1');
                $("#two").css('background','#F1F1F1');
                $("#three").css('background','#F1F1F1');
                $("#four").css('background','#F1F1F1');
                $("#five").css('background','#F1F1F1');
                $("#t_user").text("");
                $("#t_company").text("");
                $("#t_employee").text("");
                $.ajax({
                    url: "${pageContext.request.contextPath}/order/findOrderById",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    success:function (data) {
                    var order=JSON.parse(data);
                    $("#one").css('background','#8CD3EC');
                    $("#t_user").text("用户："+order.user)
                        if (order.payState=='已支付'){
                            $("#two").css('background','#8CD3EC');
                        }if (order.company!=null){
                            $("#three").css('background','#8CD3EC');
                            $("#t_company").text("家政公司："+order.company)
                        }if (order.employee!=null){
                            $("#four").css('background','#8CD3EC');
                            $("#t_employee").text("服务人员："+order.employee)
                        }if (order.orderState=='已处理'){
                            $("#five").css('background','#8CD3EC');
                        }
                    }
                });
                layer.open({
                    title:"订单流程",
                    type: 1,
                    area: ['600', '200'],
                    content:$("#process_div"),
                })
            }
        });


        $("#selOrder").on('click',function () {
            var company=$("#company").val();
            table.reload('order',{
                url: '${pageContext.request.contextPath}/order/selOrder'
                ,height: 400
                ,where:{"company":company}
                ,page:{
                    curr:1
                }
            })
        })

    });


</script>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-normal" type="button" lay-event="detail">查看详情</button>
    <button class="layui-btn layui-btn-normal" type="button" lay-event="process">查看流程</button>
</script>
</body>

<div id="detail_div" style="width: 350px;height: 400px;text-align: center;display: none">
    <table class="layui-table" lay-skin="line">
        <tr>
            <td>订单号</td>
            <td id="id"></td>
        </tr>
        <tr>
            <td>服务对象</td>
            <td id="userId"></td>
        </tr>
        <tr>
            <td>服务</td>
            <td id="serviceName"></td>
        </tr>
        <tr>
            <td>服务频次</td>
            <td id="count"></td>
        </tr>
        <tr>
            <td>下单时间</td>
            <td id="orderTime"></td>
        </tr>
        <tr>
            <td>服务时间</td>
            <td id="serviceDate"></td>
        </tr>
        <tr>
            <td>服务费用</td>
            <td id="cost"></td>
        </tr>
        <tr>
            <td>家政公司人员</td>
            <td id="employee"></td>
        </tr>
        <tr>
            <td>家政公司</td>
            <td id="d_company"></td>
        </tr>
        <tr>
            <td>服务状态</td>
            <td id="orderState"></td>
        </tr>
    </table>
</div>

<div id="process_div" style="width: 600px;height: 100px;text-align: center;display: none">
    <div class="p_div" style="margin-left: 20px" id="one">
        用户下单
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="two">
        付款
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="three">
        接单
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="four">
        服务中
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="five">
        服务结束
    </div><br>

    <div class="t_div">
        <label id="t_user"></label>
    </div>
    <div class="t_div" style="width: 90px">
        <label id="t_pay"></label>
    </div>
    <div class="t_div" style="width: 150px">
        <label id="t_company"></label>
    </div>
    <div class="t_div">
        <label id="t_employee"></label>
    </div>
</div>

</html>

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
    <title>售后追踪</title>
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
                <div class="layui-card-header">售后追踪</div>
                <div class="layui-card-body"><input placeholder="请输入家政公司名" id="scompany"  style="width: 200px;height: 30px">
                    <button class="layui-btn" id="selAfter">
                    <i class="layui-icon">&#xe615;</i></button></div>
                <div class="layui-card-body" style="min-height: 400px;">
                    <div id="main4" class="layui-col-sm12" style="height: 400px;">
                        <table class="layui-table layui-form" id="after" lay-filter="after"></table>
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
            elem: '#after'
            , height: 400
            , url: '${pageContext.request.contextPath}/afterSales/selAfter' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'orderId', title: '订单号', width: 80,align: 'center'}
                ,{field: 'time', title: '售后申请时间', width: 200,align: 'center'}
                ,{field: 'afterWhy', title: '售后原因', width: 100,align: 'center'}
                ,{field: 'company', title: '所属公司', width: 150,align: 'center'}
                ,{field: 'employee', title: '家政人员姓名', width: 150,align: 'center'}
                ,{field: 'stateName', title: '售后状态', width: 80,align: 'center'}
                ,{title: '操作', width: 250, align: 'center', toolbar: '#barDemo'}
            ]]
            , limit: 5
            , limits: [5, 6, 7]
        });
        table.on('tool(after)', function (obj) {
            id = obj.data.orderId;                //获得当前行数据
            var layEvent = obj.event;        //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
           if (layEvent === 'process') {     //查看流程图
                $("#one").css('background','#F1F1F1');
                $("#two").css('background','#F1F1F1');
                $("#three").css('background','#F1F1F1');
                $("#four").css('background','#F1F1F1');
                $("#five").css('background','#F1F1F1');
                $("#user").text("");
                $("#afterWhy").text("");
                $("#company").text("");
                $("#employee").text("");
                $.ajax({
                    url: "${pageContext.request.contextPath}/afterSales/findAfterById",
                    type: "Post",
                    data: {"id":id},
                    dataType: "text",
                    success:function (data) {
                    var after=JSON.parse(data);
                    $("#one").css('background','#8CD3EC');
                    $("#user").text("用户："+after.user)
                        if (after.state>=0){
                            $("#two").css('background','#8CD3EC');
                            $("#afterWhy").text("原因："+after.afterWhy)
                        }if (after.state>=1){
                            $("#three").css('background','#8CD3EC');
                            $("#company").text("家政公司："+after.company)
                        }if (after.state==4){
                            $("#four").css('background','#8CD3EC');
                            $("#employee").text("服务人员："+after.employee)
                        }if (after.state==3){
                            $("#five").css('background','#8CD3EC');
                        }
                    }
                });
                layer.open({
                    title:"售后流程",
                    type: 1,
                    area: ['600', '200'],
                    content:$("#process_div"),
                })
            }
        });


        $("#selAfter").on('click',function () {
            var company=$("#scompany").val();
            table.reload('after',{
                url: '${pageContext.request.contextPath}/afterSales/selAfter'
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
    <button class="layui-btn layui-btn-normal" type="button" lay-event="process">查看售后流程</button>
</script>
</body>

<div id="process_div" style="width: 600px;height: 100px;text-align: center;display: none">
    <div class="p_div" style="margin-left: 20px" id="one">
        用户申请
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="two">
        申请中
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="three">
        待处理
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="four">
        处理中
    </div>

    <i class="p_i layui-icon">&#xe65b;</i>

    <div class="p_div" id="five">
        已完成
    </div><br>

    <div class="t_div">
        <label id="user"></label>
    </div>
    <div class="t_div" style="width: 90px">
        <label id="afterWhy"></label>
    </div>
    <div class="t_div" style="width: 150px">
        <label id="company"></label>
    </div>
    <div class="t_div">
        <label id="employee"></label>
    </div>
</div>

</html>

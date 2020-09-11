<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/js/TableTest.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
<form class="layui-form" lay-filter="component-form-group" id="search_submits" onsubmit="return false" style="margin-top: 15px">
    <div class="layui-form layui-card-header layuiadmin-card-header-auto" lay-filter="layadmin-useradmin-formlist">

        <div class="layui-inline">
            <label class="layui-form-label" name="account">姓名：</label>
            <div class="layui-input-block">
                <input type="text" name="trueName" id="trueName" placeholder="请输入姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">账号：</label>
            <div class="layui-input-block">
                <input type="text" name="adminName" id="adminName" placeholder="请输入账号" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <button class="layui-btn" lay-submit="search_submits" lay-filter="search"  onclick="query(this)">查询</button>
        </div>
    </div>
</form>
<table class="layui-hide" id="test" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" onclick="deleteAdmin(this)">删除</a>
</script>


<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>

    layui.use(['form','table','jquery'], function(){
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;
        var tableinf = table.render({
            elem: '#test'
            ,url:'/demo2.0/adminServlet?methodName=AdmainQuery'
            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                ,layEvent: 'LAYTABLE_TIPS'
                ,icon: 'layui-icon-tips'
            }]
            ,title: '用户消费明细表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
                ,{field:'orderNumber', title:'订单号', width:120, edit: 'text'}
                ,{field:'server', title:'服务', width:120, edit: 'text'}
                ,{field:' serverClassification', title:'服务分类', width:80, edit: 'text', sort: true}
                ,{field:' consumpTime', title:'消费时间', width:80, edit: 'text', sort: true}
                ,{field:' storeName', title:'商家名称', width:80, edit: 'text', sort: true}
                ,{field:' consumpMoney', title:'消费金额', width:80, edit: 'text', sort: true}


                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
            ]]
            ,page: true
        });

        table.render({
            cols: 0  [[ //标题栏
                {checkbox: true}
                ,{field: 'account', title: '用户名', width: 80}
                ,{field: 'password', title: '密码', width: 120}
            ]]
        });

        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;

                //自定义头工具栏右侧图标 - 提示
                case 'LAYTABLE_TIPS':
                    layer.alert('这是工具栏右侧自定义的一个图标按钮');
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.prompt({
                    formType: 2
                    ,value: data.email
                }, function(value, index){
                    obj.update({
                        email: value
                    });
                    layer.close(index);
                });
            }
        });

        form.on('submit(search)',function (data) {

            var adminName = $("#adminName").val();
            var trueName = $("#trueName").val();


            tableinf.reload({
                url:'/demo040111/UserServlet',
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where:{
                    adminName:adminName, trueName:trueName
                }
            });

        });
    });
</script>

</body>
</html>
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

    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>

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
            <button class="layui-btn" lay-submit="search_submits" lay-filter="search"  >查询</button>
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
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" >删除</a>
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
            ,url:'${pageContext.request.contextPath}/Evaluation/evaluation'
            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                ,layEvent: 'LAYTABLE_TIPS'
                ,icon: 'layui-icon-tips'
            }]
            ,title: '用户订单表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'employee', title:'保姆名字', width:130, fixed: 'left', unresize: true, sort: true }
                ,{field:'company', title:'所属公司', width:120, edit: 'text'}
                ,{field:'orderTime', title:'订单时间', width:160, edit: 'text', sort: true}
                ,{field:'cost', title:'费用', width:150, edit: 'text', sort: true}
                ,{field:'orderState', title:'状态', width:160, edit: 'text', sort: true}
                ,{title: '操作', width: 250, align: 'center', toolbar: '#barDemo'}
            ]]
            , limit: 5
            , limits: [5, 6, 7]
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
                url:'${pageContext.request.contextPath}/Evaluation/evaluation',
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
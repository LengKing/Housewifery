<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2020/8/14
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>家政公司后台管理</title>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/1.9.1jquery.min.js"></script>
    <%--    <script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>--%>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/theme3335.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/xadmin.css">


    <script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>


    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        // 是否开启刷新记忆tab功能
        // var is_remember = false;
    </script>
    <link id="layuicss-layer" rel="stylesheet" href="http://x.xuebingsi.com/x-admin/v2.2/lib/layui/css/modules/layer/default/layer.css?v=3.1.1" media="all">
</head>
<body class="index">
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <a href="${pageContext.request.contextPath}/admin/X-admin/index.html">家政公司端</a></div>
    <div class="left_open">
        <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
    </div>
    <ul class="layui-nav left fast-add" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">退出</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="xadmin.open('最大化','http://localhost:8080/demo2.0/jsp/Tables.jsp','','',true)">
                        <i class="iconfont">&#xe6a2;</i>退出系统</a></dd>
                <dd>
                    <a onclick="xadmin.open('弹出自动宽高','http://www.baidu.com')">
                        <i class="iconfont">&#xe6a8;</i>管理员信息修改</a></dd>
                <dd>
                    <a onclick="xadmin.open('弹出指定宽高','http://www.baidu.com',500,300)">
                        <i class="iconfont">&#xe6a8;</i>弹出指定宽高</a></dd>
                <dd>
                    <a onclick="xadmin.add_tab('在tab打开','member-list.html')">
                        <i class="iconfont">&#xe6b8;</i>在tab打开</a></dd>
                <dd>
                    <a onclick="xadmin.add_tab('在tab打开刷新','member-del.html',true)">
                        <i class="iconfont">&#xe6b8;</i>在tab打开刷新</a></dd>
            </dl>
        </li>
    </ul>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">欢迎！小白</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="xadmin.open('个人信息','http://www.baidu.com')">个人信息</a></dd>
                <dd>
                    <a onclick="xadmin.open('切换帐号','http://localhost:8080/demo2.0/jsp/Login.jsp')">切换帐号</a></dd>
                <dd>
                    <a href="http://localhost:8080/demo401/jsp/Login.jsp">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index">
            <a href="">前台首页</a></li>
    </ul>
</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="我的账户">&#xe6b8;</i>
                    <cite>服务管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('账户管理','http://localhost:8080/jsp/OrderAdmin.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>服务类别</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('账户管理','http://localhost:8080/jsp/OrderAdmin.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>服务</cite></a>
                    </li>


                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="基本信息">&#xe723;</i>
                    <cite>公告管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('会员列表','http://localhost:8080/demo2.0/jsps/UserSelect.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>平台公告</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="我的评价">&#xe723;</i>
                    <cite>订单管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>抢单</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>全部订单</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>待处理订单</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>已处理订单</cite></a>
                    </li>
                    <li>

                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>统计</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="城市联动">&#xe723;</i>
                    <cite>家政人员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('三级地区联动','http://localhost:8080/demo2.0/jsps/Levelchaxun.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>人员信息：</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>人员配置</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>人员培训</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>人员评价</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>人员排班</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="管理员管理">&#xe726;</i>
                    <cite>家政中心</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('管理员列表','admin-list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>基本信息</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('角色管理','admin-role.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>资料库</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('权限分类','admin-cate.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>账户</cite></a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="我的足迹">&#xe6ce;</i>
                    <cite>评价反馈</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('拆线图','echarts1.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>评价</cite></a>
                    </li>

                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="其它页面">&#xe6b4;</i>
                    <cite>售后追踪</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('多级分类','http://localhost:8080/jsp/EvaluationTb.jsp')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>申请审核</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('错误页面','error.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>安排售后</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="第三方组件">&#xe6b4;</i>
                    <cite>智能客服</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('滑块验证','https://fly.layui.com/extend/sliderVerify/')" target="">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>客户咨询</cite></a>
                    </li>

                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home">
                <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">关闭当前</dd>
                <dd data-type="other">关闭其它</dd>
                <dd data-type="all">关闭全部</dd></dl>
        </div>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='./welcome.html' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
        <div id="tab_show"></div>
    </div>
</div>
<div class="page-content-bg"></div>
<style id="theme_style"></style>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<script>//百度统计可去掉
var _hmt = _hmt || []; (function() {
    var hm = documentMapper.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = documentMapper.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
<script>
    layui.use(['jquery','layer'], function(){
        var $ = layui.jquery;
        var welcome =  $('.layui-show .x-iframe').contents();
        welcome.find('#welcome_style').html('body.index{background:rgba(250, 212, 0, 1) !important;}.container{background: linear-gradient(to left,rgba(255, 69, 0,  0.68), rgba(250, 212, 0, 1)) !important;}.container .layui-nav-bar{background:rgb(95, 184, 120) !important;}.container .logo a{background:rgba(250, 212, 0, 1) !important;}.container .logo a{color:rgba(0, 0, 0,  0.5) !important;}.left-nav{background:rgba(250, 212, 0, 1) !important;}.left-nav a{color:rgba(57, 61, 73, 1) !important;}.left-nav a:hover,.left-nav a.active{background: linear-gradient(to left,rgba(204, 0, 0, 1), rgba(250, 212, 0, 1)) !important;}.left-nav a:hover,.left-nav a.active{color:rgba(204, 0, 0, 1) !important;}.left-nav a:hover,.left-nav a.active{border-color:rgba(204, 0, 0, 1) !important;}body{background:rgba(240, 234, 158, 1) !important;}');
    });
</script>
<script>

    var _hmt = _hmt || [];
    (function() {
        var hm = documentMapper.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = documentMapper.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>

</html>

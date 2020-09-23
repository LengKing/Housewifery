<%--
  Created by IntelliJ IDEA.
  User: 22127
  Date: 2020/7/30
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>家政公司平台管理端</title>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/static/js/1.9.1jquery.min.js"></script>
<%--    <script src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>--%>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
      content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
<meta http-equiv="Cache-Control" content="no-siteapp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/font.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/theme3335.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/xadmin.css">
<link id="layuicss-layer" rel="stylesheet"
      href="http://x.xuebingsi.com/x-admin/v2.2/lib/layui/css/modules/layer/default/layer.css?v=3.1.1" media="all">
<script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>


<style>
    .logos{
        color: whitesmoke;
    }
</style>
</head>
<body class="index">
<input type="hidden" id="path" value="${pageContext.request.contextPath}">
<div class="layui-layout layui-layout-admin">
    <div class="layui-icon-light">
        <div class="logos">
            <h1>家政公司平台管理端</h1>

        <ul class="layui-nav layui-layout-left">

        </ul>
        <div class="left_open">
            <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
        </div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">


                    <span>欢迎:  ${admin.account}</span><br>
                    <span>角色： ${admin.jobs}</span>
                </a>
            </li>
            <li class="layui-nav-item"><a id="exit" onclick="exit()" href="${pageContext.request.contextPath}/jsp/CompanyView.jsp.jsp">退出</a></li>
        </ul>
    </div>

    <div class="layui-header ">

        <div class="layui-header">
            <div id="asides">
                <c:if test="${not empty menuMap}">
                    <c:forEach items="${menuMap}" var="map">
                        <h2>${map.key}</h2>
                        <ul>
                            <c:forEach items="${map.value}" var="menu">
                                <li title="${menu.url}" onclick="changePath(this)">${menu.name}</li>
                            </c:forEach>
                        </ul>
                    </c:forEach>
                </c:if>
            </div>

        </div>


    </div>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="text-align: center">
            <iframe id="iframe" width="100%" height="99%" src="">

            </iframe>


        </div>

    </div>

    <div class="layui-footer">

<%--        <div id="mian">免责声明！最终解释权归懂事会主席叶万年先生所有！</div>--%>
    </div>
</div>
</body>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });


    function changePath(node) {
        alert(node.title);
        var path= $("#path").val();
        $("#iframe").attr("src",node.title);
        console.log($("#iframe"));
    }
</script>


</html>


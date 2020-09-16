<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/1
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>权限管理</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/RightsAdm.js"></script>
</head>
<script>
    $(function () {
        $.post("${pageContext.request.contextPath}/params/findJobs",{},function(data){
            $(data).each(function(i,n){
                $("#ri_jobs").append("<li style='margin-left: 10px' title='" +n+"' onclick='findMenu(this)'>" +n+ "</li>");
            });
        },"json");
    })
</script>
<style>
    div{
        margin-top: 20px;
        border: 1px solid black;
        float: left;
    }
    h4{
        border: none;
        font-size: 20px;
    }
    h3{
        margin: 0 50px;
    }
    li{
        list-style-type: none;
        text-align: left;
        font-size: 18px;
        color: black;
        font-family: 华文楷体;
        margin-top: 2px;
        margin-left: 0px;
        text-align: left;
    }
    button{
        background-color: #FEA90C;
        border: 1px solid black;
        border-radius: 4px;
        margin:30px 25px;
        font-size: 20px;
        width: 50px;
        height: 25px;
    }
    button:hover{
        background-color: #89CBBE;
    }
</style>
<body>
<div>
    <%
        String path=request.getContextPath();
    %>
</div>
<input type="hidden" id="path" value=<%=path%>>
<h3>权限管理</h3>
<hr class="lo_hr">
<div style="width: 180px;height: 500px;margin-left: 10%">
<ul id="ri_jobs"><h4>角色</h4></ul>
</div>

<div style="width: 250px;height: 500px;overflow: scroll" id="have_div" >
<ul id="rh_have"><h4>已分配菜单</h4></ul>
</div>

<div style="width: 100px;height: 500px">
    <button type="button" id="right_one">></button>
    <button type="button" id="right_all">>></button>
    <button type="button" id="left_one"><</button>
    <button type="button" id="left_all"><<</button>
</div>

<div style="width: 250px;height: 500px;overflow: scroll" id="none_div">
<%--    <h4>未分配菜单</h4>--%>
    <ul id="rh_none"><h4>未分配菜单</h4></ul>
</div>
</body>
</html>

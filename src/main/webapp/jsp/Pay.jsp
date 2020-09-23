<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/22
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="../static/js/jquery-3.5.1.js" charset="UTF-8"></script>
</head>
<%--<body text=#000000 bgColor="#ffffff" leftMargin=0 topMargin=4>--%>
<%--<header class="am-header">--%>
<%--    <h1>支付宝电脑网站支付体验入口页</h1>--%>
<%--</header>--%>
<body>
<div id="main">
    <form style="text-align: center" action="${pageContext.request.contextPath}/adminPay/pay">
        商品订单号：
        <input id="WIDTCout_trade_no" name="WIDTCout_trade_no"/>
        <br/>
        商品订单名称：
        <input id="WIDsubject" name="WIDsubject"/>
        <br/>
        付款金额：
        <input id="WIDtotal_amount" name="WIDtotal_amount"/>
        <br/>
        商品描述：
        <input id="WIDbody" name="WIDbody"/>
        <br/>
        <button class="new-btn-login" type="submit" style="text-align:center;">确 认</button>

        <span class="note-help">如果您点击“确认”按钮，即表示您同意该次的执行操作。</span>
    </form>
</div>
</body>

<script>
    $(function () {
        GetDateNow();
    })

    function GetDateNow() {
        var vNow = new Date();
        var sNow = "";
        sNow += String(vNow.getFullYear());
        sNow += String(vNow.getMonth() + 1);
        sNow += String(vNow.getDate());
        sNow += String(vNow.getHours());
        sNow += String(vNow.getMinutes());
        sNow += String(vNow.getSeconds());
        sNow += String(vNow.getMilliseconds());
        $('#WIDTCout_trade_no').val(sNow)
        $('#WIDsubject').val("家政服务保姆");
        $('#WIDtotal_amount').val("100");
        $('#WIDbody').val("居家保姆");
    }
</script>
</html>

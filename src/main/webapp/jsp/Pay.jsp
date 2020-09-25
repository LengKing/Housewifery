<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/23
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>下单界面</title>

    <link rel="stylesheet" type="text/css" href="/static/css/amazeui.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/main.css" />
    <script src="../static/layui/layui.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
</head>
<body>
<div class="pay">
    <!--主内容开始编辑-->
    <div class="tr_recharge">
        <div class="tr_rechtext">
            <p class="te_retit"><img src="/static/images/coin.png" alt="" />付款中心</p>

        </div>
        <form action="${pageContext.request.contextPath}/adminPay/pay" class="am-form" id="doc-vld-msg">
            <div class="tr_rechbox">
                <div class="tr_rechhead">
                    <img src="/static/images/ys_head2.jpg" />
                    <p>收款账号：
                        <a>bvfwhf1995@sandbox.com</a>
                    </p>
                                        <div class="tr_rechheadcion">
                                            <img src="/static/images/coin.png" alt="" />
                                            <span>商户收款：<span>2020</span></span>
                                        </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品订单号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="WIDTCout_trade_no" lay-verify="required" id="WIDTCout_trade_no" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">商品订单名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="WIDsubject" lay-verify="required" id="WIDsubject" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">付款金额</label>
                    <div class="layui-input-inline">
                        <input type="text" name="WIDtotal_amount" lay-verify="required" id="WIDtotal_amount" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">商品描述</label>
                    <div class="layui-input-inline">
                        <input type="text" name="WIDbody" lay-verify="required" id="WIDbody" autocomplete="off" class="layui-input">
                    </div>
                </div>

            </div>
            <div class="tr_paybox">
                <input type="submit" value="确认支付" class="tr_pay am-btn" />
                <span>温馨提示：如果您点击“确认”按钮，即表示您同意该次的执行操作。</span>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/amazeui.min.js"></script>
<script type="text/javascript" src="/static/js/ui-choose.js"></script>

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
</body>
</html>
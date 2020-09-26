<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../static/css/font.css">
    <link rel="stylesheet" href="../static/css/xadmin.css">
    <link rel="stylesheet" href="../static/layui/my-icon/iconfont.css" type="text/css">
    <script src="../static/js/jquery.min.js" charset="utf-8"></script>
    <script src="../static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../static/js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-sm12 layui-col-md6" style="width: 100%;">
            <div class="layui-card">
                <div class="layui-card-header">账户信息</div>
                <div class="layui-card-body" style="min-height: 280px;text-align: center;">
                    <div id="main4" class="layui-col-sm12" style="height: 290px;">
                        <form class="layui-form" action="" lay-filter="example" style="width: 25%;margin: auto">

                            <div class="layui-form-item">
                                <label for="account" class="layui-form-label">账户类型：</label>
                                <div class="layui-input-inline">
                                    <input id="account" type="text" name="account" disabled placeholder="个人账户"
                                           autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">账户余额：</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="money" name="money" disabled autocomplete="off"
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">绑定账号：</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="bind-account" disabled name="bind-account"
                                           lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">
                                    <a onclick="set()"
                                       style="text-decoration: none;color: #1E9FFF;cursor: pointer">设置</a>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="my-icon icon-yinhangqia"
                                                                   style="font-size: 30px;"></i></label>
                                <div class="layui-input-block" style="text-align: left">
                                    <button type="button" class="layui-btn" id="top-up">充值</button>
                                    <button type="button" class="layui-btn" id="transfer">转账</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-sm12 layui-col-md6" style="width: 100%;">
            <div class="layui-card">
                <div class="layui-card-header">消费明细</div>
                <div class="layui-card-body" style="min-height: 280px;">
                    <div id="main5" class="layui-col-sm12" style="height: 290px;">
                        <table class="layui-table layui-form" id="records" lay-filter="records"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(function () {
    //    var account = parent.document.getElementById('account').value;
        $.ajax({
            url: '/user/userAccountMsg',
            data: "account=" + "${user1.account}",
            type: 'post',
            dataType: 'json',
            success: function (data) {
                if (data != null) {
                    $("#money").val(data.money + "元");
                    $("#bind-account").val(data.bankCard);
                }
            },
            error: function () {

            }
        });

        layui.use('table', function () {
            var table = layui.table;
            table.render({
                elem: '#records'
                , height: 250
                , url: '/user/userRecords?account='+"${user1.account}"//数据接口
                , page: true //开启分页
                , cols: [[ //表头
                    {title: '序号', width: 50,align: 'center',type:'numbers'}
                    , {field: 'orderNumber', title: '订单号', width: 150,align: 'center'}
                    , {field: 'server', title: '服务', width: 100,align: 'center',templet:function(res){
                            if(res.server==null){
                                return  '-';
                            }else return res.server;
                        }}
                    , {field: 'serverClassification', title: '服务分类', width: 100,align: 'center',templet:function(res){
                            if(res.serverClassification==null){
                                return  '-';
                            }else return res.serverClassification;
                        }}
                    , {field: 'consumpTime', title: '消费时间', width: 150,align: 'center'}
                    , {field: 'consumpTing', title: '消费事件', width: 100,align: 'center'}
                    , {field: 'storeName', title: '商家名称', width: 100,align: 'center',templet:function(res){
                            if(res.storeName==null){
                                return  '-';
                            }else return res.storeName;
                        }}
                    , {field: 'consumpMoney', title: '消费金额', width: 100,align: 'center'}
                ]]
                , limit: 4
                , limits: [4, 5, 6]
            });
        });
    })

    function set() {
    //    var companyId = parent.document.getElementById('id').value;
        layer.prompt({
            title: '设置账户',
            btn: ['确认', '取消'],
            value: '',
            placeholder: '请输入银行卡号',
            formType: 0
        }, function (value, index) {
            var regYhk = /([\d]{4})([\d]{4})([\d]{4})([\d]{4})([\d]{0,})?/;
            if (regYhk.test(value)) {
                $.ajax({
                    url: '/user/setBankCard',
                    data: "account=" + "${user1.account}" + "&bankCard=" + value,
                    type: 'post',
                    dataType: 'text',
                    success: function (data) {
                        if (data == "success") {
                            layer.msg("设置成功");
                            location.reload();
                            layer.close(index);
                        } else {
                            layer.msg("设置失败，请重试");
                        }
                    },
                    error: function () {
                        layer.msg("网络发生了一点小问题..请稍后再试");
                    }
                });
            } else {
                layer.msg("请输入正确的银行卡号");
            }
        })
    }

    $('#transfer').on('click', function () {
      //  var companyId = parent.document.getElementById('id').value;
        layer.prompt({
            title: '转账',
            btn: ['确认', '取消'],
            value: '',
            placeholder: '转账至...',
            formType: 0
        }, function (account, index) {
            var regYhk = /([\d]{4})([\d]{4})([\d]{4})([\d]{4})([\d]{0,})?/;
            if (regYhk.test(account)) {
                layer.prompt({
                    title: '转账',
                    btn: ['确认', '取消'],
                    value: '',
                    placeholder: '请输入转账金额',
                    formType: 0
                }, function (value, index2) {
                    var regMoney = /^[0-9]*$/;
                    var regZero = /^[0]*$/;
                    var money = value.replace(/\b(0+)/gi, "");
                    if (regMoney.test(value)) {
                        if (!regZero.test(value)) {
                            layer.confirm("转账账户：" + account + "\n,转账金额：" + money + "\n,是否确认转账？", function (index3) {
                                $.ajax({
                                    url: '/user/transfer',
                                    data: "account=" + 100001 + "&money=" + money,
                                    type: 'post',
                                    dataType: 'text',
                                    success: function (data) {
                                        if (data == "success") {
                                            layer.msg("转账成功");
                                            var i = 1;
                                            var interval = setInterval(function () {
                                                i--;
                                                if (i === 0) {
                                                    location.reload();
                                                    clearInterval(interval);
                                                }
                                            }, 1000);
                                            layer.close(index3);
                                        } else {
                                            layer.msg(data);
                                        }
                                    },
                                    error: function () {
                                        layer.msg("网络发生了一点小问题..请稍后再试");
                                    }
                                });
                            });
                            layer.close(index);
                            layer.close(index2);
                        } else {
                            layer.msg("转账额度不能为0");
                        }
                    } else {
                        layer.msg("金额仅支持输入正整数");
                    }
                })
            } else {
                layer.msg("请输入正确的银行卡号");
            }
        });

    })

    $('#top-up').on('click', function () {
        //var companyId = parent.document.getElementById('id').value;
        layer.prompt({
            title: '账户充值',
            btn: ['确认', '取消'],
            value: '',
            placeholder: '请输入充值金额',
            formType: 0
        }, function (value, index) {
            var regMoney = /^[0-9]*$/;
            var regZero = /^[0]*$/;
            var money = value.replace(/\b(0+)/gi, "");
            if (regMoney.test(value)) {
                if (!regZero.test(value)) {
                    layer.prompt({
                        title: '账户充值',
                        btn: ['确认', '取消'],
                        value: '',
                        placeholder: '银行卡：',
                        formType: 0
                    }, function (account, index2) {
                        var regYhk = /([\d]{4})([\d]{4})([\d]{4})([\d]{4})([\d]{0,})?/;
                        var account1 = $("#bind-account").val();
                        if (regYhk.test(account)) {
                            layer.confirm("银行卡：" + account + "\n,充值账户：" + account1 + "\n,充值金额："+money+"\n,是否确认充值？", function (index3) {
                                $.ajax({
                                    url: '/user/topUp',
                                    data: "account=" + "${user1.account}" + "&money=" + money,
                                    type: 'post',
                                    dataType: 'text',
                                    success: function (data) {
                                        if (data == "success") {
                                            layer.msg("充值成功");
                                            var i = 1;
                                            var interval = setInterval(function () {
                                                i--;
                                                if (i === 0) {
                                                    location.reload();
                                                    clearInterval(interval);
                                                }
                                            }, 1000);
                                            layer.close(index3);
                                        } else {
                                            layer.msg("充值失败");
                                        }
                                    },
                                    error: function () {
                                        layer.msg("网络发生了一点小问题..请稍后再试");
                                    }
                                });
                            });
                            layer.close(index);
                            layer.close(index2);
                        } else {
                            layer.msg("请输入正确的银行卡号");
                        }
                    });
                } else {
                    layer.msg("充值额度不能为0");
                }
            } else {
                layer.msg("金额仅支持输入正整数");
            }
        })


    })
</script>
</html>

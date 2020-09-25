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
                <div class="layui-card-header">基本信息</div>
                <div class="layui-card-body" style="min-height: 450px;text-align: center;">
                    <div id="main4" class="layui-col-sm12" style="height: 450px;">
                        <form class="layui-form" action="" lay-filter="example" style="width: 25%;margin: auto">

                            <div class="layui-form-item">
                                <label class="layui-form-label">我的头像：</label>
                                <div class="layui-input-inline" style="text-align: left">
                                    <img class="layui-upload-img" id="head" style="width: 50px;height: 50px;margin-right: 20px">
                                    <button type="button" class="layui-btn" id="uploadHead">上传头像</button>
                                    <p id="text"></p>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">账户名：</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="account" name="account" autocomplete="off" lay-verify="required"
                                           class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">手机号码：</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="phone" name="phone"
                                           lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">性别：</label>
                                <div class="layui-form layui-input-inline layui-show-xs-block">
                                    <input type="radio" name="gender" id="man" value="男" title="男"/>
                                    <input type="radio" name="gender" id="woman" value="女" title="女"/>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">地址：</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="address" name="address"
                                           lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <button type="submit" class="layui-btn" lay-submit="" lay-filter="save" id="save">保存</button>
                            </div>
                        </form>
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
        layui.use('form',function () {
            var form = layui.form;
            $.ajax({
                url: '/user/userAccountMsg',
                data: "account=" + 100001,
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    if (data != null) {
                        $('#head').attr('src', data.url);
                        $("#account").val(data.account);
                        $("#phone").val(data.phone);
                        $("#address").val(data.address);
                        $("input[name='gender'][value='"+data.gender+"']").attr("checked", true);
                        form.render();
                    }
                },
                error: function () {

                }
            });
            //监听提交
            form.on('submit(save)', function(data){
                $.ajax({
                    url:"/user/updateUserMsg",
                    data:data.field,
                    type:"post",
                    dataType:"text",
                    success:function (data) {
                        layer.msg(data);
                        if (data=='保存成功'){
                            var i = 1;
                            var interval = setInterval(function () {
                                i--;
                                if (i === 0) {
                                    var index = parent.layer.getFrameIndex(window.name); //获取当前窗口的name
                                    parent.layer.close(index);		//关闭窗口
                                    clearInterval(interval);
                                }
                            }, 1000);
                        }
                    },
                    error:function () {
                        layer.msg("发生了一点小问题..请稍后再试");
                    }
                })
                return false;
            });

        })

    })


</script>
</html>

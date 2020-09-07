//弹窗表单
function formShow(){
    $('.commonForm-pop').fadeIn();
}
function formHide(){
    $('.commonForm-pop').fadeOut();
}
function CommonSendLeaveword(src){
    var userName = $('#userName').val();
    var userPhone = $('#userPhone').val();
    var userTxts = $('#userTxts').val();
    var err = "";
    if (userName == "") {
        err += "<p>请输入您的姓名</p>";
    }
    if (userPhone == "") {
        err += "<p>请输入您的电话</p>";
    }
    else if (userPhone.length > 0 && !PTN_Tel.test(userPhone)) {
        err += "<p>您的电话格式错误</p>";
    }
    if (err.length > 0) {
        $a(err);
        return;
    }
    showProc(src);
    $.post("/SiteServer/Sdw/Ajax/ajax.ashx?action=sendLeaveword_Index&t=" + Math.random(), {
        Title: "在线留言",//标题
        Comp: "",//公司名称
        Tel: "",
        Contact: userName,//用户名称
        Mobile: userPhone,//电话
        Email: "",
        ShortDesc: userTxts,
        FormId: "60",//表单编号
        AttributeValues: "姓名=" + userName + "&电话=" + userPhone + "&IP地址={0}&留言内容=" + userTxts + "" //字段中文名称以英文&分割

    }, function (msg) {
        var sta = gav(msg, "state");
        var sMsg = gav(msg, "msg");
        if (sta == "1") {
            $a(sMsg, 1);
            emptyText('QK');
            $j("userName").val("");
            $j("userPhone").val("");
            $j("userTxts").val("");

        } else {

            if (sMsg == "") {
                sMsg = "提交失败，请稍后再试，勿频繁提交！";
            }
            else {
                emptyText('QK');
                $j("userName").val("");
                $j("userPhone").val("");
                $j("userTxts").val("");
            }
            $a(sMsg);
        }
        showProc(src, false);
    });
}
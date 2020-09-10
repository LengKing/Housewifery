layui.use('layer', function () {
    var layer = layui.layer;
});

function guanbi() {
    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
    parent.layer.close(index); //再执行关闭
}

function postDemand(node) {
    var path = $("#path").val();
    var userId = $("#userId").val();//用户账号
    var address = $("#address").val();//详细地址
    var classService = $("#classService").val();//服务类别
    var serviceCount = $("#serviceCount").val();//服务频次
    var title = $("#title").val();//标题
    var described = $("#described").val();//要求描述
    var phone = $("#phone").val()//电话


    if (address == "" || address == null) {
        alert("详细地址不能为空！")
    } else if (classService == "" || classService == null) {
        alert("服务类别不能为空")
    } else if (serviceCount == "" || serviceCount == null) {
        alert("服务频次不能为空！")
    } else if (title == "" || title == null) {
        alert("标题不能为空")
    } else if (described == "" || described == null) {
        alert("要求描述不能为空！")
    } else if (phone == "" || phone == null) {
        alert("联系方式不能为空！")
    } else {
        $.ajax({
            // +  "&userId=" + userId
            data: "address=" + address +"&classService=" + classService + "&serviceCount=" + serviceCount + "&title=" + title+ "&described=" + described+ "&phone=" + phone,
            url: path + "/postDemand/demand",
            dataType: "text",
            type: "Post",
            success: function (data) {
                if(data == 'true'){
                    alert("发布需求成功！");
                }else {
                    alert("发布需求失败！")
                }
            },
            end: function () {

            }
        })
    }

}
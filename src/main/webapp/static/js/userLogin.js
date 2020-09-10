function jqAjax(node) {//登录的ajax
    var account = $("#account").val();
    var password = $("#password").val();
    console.log(account+":"+password);
    // var vCode = $("#code").val();
    var  admin = {"account":account,"password":password};
    var path = $("#path").val();
    $.ajax({
        url:path+"/user/login",
        type:"post",
        data:admin,
        dataType:"text",
        success:function (data) {
            alert(data);
            if (data == "success"){
                location.href=path+"/jsp/Table.jsp";
            }
            else {
                changeImg();
            }
        },

    })
}


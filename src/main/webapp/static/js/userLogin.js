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

//注册的ajax

function  addUser() {
    var account = $("#account").val();
    var password = $("#password").val();
    var phone = $("#phone").val();
    var address = $("#address").val();
    var gender = $("#gender").val();

    var jobs = $("#jobs").val();
    var email = $("#email").val();


    console.log(account+":"+password+"："+name);
    var  user = {"account":account,"password":password,"phone":phone,"address":address,"gender":gender};
    var path = $("#path").val();
    $.ajax({
        url: path+"/user/userAdd",
        type:"post",
        data:user,
        dataType:"text",

        success:function (data) {
            // alert("注册成功1！");
            alert(data);
            if (data == "success"){
                alert("注册成功")
                location.href="http://localhost:8080/demo2.0/jsp/Table.jsp";

            }else {
                changeImg();

            }
        },


    })
}















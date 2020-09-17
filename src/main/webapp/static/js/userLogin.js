// function jqAjax() {//登录的ajax
//     var account = $("#account").val();
//     var password = $("#password").val();
//     console.log(account+":"+password);
//     // var vCode = $("#code").val();
//     var  admin = {"account":account,"password":password};
//     var path = $("#path").val();
//     $.ajax({
//         url:path+"/user/login",
//         type:"post",
//         data:admin,
//         dataType:"text",
//         success:function (data) {
//             alert("你好帅!")
//             alert(data);
//             if (data == "success"){
//                 location.href=path+"/jsp/Table.jsp";
//             }
//             else {
//                 changeImg();
//             }
//         },
//
//     })
// }
//登录按钮 跳转登录界面

//注册的ajax
function loginView() {
    location.href = path+"/jsp/User_login.jsp"

}

function  addUser() {
    var account = $("#account").val();
    var password = $("#password").val();
    var phone = $("#phone").val();
    var address = $("#address").val();
    var gender = $("#gender").val();



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
                location.href="http://localhost:8080/jsp/Personalcenter.jsp";

            }else {
                changeImg();

            }
        },


    })
}


//
function OrderQuery(node) {
    var serverName = $("#serverName").val();
    var type = $("#type").val();
    var orderTime = $("#orderTime").val();
    var company = $("#company").val();
    var cost = $("#cost").val();

    console.log(1)
    console.log(account+":"+password);
    // var vCode = $("#code").val();
    var  admin = {"serverName":serverName,"type":type,"orderTime":orderTime,"company":company,"cost":cost};
    var path = $("#path").val();
    $.ajax({
        //baseServlet  加methodName 加方法名

        url:path+"/Order/OrderSel",
        type:"post",
        data:admin,
        dataType:"text",
        success:function (data) {
            alert("哈喽！")
            alert(data);
            if (data == "查询"){
                location.href=path+"/testjsp/MoneyTb.jsp";
            }
            else {
                changeImg();
            }
        },

    })
}












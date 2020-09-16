$(function () {
    $("ul>h4").click(function (){
        $(this).nextAll("li").toggle("fast");
    })

    $(".che_have").click(function () {
        if ($(this).is(":checked")==true){
            $("#left_one").css("background","#89CBBE")
        }else{
            $("#left_one").css("background","#FEA90C")
        }
    })
    $(".che_none").click(function () {
        if ($(this).is(":checked")==true){
            $("#right_one").css("background","#89CBBE")
        }else{
            $("#right_one").css("background","#FEA90C")
        }
    })

    $("#right_one").click(function () {
        var menus=[];
        $("input[name='che_have']:checked").each(function (i) {
          menus.push($(this).parent().attr("title"));
        })
        var menusJson=JSON.stringify(menus);
        var path=$("#path").val();
        $.ajax({
            url:path+"/menu/delMenus",
            type:"Post",
            data:{"jobs":jobs,"menus":menusJson},
            dataType:"text",
            beforeSend:function(){
                if (menus.length==0){
                    alert("请选择菜单");
                    return false;
                }  else{
                    return confirm("确认删除"+jobs+"的菜单？")
                }
            },
            success:function (data) {
                if (data==1){
                    if (jobs=="平台管理员"){
                        alert("您已对管理员权限进行修改，请刷新页面或者重新登录后生效");
                    }else {
                        alert("删除成功");
                    }
                    $("input[name='che_have']:checked").each(function (i) {
                        $("#none_div ul").append($(this).parent());
                        $("#have_div").remove($(this).parent());
                        $(this).prop("checked",false);
                        $(this).prop("name","che_none");
                    })
                }else {
                    alert("删除失败");
                }
            },
            error:function () {
                alert("网络繁忙");
            }
        })

    })

    $("#left_one").click(function () {
        var menus=[];
        $("input[name='che_none']:checked").each(function (i) {
            menus.push($(this).parent().attr("title"));
        })
        var menusJson=JSON.stringify(menus);
        var path=$("#path").val();
        $.ajax({
            url:path+"/menu/addMenus",
            type:"Post",
            data:{"jobs":jobs,"menus":menusJson},
            dataType:"text",
            beforeSend:function(){
              if (menus.length==0){
                  alert("请选择菜单");
                  return false;
              }  else{
                  return confirm("确认为"+jobs+"添加菜单？")
              }
            },
            success:function (data) {
                if (data==1){
                    if (jobs=="平台管理员"){
                        alert("您已对管理员权限进行修改，请刷新页面或者重新登录后生效");
                    }else {
                        alert("添加成功");
                    }
                    $("input[name='che_none']:checked").each(function (i) {
                        $("#have_div ul").append($(this).parent());
                        $("#none_div").remove($(this).parent());
                        $(this).prop("checked",false);
                        $(this).prop("name","che_have");
                    })
                }else {
                    alert("添加失败");
                }
            },
            error:function () {
                alert("网络繁忙");
            }
        })
    })

    $("#right_all").click(function () {
        var menus=[];
        $("#rh_have").children("li").each(function (i) {
            menus.push($(this).attr("title"));
        })
        var menusJson=JSON.stringify(menus);
        var path=$("#path").val();
        $.ajax({
            url:path+"/menu/delMenus",
            type:"Post",
            data:{"jobs":jobs,"menus":menusJson},
            dataType:"text",
            beforeSend:function(){
                if (menus.length==0){
                    alert("无菜单可选，请确认！");
                    return false;
                }  else{
                    return confirm("确认删除"+jobs+"的菜单？")
                }
            },
            success:function (data) {
                if (data==1){
                    if (jobs=="平台管理员"){
                        alert("您已对管理员权限进行修改，请刷新页面或者重新登录后生效");
                    }else {
                        alert("删除成功");
                    }
                    $("#none_div ul").append($("#rh_have").children("li"));
                    $("#have_div").remove("li");
                    $("input[type='checkbox']").each(function () {
                        $(this).prop("checked",false);
                        $(this).attr("name","che_none");
                    })
                }else{
                    alert("删除失败");
                }
            },
            error:function () {
                alert("网络繁忙");
            }
        })
    })

    $("#left_all").click(function () {
        var menus=[];
        $("#rh_none").children("li").each(function (i) {
            menus.push($(this).attr("title"));
        })
        var menusJson=JSON.stringify(menus);
        var path=$("#path").val();
        $.ajax({
            url:path+"/menu/addMenus",
            type:"Post",
            data:{"jobs":jobs,"menus":menusJson},
            dataType:"text",
            beforeSend:function(){
                if (menus.length==0){
                    alert("请选择菜单");
                    return false;
                }  else{
                    return confirm("确认为"+jobs+"添加菜单？")
                }
            },
            success:function (data) {
                if (data==1){
                    if (jobs=="平台管理员"){
                        alert("您已对管理员权限进行修改，请刷新页面或者重新登录后生效");
                    }else {
                        alert("添加成功");
                    }
                        $("#have_div ul").append($("#rh_none").children("li"));
                        $("#none_div").remove("li");
                        $("input[type='checkbox']").each(function () {
                        $(this).prop("checked",false);
                        $(this).attr("name","che_have");
                    })
                }else {
                    alert("添加失败");
                }
            },
            error:function () {
                alert("网络繁忙");
            }
        })

    })
})



function findMenu(node) {
   jobs=$(node).attr("title");
    var path=$("#path").val();
    $.ajax({
        url:path+"/menu/getHaveMenu",
        type:"Post",
        data: {"jobs":jobs},
        dataType:"text",
        success:function (data) {
            var menus=JSON.parse(data);
            $("#have_div #rh_have li").empty("li");
            $(menus).each(function(i,n){
                $("#rh_have").append("<li style='margin-left: 50px' title='"+n.id+"'>" +
                    "<input type='checkbox' name='che_have'>" +n.name+ "</li>");
            });

        },
    })
    $.ajax({
        url:path+"/menu/getNoneMenu",
        type:"Post",
        data: {"jobs":jobs},
        dataType:"text",
        success:function (data) {
            var menus=JSON.parse(data);
            $("#none_div #rh_none li").empty("li");
            // $("#none_div").append( "<ul id='rh_none'><h4>未分配菜单</h4></ul>");
            $(menus).each(function(i,n){
                $("#rh_none").append("<li style='margin-left: 50px' title='"+n.id+"'>" +
                    "<input type='checkbox' name='che_none'>" +n.name+ "</li>");
            });
        },
    })

}
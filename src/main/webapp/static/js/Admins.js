layui.use('layer', function () {
    var layer = layui.layer;
});

//关闭
function guanbi() {
    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
    parent.layer.close(index); //再执行关闭
}



//新增培训计划
function add() {
    layer.open({
        anim: 1,
        type: 2,
        title: '新增培训计划',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'addTrain',
        area: ['450', '600'],
        content: ['/jsp/Admin_Trainadd.jsp'],
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}

//新增培训计划ajax
function addTrain(node) {
    var title = $("#title").val();
    var startDate = $("#startDate").val();
    var endDate = $("#endDate").val();
    var startTime = $("#startTime").val();
    var endTime = $("#endTime").val();
    var content = $("#content").val();
    var count = $("#count").val();
    var length = $("#length").val();
    $.ajax({
        url: "/adminTrain/addTrain",
        data: {title: title, startDate: startDate, endDate: endDate,startTime: startTime, endTime: endTime, content: content, count: count,length: length},
        success: function (data) {
            if (data == "添加成功") {
                alert("添加成功");
                guanbi();
            } else {
                layer.alert("添加失败")
            }
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    })
}

//修改培训计划
function update(node) {
    var title = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.textContent;
    var startDate = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.textContent;
    var endDate = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.textContent;
    var startTime = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var endTime = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var content = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var count = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var length = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var id = $(node).parent("div").parent("td").parent("tr")[0].firstChild.textContent;
    layer.open({
        anim: 1,
        type: 2,
        title: '修改',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'updateTrain',
        area: ['450', '600'],
        content: ['/jsp/Admin_Trainupdate.jsp'],

        success: function (layero, index) {
            var body = layer.getChildFrame('body', index);
            body.contents().find("#title").val(title);
            body.contents().find("#startDate").val(startDate);
            body.contents().find("#endDate").val(endDate);
            body.contents().find("#startTime").val(startTime);
            body.contents().find("#endTime").val(endTime);
            body.contents().find("#content").val(content);
            body.contents().find("#count").val(count);
            body.contents().find("#length").val(length);
            body.contents().find("#id").val(id);
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}

//修改培训计划ajax
function updateTrain(node) {
    var title = $("#title").val();
    var startDate = $("#startDate").val();
    var endDate = $("#endDate").val();
    var startTime = $("#startTime").val();
    var endTime = $("#endTime").val();
    var content = $("#content").val();
    var count = $("#count").val();
    var length = $("#length").val();
    var id = $("#id").val();

    $.ajax({
        url: "/adminTrain/updateTrain",
        data: {title: title, startDate: startDate,
            endDate: endDate,startTime: startTime, endTime: endTime, content: content,
            count: count, length: length, id: id},
        success: function (data) {
            if (data == "修改成功") {
                alert("修改成功");
                guanbi();
            } else {
                layer.alert("修改失败")
            }
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    })
}




//家政公司列表查看详情
function look(node) {
    var name = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.textContent;
    var legal = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.textContent;
    var address = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.textContent;
    var phone = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var stateName = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var areaName = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var entryDate = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var account = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var money = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var id = $(node).parent("div").parent("td").parent("tr")[0].firstChild.textContent;
    layer.open({
        anim: 1,
        type: 2,
        title: '查看详情',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'look',
        area: ['400', '500'],
        content: ['/jsp/Admin_Companylook.jsp'],

        success: function (layero, index) {
            var body = layer.getChildFrame('body', index);
            body.contents().find("#name").val(name);
            body.contents().find("#legal").val(legal);
            body.contents().find("#address").val(address);
            body.contents().find("#phone").val(phone);
            body.contents().find("#stateName").val(stateName);
            body.contents().find("#areaName").val(areaName);
            body.contents().find("#entryDate").val(entryDate);
            body.contents().find("#account").val(account);
            body.contents().find("#money").val(money);
            body.contents().find("#id").val(id);
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}


//发布动态公告
function fabu() {
    layer.open({
        anim: 1,
        type: 2,
        title: '发布公告',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'fabus',
        area: ['450', '400'],
        content: ['/jsp/Admin_Afficheadd.jsp'],
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}

//发布动态公告ajax
function fabus(node) {
    var title = $("#title").val();
    var describes = $("#describes").val();
    $.ajax({
        url: "/adminAffiche/addTAffiche",
        data: {title: title, describes: describes},
        success: function (data) {
            if (data == "发布成功") {
                alert("发布成功");
                guanbi();
            } else {
                layer.alert("发布失败")
            }
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    })
}



//动态公告查看
function lookAffiche(node) {
    var releasrDate = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.textContent;
    var describes = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.textContent;
    var title = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.textContent;
    layer.open({
        anim: 1,
        type: 2,
        title: '查看详情',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'lookAffiche',
        area: ['400', '500'],
        content: ['/jsp/Admin_Affichelook.jsp'],

        success: function (layero, index) {
            var body = layer.getChildFrame('body', index);
            body.contents().find("#releasrDate").val(releasrDate);
            body.contents().find("#describes").val(describes);
            body.contents().find("#title").val(title);
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}


function updateAffiche(node) {
    var releasrDate = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.textContent;
    var describes = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.textContent;
    var title = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.textContent;
    var id = $(node).parent("div").parent("td").parent("tr")[0].firstChild.textContent;
    layer.open({
        anim: 1,
        type: 2,
        title: '修改公告信息',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'update',
        area: ['400', '500'],
        content: ['/jsp/Admin_Afficheupdate.jsp'],

        success: function (layero, index) {
            var body = layer.getChildFrame('body', index);
            body.contents().find("#releasrDate").val(releasrDate);
            body.contents().find("#describes").val(describes);
            body.contents().find("#title").val(title);
            body.contents().find("#id").val(id);
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}


function updateAffiches(node) {
    var title = $("#title").val();
    // var releasrDate = $("#releasrDate").val();
    var describes = $("#describes").val();
    var id = $("#id").val();

    $.ajax({
        url: "/adminAffiche/updateAffiche",
        data: {title: title,
            describes: describes,id: id},
        success: function (data) {
            if (data == "修改成功") {
                alert("修改成功");
                guanbi();
            } else {
                layer.alert("修改失败")
            }
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    })
}

//查看服务类型
function lookType(node) {
    var typeName = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.textContent;
    var name = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.textContent;
    var id1 = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.textContent;
    var id = $(node).parent("div").parent("td").parent("tr")[0].firstChild.textContent;
    layer.open({
        anim: 1,
        type: 2,
        title: '查看详情',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'lookType',
        area: ['400', '400'],
        content: ['/jsp/Admin_ServerTypelook.jsp'],

        success: function (layero, index) {
            var body = layer.getChildFrame('body', index);
            body.contents().find("#id").val(id);
            body.contents().find("#id1").val(id1);
            body.contents().find("#name").val(name);
            body.contents().find("#typeName").val(typeName);
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}

//修改服务类型
function updatesType(node) {
    var typeName = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.textContent;
    var name = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.textContent;
    var id1 = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.textContent;
    // var pid1 = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var id = $(node).parent("div").parent("td").parent("tr")[0].firstChild.textContent;
    layer.open({
        anim: 1,
        type: 2,
        title: '修改服务类型',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'updatesTypes',
        area: ['400', '400'],
        content: ['/jsp/Admin_ServerTypeupdate.jsp'],

        success: function (layero, index) {
            var body = layer.getChildFrame('body', index);
            body.contents().find("#typeName").val(typeName);
            body.contents().find("#name").val(name);
            body.contents().find("#id1").val(id1);
            body.contents().find("#id").val(id);
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}


function updatesTypes(node) {
    var typeName = $("#typeName").val();
    var id = $("#id").val();
    var name = $("#name").val();
    var id1 = $("#id1").val();

    $.ajax({
        url: "/adminType/updatesType",
        data: {typeName: typeName,id: id,
            name: name,id1: id1},
        success: function (data) {
            if (data == "修改成功") {
                alert("修改成功");
                guanbi();
            } else {
                layer.alert("修改失败")
            }
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    })
}




//修改服务
function updateServer(node) {
    var typeName = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.textContent;
    var name = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.textContent;
    var id1 = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.textContent;
    var pid1 = $(node).parent("div").parent("td").parent("tr")[0].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.textContent;
    var id = $(node).parent("div").parent("td").parent("tr")[0].firstChild.textContent;
    layer.open({
        anim: 1,
        type: 2,
        title: '修改服务',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'updateServers',
        area: ['400', '400'],
        content: ['/jsp/Admin_ServerTypeupdates.jsp'],

        success: function (layero, index) {
            var body = layer.getChildFrame('body', index);
            body.contents().find("#typeName").val(typeName);
            body.contents().find("#name").val(name);
            body.contents().find("#id1").val(id1);
            body.contents().find("#id").val(id);
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}


function updateServers(node) {
    var typeName = $("#typeName").val();
    var id = $("#id").val();
    var name = $("#name").val();
    var id1 = $("#id1").val();
    $.ajax({
        url: "/adminType/updateServers",
        data: {typeName: typeName,id: id,
            name: name,id1: id1},
        success: function (data) {
            if (data == "修改成功") {
                alert("修改成功");
                guanbi();
            } else {
                layer.alert("修改失败")
            }
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    })
}


//addType 添加服务类型
function addType() {
    layer.open({
        anim: 1,
        type: 2,
        title: '新增服务类型',
        shadeClose: true,
        shade: false,
        maxmin: true,
        id: 'addTypes',
        area: ['450', '400'],
        content: ['/jsp/Admin_ServerTypeadd.jsp'],
        end: function () {
            $("#searchUserifAccount").click();
        }
    });
}

//发布动态公告ajax
function addTypes(node) {
    var typeName = $("#typeName").val();
    var pid = $("#pid").val();
    $.ajax({
        url: "/adminType/addType",
        data: {typeName: typeName, pid: pid},
        success: function (data) {
            if (data == "添加成功") {
                alert("添加成功");
                guanbi();
            } else {
                layer.alert("添加失败")
            }
        },
        end: function () {
            $("#searchUserifAccount").click();
        }
    })
}
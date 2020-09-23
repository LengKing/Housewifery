var calendarEl;
var calendar;
$(function() {
    // 日历插件初始化
    calendarEl = document.getElementById('calendar');
    // calendarEl=$("#calendar");
    calendar = new FullCalendar.Calendar(calendarEl, {
        plugins : [ 'interaction', 'dayGrid' ],
        defaultDate : new Date(),
        width:850,
        height:550,
        editable : true,
        eventLimit : true, // allow "more" link when too many events
        navLinks : false, // 开启单击天/周名称导航视图
        selectable : true,
        selectMirror : true,
        select : function(arg) {
            var date = new Date(arg.start).format('yyyy-MM-dd');
            $("#starttime").val(date);// 使用时间格式转换时间填入Dialog
           // $("#endtime").val(new Date(arg.end).format('yyyy-MM-dd'));
            $("#p").empty();
            $.ajax({
                url:path+"/arrange/companyEmployees",
                data:"companyId="+1000+"&date="+date,
                type:"post",
                dataType:"json",
                success:function (data) {
                    if (data !=null){
                        for (var i = 0; i < data.length; i++) {
                            var s='';
                            s+='<label id="emp'+data[i].number+'" for="e'+data[i].number+'">'+data[i].name+'</label>';
                            s+='<input type="checkbox" name="checkbox" value="'+data[i].number+'" id="e'+data[i].number+'">';
                            $("#p").append(s);
                        }
                        $("input[type='checkbox']").checkboxradio({
                            icon : false
                        });
                    }
                },
            });
            $("#caidan").dialog("open");
            calendar.unselect();
        },
        eventClick : function(info) {
            // clear();
            var starttimes = info.event.start.format('yyyy-MM-dd');
            $("#detailtime").val(starttimes);
            //var names = info.event.title;
            $.ajax({
                url:path+"/arrange/getArrange",
                type:"post",
                data:"date="+starttimes+"&companyId="+1000,
                dataType:"json",
                success:function (data) {
                    if (data !=null){
                        $("#p1").empty();
                        for (var i = 0; i < data.length; i++) {
                            var s='';
                            s+='<label id="emp1'+data[i].number+'" for="e1'+data[i].number+'">'+data[i].name+'</label>';
                            s+='<input type="checkbox" name="checkbox" value="'+data[i].number+'" id="e1'+data[i].number+'">';
                            $("#p1").append(s);
                            $("#e1"+data[i].number).prop("checked",true);
                            $("#emp1"+data[i].number).attr("class","ui-checkboxradio-label ui-corner-all ui-button ui-widget ui-checkboxradio-checked ui-state-active");
                        }
                        $("input[type='checkbox']").checkboxradio({
                            icon : false
                        });
                    }
                },
            });
            $("#sameday").dialog({
                autoOpen : false,
                modal : true,
                width : 550,
                height : 370,
                draggable : false,
                resizable : false,
                buttons : [ {
                    text : "确定并修改",
                    icon : "ui-icon-heart",
                    click : function() {
                        var number="";
                        var numberArr = '[';
                        var notChecked = $("input:checkbox").not("input:checked");
                        $.each(notChecked,function () {
                            numberArr+='"'+$(this).val()+'",';
                        });
                        number = numberArr.substring(0,numberArr.length-1);
                        number+=']';
                        if (number!='}]'){
                            $.ajax({
                                url:path+"/arrange/updateArrange",
                                type:"post",
                                data:"date="+starttimes+"&number="+number,
                                dataType:"text",
                                success:function (data) {
                                    alert(data)
                                    if (data =="操作成功"){
                                        location.reload();
                                    }
                                },
                            });
                            $(this).dialog("close");// dialog关闭
                        }else {
                            alert("修改并无变动");
                        }
                    }
                }, {
                    text : "取消",
                    icon : "ui-icon-heart",
                    click : function() {
                        $(this).dialog("close");
                    }
                }, ],
                show : {
                    effect : "blind",
                    duration : 1000
                },
                hide : {
                    effect : "explode",
                    duration : 1000
                }
            });
            $("#sameday").dialog("open");
            // if (confirm('是否删除这个日程?')) {
            // info.event.remove();
            // }
        },
        validRange : {
            // validRange 为控制锁死某些日期 当前日期的下一天即为明天开始可用 之前的日期全部锁死 官网原版写法 为 start
            // end 设定开始和结束日期
            start : new Date(new Date().getTime() + (1000 * 60 * 60 * 24)),
            end: new Date(new Date().getTime() + (1000 * 60 * 60 * 24 * 21))
        }
    });

    calendar.render();
//进入刷新页面
    var path = $("#path").val();
    $.ajax({
        url:path+"/arrange/getArrange",
        data:'companyId='+1000,
        type:"post",
        dataType:"json",
        success:function (data) {
            for (var i = 0; i < data.length; i++) {
                calendar.addEvent({
                    title : data[i].name,
                    start : new Date(data[i].date).format("yyyy-MM-dd"),
                    end : new Date(data[i].date).format("yyyy-MM-dd"),
                    allDay : true
                });
            }
        },
    });
    // $.ajax({
    //     url:path+"/arrange/companyEmployees",
    //     data:"companyId="+1000+"&date="+new Date().format("yyyy-MM-dd"),
    //     type:"post",
    //     dataType:"json",
    //     success:function (data) {
    //         if (data !=null){
    //             for (var i = 0; i < data.length; i++) {
    //                 var s='';
    //                 s+='<label id="emp'+data[i].number+'" for="e'+data[i].number+'">'+data[i].name+'</label>';
    //                 s+='<input type="checkbox" name="checkbox" value="'+data[i].number+'" id="e'+data[i].number+'">';
    //                 $("#p").append(s);
    //             }
    //             $("input[type='checkbox']").checkboxradio({
    //                 icon : false
    //             });
    //         }
    //     },
    // });

    // 初始化dialog
    $("#caidan").dialog({
        autoOpen : false,
        modal : true,
        width : 500,
        height : 450,
        draggable : false,
        resizable : false,
        buttons : [ {
            text : "确定",
            icon : "ui-icon-heart",
            click : function() {
                var number="";
                var numberArr = '[';
                $.each($("input[name=checkbox]:checked"),function() {
                    numberArr+='{"name":"'+$(this).prev('label').text();
                    numberArr+='","number":"'+$(this).val()+'"},';
                });
                number = numberArr.substring(0,numberArr.length-1);
                number+=']';
                var starttime = $("#starttime").val();

                if (number!=']'){
                    $.ajax({
                        url:path+"/arrange/employeeArrange",
                        type:"post",
                        data:"date="+starttime+"&employees="+number,
                        dataType:"json",
                        success:function (data) {
                            if (data!="fail"){
                                for (var i=0;i<data.length;i++){
                                    calendar.addEvent({
                                        title: data[i].name,
                                        start : new Date(starttime).format("yyyy-MM-dd"),
                                        end : new Date(starttime).format("yyyy-MM-dd"),
                                        allDay : true
                                    });
                                }
                                $("input[type='checkbox']").checkboxradio({
                                    icon : false
                                });
                             //   clear2();
                            }else{
                                alert("添加失败");
                            }
                        },
                    });
                    $(this).dialog("close");// dialog关闭
                }else{
                    alert("请先选择人员！");
                }
            }
        }, {
            text : "取消",
            icon : "ui-icon-heart",
            click : function() {
                $(this).dialog("close");
            }
        }, ],
        show : {
            effect : "blind",
            duration : 1000
        },
        hide : {
            effect : "explode",
            duration : 1000
        }
    });

    $("#groups").selectmenu();// 下拉列表使用jquery UI样式

    $("#starttime").datepicker({// 日期选择器使用jquery UI样式
        dateFormat : "yy-mm-dd"
    });
    $("#endtime").datepicker({// 日期选择器使用jquery UI样式
        dateFormat : "yy-mm-dd"
    });

    $("input[type='checkbox']").checkboxradio({
        icon : false
    });
    // $("#groups2").selectmenu();
});
// 重构Date对象下的时间格式
Date.prototype.format = function(format) {
    var o = {
        "M+" : this.getMonth() + 1,
        "d+" : this.getDate(),
        "h+" : this.getHours(),
        "m+" : this.getMinutes(),
        "s+" : this.getSeconds(),
        "q+" : Math.floor((this.getMonth() + 3) / 3),
        "S" : this.getMilliseconds()
    }
    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "")
            .substr(4 - RegExp.$1.length));
    }
    for ( var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
                : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
}

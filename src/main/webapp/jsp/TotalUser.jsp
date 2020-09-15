<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>用户统计</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/1.9.1jquery.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/X-admin/css/xadmin.css">
        <script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
        <script src="https://www.jq22.com/jquery/echarts-4.2.1.min.js"></script>
        <!--让IE8/9支持媒体查询，从而兼容栅格-->
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="x-nav">
                <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
                    <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
            </div>
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">用户统计</div>
                        <div class="layui-card-body ">
                           <label>注册时间</label>
                            <input  type="date" id="startDate" style="width: 150px;height: 25px" value="<fmt:formatDate value="${Time}" pattern="yyyy-MM-dd"/>">
                            <label>&nbsp;——</label>
                            <input  type="date" id="endDate" style="width: 150px;height: 25px" value="<fmt:formatDate value="${Time}" pattern="yyyy-MM-dd"/>">
                            &nbsp;&nbsp;<button type="button" id="select" class="layui-btn"><i class="layui-icon">&#xe615;</i>查询</button>
                        </div>
                    </div>
                </div>

                <div class="layui-col-sm12 layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">每日注册用户数量</div>
                        <div class="layui-card-body" style="min-height: 400px;">
                            <div id="single" class="layui-col-sm12" style="height: 300px;"></div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm12 layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">注册用户增长曲线</div>
                        <div class="layui-card-body" style="min-height: 400px;">
                            <div id="total" class="layui-col-sm12" style="height: 300px;"></div>
                        </div>
                    </div>
                </div>
        </div>
        </div>
    </body>

    <script type="text/javascript">
        $("#select").click(function () {
            var startDate=$("#startDate").val();
            var endDate=$("#endDate").val();
            var diffdate=getdiffdate(startDate,endDate)
            // 基于准备好的dom，初始化echarts实例
            var myCharts = echarts.init(document.getElementById('total'));
            // 指定图表的配置项和数据
            var options = {
                title: {
                    text: '注册用户增长曲线',
                    // subtext: '纯属虚构',
                    x: 'center'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: { // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    data: diffdate,
                    axisTick: {
                        alignWithLabel: true
                    }
                },
                yAxis: {
                    type: 'value',
                    interval:1
                },
            };

            $.ajax({
                data:{"startDate":startDate,"endDate":endDate},
                url:"${pageContext.request.contextPath}/user/lineUser",
                dataType:"json",
                beforeSend:function(){
                    if (startDate==""||endDate==""){
                        layer.alert("时间不能为空",{title:"提示",time:1500});
                        return false;
                    }
                },
                success:function(jsonData){
                    myCharts.setOption({
                        series: [{
                            name: '注册总数',
                            data: jsonData.data,
                            type: 'line',
                            lineWidth: '60%',
                            // smooth: true
                        }]
                    });
                    // 设置加载等待隐藏
                    myCharts.hideLoading();
                }
            });
            // 使用刚指定的配置项和数据显示图表。
            myCharts.setOption(options);



    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('single'));
    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '每日注册用户数量',
            // subtext: '纯属虚构',
            x: 'center'
        },
        //color: ['#3398DB'],
        tooltip: {
            trigger: 'axis',
            axisPointer: { // 坐标轴指示器，坐标轴触发有效
                type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [{
            data:diffdate,
            axisTick: {
                alignWithLabel: true
            }
        }],
        yAxis: [{
            type: 'value',
            interval:1
        }],
    };

    $.ajax({
        data:{"startDate":startDate,"endDate":endDate},
        url:"${pageContext.request.contextPath}/user/barUser",
        dataType:"json",
        beforeSend:function(){
            if (startDate==""||endDate==""){
                layer.alert("时间不能为空",{title:"提示",time:1500});
                return false;
            }
        },
        success:function(jsonData){
            myChart.setOption({
                series: [{
                    name: '注册数量',
                    data: jsonData.data,
                    itemStyle: {
                        normal: {
                            //好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                            color: function(params) {
                                var colorList = [
                                    '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                                    '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                                    '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                                ];
                                return colorList[params.dataIndex]
                            },
                        }
                    },
                    type: 'bar',
                    barWidth: '60%',
                    // encode:{x:0,y:1}
                }]
            });
            // 设置加载等待隐藏
            myChart.hideLoading();
        }
    });
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
})



        function getdiffdate(stime,etime){
            //初始化日期列表，数组
            var diffdate = new Array();
            var i=0;
            //开始日期小于等于结束日期,并循环
            while(stime<=etime){
                diffdate[i] = stime;
                //获取开始日期时间戳
                var stime_ts = new Date(stime).getTime();
                //增加一天时间戳后的日期
                var next_date = stime_ts + (24*60*60*1000);
                //拼接年月日，这里的月份会返回（0-11），所以要+1
                var next_dates_y = new Date(next_date).getFullYear()+'-';
                var next_dates_m = (new Date(next_date).getMonth()+1 < 10)?'0'+(new Date(next_date).getMonth()+1)+'-':(new Date(next_date).getMonth()+1)+'-';
                var next_dates_d = (new Date(next_date).getDate() < 10)?'0'+new Date(next_date).getDate():new Date(next_date).getDate();

                stime = next_dates_y+next_dates_m+next_dates_d;

                //增加数组key
                i++;
            }
            return diffdate;
        }
    </script>
</html>
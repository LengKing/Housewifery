<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery-3.5.1.js"></script>
        <link rel="stylesheet" href="../../static/driver/css/font.css">
        <link rel="stylesheet" href="../../static/driver/css/xadmin.css">
        <script src="../../static/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="../../static/driver/js/xadmin.js"></script>
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
          <span class="layui-breadcrumb">
            <a href="">首页</a>
          </span>
                <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
                    <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
            </div>
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <blockquote class="layui-elem-quote">欢迎： ${driver.driverName}的${driver.driverUser}
<%--                                <span class="x-red">test</span>！当前时间:2018-04-25 20:50:53--%>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">驾校数据统计</div>
                        <div class="layui-card-body ">
                            <ul class="layui-row layui-col-space10 layui-this x-admin-carousel x-admin-backlog">
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>教练数量</h3>
                                        <p><cite>${coachNum}</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>学员数量</h3>
                                        <p><cite>${studentNum}</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>教练车数量</h3>
                                        <p>
                                            <cite>${carNum}</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>本月访客量</h3>
                                        <p>
                                            <cite>888</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>学员评价量</h3>
                                        <p>
                                            <cite>${commentNum}</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>驾校毕业学员数量</h3>
                                        <p>
                                            <cite>2510</cite></p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="layui-col-sm12 layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">科目人数统计</div>
                        <div class="layui-card-body" style="min-height: 400px;">
                            <div id="wen" class="layui-col-sm12" style="height: 300px;"></div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm12 layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">科目通过率统计</div>
                        <div class="layui-card-body" style="min-height: 400px;">
                            <div id="main1" class="layui-col-sm12" style="height: 300px;"></div>
                        </div>
                    </div>
                </div>


                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">开发团队</div>
                        <div class="layui-card-body ">
                            <table class="layui-table">
                                <tbody>
                                    <tr>
                                        <th>开发者</th>
                                        <td>刘大帅</td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <style id="welcome_style"></style>
                <div class="layui-col-md12">
                    <blockquote class="layui-elem-quote layui-quote-nm">感谢</blockquote></div>
            </div>
        </div>
        </div>
    </body>



    <script type="text/javascript">




        // 基于准备好的dom，初始化echarts实例
        var myCharts = echarts.init(document.getElementById('main1'));

        // 指定图表的配置项和数据
        var options = {
            title: {
                text: '文章年度统计',
                subtext: '纯属虚构',
                x: 'center'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: { // 坐标轴指示器，坐标轴触发有效
                    type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            grid: {
                top: '5%',
                right: '1%',
                left: '1%',
                bottom: '10%',
                containLabel: true
            },
            tooltip: {
                trigger: 'axis'
            },
            xAxis: {
                type: 'category',
                data: ['周一','周二','周三','周四','周五','周六','周日']
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                name:'用户量',
                data: [0, 0, 901, 934, 1290, 1330, 1320],
                type: 'line',
                smooth: true
            }]
        };


        // 使用刚指定的配置项和数据显示图表。
        myCharts.setOption(options);





        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('wen'));
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '文章年度统计',
                subtext: '纯属虚构',
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
                type: 'category',
                data: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                axisTick: {
                    alignWithLabel: true
                }
            }],
            yAxis: [{
                type: 'value'
            }],

        };

        $.ajax({
            url:"${pageContext.request.contextPath}/driverController/Imformation",
            dataType:"json",
            success:function(jsonData){
                myChart.setOption({
                    series: [{
                        name: '发布量',
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
                                //以下为是否显示，显示位置和显示格式的设置了
                                label: {
                                    show: true,
                                    position: 'top',
                                    formatter: '{c}\n{b}'
                                }
                            }
                        },
                        type: 'bar',
                        barWidth: '60%',
                    }]
                });
                // 设置加载等待隐藏
                myChart.hideLoading();
            }
        });
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</html>
<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/8/21
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
<%--    <meta name="viewport"--%>
<%--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
    <title>热门服务</title>
    <script type="text/javascript" src="../static/js/jquery-3.5.1.js" charset="UTF-8"></script>
    <script src="../static/layui/layui.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
    <link href="../static/css/tcommon.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="../static/css/common.css" />
    <link type="text/css" rel="stylesheet" href="../static/css/index.css" />
    <link type="text/css" rel="stylesheet" href="../static/css/swiper.css" />
    <link type="text/css" rel="stylesheet" href="../static/css/animate.css" />
    <script type="text/javascript" src="../static/js/1.9.1jquery.min.js" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/common.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/swiper.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/wow.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/tcommon-1.0.js"></script>
    <script src="../static/js/index.js" charset="utf-8" type="text/javascript"></script>
    <script src="../static/layui/layui.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
</head>
<body>
<!-- header -->
<div class="header">
    <div class="header-top">
        <div class="content">
            <p>欢迎来到传一智慧家政网站！</p>
            <div class="rightCon">
                <a>欢迎：${sessionScope.user1.name}</a>
            </div>
        </div>
    </div>
    <div class="header-center">
        <h1><a href="">传一智慧家政</a></h1>
        <h2><img src="../static/images/logo_text.png"></h2>
        <div class="search">
            <form>
                <input id="titles" type="text" name="titles" placeholder="家庭清洁">
                <button id="btn" type="button">搜　索</button>
            </form>
        </div>
        <div class="phone">
            全国服务热线：<b>400-00-00000</b>
        </div>
    </div>

    <div class="header-nav">
        <div class="content" id="navBox">
            <ul>
                <li><a href="../jsp/Page_Main.jsp" target="_self">首页</a></li>

                <li mark='65' px='1'>
                    <a href="../jsp/jzfw.jsp" target="_self">家政服务</a>
                </li>

                <li mark='47' px='2'>
                    <a href="../jsp/jzfw_Hot.jsp" target="_self">热门服务</a>
                </li>

                <li mark='88' px='3'>
                    <a href="../jsp/PostDemand.jsp" target="_self">发布服务</a>
                </li>

                <li mark='89' px='4'>
                    <a href="../jsp/Main_lxpt.jsp" target="_self">联系平台</a>
                </li>

                <li mark='48' px='6'>
                    <a href="../jsp/Main_ruzhu.jsp" target="_self">品牌招商</a>
                </li>

                <li mark='52' px='5'>
                    <a href="../jsp/Main_gypt.jsp" target="_self">关于平台</a>
                </li>

                <li mark='71' px='7'>
                    <a href="../jsp/jzfw_news.jsp" target="_self">知识了解</a>
                </li>

            </ul>
        </div>
    </div>
</div>

<div class="layui-input-block" style="margin-top: 20px">

<%--    <div class="layui-inline">--%>
<%--        <label class="layui-form-label">会员名：</label>--%>
<%--        <div class="layui-input-inline">--%>
<%--            <input name="scaleName" id="scaleName" class="layui-input" type="text" autocomplete="off">--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <button class="layui-btn" style="margin-top: 0px;" id="searchUserifAccount" data-type="reload">--%>
<%--        <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>--%>
<%--    </button>--%>
<%--</div>--%>

<div>
    <table id="demo" lay-filter="test"></table>

    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-danger layui-btn-xs" href="/jsp/Pay.jsp">下单</a>
    </script>
    <script>
        var path = $("#path").val();
        //加载table模块
        layui.use(['table', 'layer', 'laypage'], function () {
            var table = layui.table;
            var laypage = layui.laypage; //分页
            var layer = layui.layer; //弹层

            //执行一个 table 实例
            table.render({
                elem: '#demo'
                , height: 510
                , url:'/hot/getHot' //数据接口
                , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                    layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
                    , curr: 1 //设定初始在第 1 页
                    , limits: [1, 2, 3, 5, 6, 8, 10]
                    // , groups: 1 //只显示 1 个连续页码 修改会只显示一个页面
                    , first: '首页' //不显示首页
                    , last: '尾页' //不显示尾页
                }
                , toolbar: 'default'
                , cols: [[ //表头
                    {field: 'serviceName', title: '热门服务名', width: 180, sort: true}
                    , {field: 'hotCount', title: '热度量', width: 180}
                    , {fixed: 'right', align: 'center', toolbar: '#barDemo'}
                ]]
            });


            table.on('tool(test)', function (obj) {
                var data = obj.data;
                // if (obj.event === 'detail') {
                //     layer.msg('ID：' + data.userId + ' 的查看操作');
                // } else
                if (obj.event === 'del') {
                    layer.confirm('真的要删除吗', function (index) {
                        $.ajax({
                            url: path + "/scale/deleteScale",
                            data: {scaleId: data.scaleId},
                            success: function (data) {
                                if (data == "删除成功") {
                                    obj.del();
                                    layer.close(index);
                                    layer.msg("删除成功");

                                } else {
                                    layer.msg("删除失败");
                                    layer.close(index);
                                }
                            }
                        })

                    });
                }
                // else if (obj.event === 'edit') {
                //     // layer.alert('编辑行：<br>'+ JSON.stringify(data))
                //     layer.open({
                //         type: 1 //Page层类型
                //         , area: ['500px', '300px']
                //         , title: '修改文档类型'
                //         , shade: 0.6 //遮罩透明度
                //         , maxmin: true //允许全屏最小化
                //         , anim: 1 //0-6的动画形式，-1不开启
                //         ,content:['/demo0401/jsp/AdminAlter.jsp','no']
                //     });
                // }
            });

            var active = {
                reload: function () {
                    var scaleName = $("#scaleName").val();//搜索框内容
                    //执行重载
                    table.reload('demo', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        , where: {
                            scaleName: scaleName//作为参数传递给后端
                        }
                    });

                }

            };

            $('#searchUserifAccount').on('click', function () {
                var type = $(this).data('type');//自定义type属性，这里即为reload
                active[type] ? active[type].call(this) : ''; //如果存在active[type]，则调用改函数
            });

        });


    </script>
</div>
    <!-- 底部包含文件 -->
    <!-- foter -->
    <div class="footer">
        <div class="content">
            <div class="item">
                <h3><a href="/jsp/jzfw.jsp">家政服务</a></h3>

                <p><a href="/jsp/jzfw_qj.jsp">家庭清洁</a></p>

                <p><a href="/jsp/jzfw_qyqj.jsp">企业清洁</a></p>

                <p><a href="/jsp/jzfw_bm.jsp">保姆</a></p>

                <p><a href="/jsp/jzfw_ys.jsp">月嫂</a></p>

                <p><a href="/jsp/jzfw_yy.jsp">育婴</a></p>

                <p><a href="/jsp/jzfw_zdg.jsp">钟点工</a></p>

            </div>
            <div class="item">
                <h3><a href="">家政培训</a></h3>

                <p><a href=""> 最新开课</a></p>

                <p><a href="">家政培训项目</a></p>

            </div>
            <div class="item">
                <h3><a href="">加盟社区</a></h3>

                <p><a href="">行业前景</a></p>

                <p><a href="">品牌支持</a></p>

                <p><a href="">投资预算</a></p>

                <p><a href="">客户见证</a></p>

                <p><a href="">合作伙伴</a></p>

                <p><a href="">申请加盟</a></p>

            </div>
            <div class="item">
                <h3><a href="">关于社区</a></h3>

                <p><a href="">品牌介绍</a></p>

                <p><a href="">创始人</a></p>

                <p><a href="">师资队伍</a></p>

                <p><a href="">荣誉资质</a></p>

                <p><a href="">品牌形象</a></p>

                <p><a href="">大事记</a></p>

            </div>

        </div>
        <div class="phone">
            全国服务热线：400-00-00000 / 品牌加盟专线：8888-88888888
        </div>
        <div class="text">
            <p>版权所有：　厦门<a href="" target="_blank" rel="nofollow">厦AAA备888888号-8</a></p>
            <p>技术支持：<a href="" target="_blank" rel="nofollow" >个人网</a></p>
        </div>
    </div>
</body>
</html>
<script>
    window.onload = function(){
        var titles = document.getElementById("titles");
        var btn = document.getElementById("btn");
        btn.onclick = function(){
            if(titles.value == "家庭清洁"){
                url = "/jsp/jzfw_qj.jsp";
            }else if(titles.value == "企业清洁"){
                url = "/jsp/jzfw_qyqj.jsp";
            }else if(titles.value == "保姆"){
                url = "/jsp/jzfw_bm.jsp";
            }else if(titles.value == "月嫂"){
                url = "/jsp/jzfw_ys.jsp";
            }else if(titles.value == "育婴"){
                url = "/jsp/jzfw_yy.jsp";
            }else if(titles.value == "钟点工"){
                url = "/jsp/jzfw_zdg.jsp";
            }else if(titles.value == "医院陪护"){
                url = "/jsp/jzfw_yyph.jsp";
            }
            window.location.href = url;
        }
    }
</script>
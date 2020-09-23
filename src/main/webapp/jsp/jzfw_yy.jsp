<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/10
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="renderer" content="webkit">
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta property="og:image" content="/upload/images/2019/8/31a6d380d226137b.jpg" />

    <title>家政服务</title>
    <link href="../static/css/common.css" rel="stylesheet" type="text/css">
    <link href="../static/css/tcommon.css" rel="stylesheet" type="text/css">
    <link href="../static/css/inpage.css" rel="stylesheet" type="text/css">
    <link href="../static/css/tinpage-1.0.css" rel="stylesheet" type="text/css">
    <link href="../static/css/fancybox.css" rel="stylesheet" type="text/css"/>
    <link type="text/css" rel="stylesheet" href="../static/css/swiper.css"/>
    <script type="text/javascript" charset="utf-8" src="../static/js/1.9.1jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/swiper.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/move.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/tcommon-1.0.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/common.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/inpage.js"></script>
</head>

<body>
<!-- header -->
<div class="header">
    <div class="header-top">
        <div class="content">
            <p>欢迎来到XXXX网站！</p>
            <div class="rightCon">
                <a href="" target="_blank">登录</a>
                <a href="">注册</a>
                <a href="" target="_blank">联系平台</a>
                <a href="">工作机会</a>
            </div>
        </div>
    </div>
    <div class="header-center">
        <h1><a href="">XXXX智慧家政</a></h1>
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


<!-- 产品中心 -->
<div class="y-product-module bgcolor" id="yProductModule">
    <div class="width1200">
        <h3><a href="http://www.sqbang.com/product/">家政服务</a></h3>
        <div class="aboutMenu" id="aboutMenu1jzfw">
            <ul class="clearfix">

                <li>
                    <a href="../jsp/jzfw_qj.jsp">家庭清洁</a>
                </li>

                <li>
                    <a href="../jsp/jzfw_qyqj.jsp">企业清洁</a>
                </li>

                <li>
                    <a href="../jsp/jzfw_bm.jsp">保姆</a>
                </li>

                <li>
                    <a href="../jsp/jzfw_ys.jsp">月嫂</a>
                </li>

                <li>
                    <a href="../jsp/jzfw_yy.jsp">育婴</a>
                </li>

                <li>
                    <a href="../jsp/jzfw_zdg.jsp">钟点工</a>
                </li>

                <li>
                    <a href="../jsp/jzfw_yyph.jsp">医院陪护</a>
                </li>

            </ul>
        </div>


        <div class="y-product-main" id="yProductMain">
            <!-- 产品内容 -->
            <div class="y-product-box">
                <div class="y-second-main" id="ySecondMain">
                    <!-- 二级内容 -->
                    <div class="y-product-cont">
                        <div class="y-product-list clearfix">

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                 <a>
                                                    <img src="../static/images/c5424df205add93e.jpg" alt="育婴师">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">育婴师</a>
                                </h4>
                                <p>本服务产品分为一星级、二星级、三星级、四星级、五星级五种级别...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_self" rel="nofollow"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>


                    </div>
                    <!-- 二级内容end -->
                </div>

            </div>
            <!-- end -->
        </div>


    </div>
</div>
</div>


<!--是否设置分站-->
<input type="hidden" id="fenzhan" value="否">
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
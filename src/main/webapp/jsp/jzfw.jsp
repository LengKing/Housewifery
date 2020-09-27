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
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>家政服务</title>
    <link href="../static/css/common.css" rel="stylesheet" type="text/css">
    <link href="../static/css/tcommon.css" rel="stylesheet" type="text/css">
    <link href="../static/css/inpage.css" rel="stylesheet" type="text/css">
    <link href="../static/css/tinpage-1.0.css" rel="stylesheet" type="text/css">
    <link href="../static/css/fancybox.css" rel="stylesheet" type="text/css"/>
    <link type="text/css" rel="stylesheet" href="../static/css/swiper.css"/>
    <script type="text/javascript" src="../static/js/1.9.1jquery.min.js" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/swiper.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/move.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/tcommon-1.0.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/common.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/inpage.js"></script>
    <link rel="stylesheet" href="../static/layui/css/layui.css" media="all">
    <script src="../static/layui/layui.all.js" charset="utf-8"></script>
    <script src="../static/layui/lay/modules/layer.js"></script>
    <script src="../static/js/Admins.js"></script>
    <%
        String path = request.getContextPath();
    %>
</head>

<body>
<input type="hidden" id="path" value="<%=path%>">
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


<!-- 产品中心 -->
<div class="y-product-module bgcolor" id="yProductModule">
    <div class="width1200">
        <h3><a>家政服务</a></h3>
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
                                                    <img src="../static/images/4ce15f17b4c5d41a.jpg" alt="保姆">
                                                </a>
                                            </span>
                                <h4><a href="" target="_blank">保姆</a></h4>
                                <p>本服务产品分为一星级、二星级、三星级、四星级、五星级五种级别...</p>
                                <span class="y-btns clearfix">
                                                <a class="fl"
                                                   href="Pay.jsp" target="_self">立即下单</a>
                                                <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                 <a>
                                                    <img src="../static/images/a4caf21e9d1c45f2.jpg" alt="月嫂">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">月嫂</a>
                                </h4>
                                <p>本服务产品严格按国标进行星级评定与划分，主要分为二星级、三星...</p>
                                <span class="y-btns clearfix">
                                               <a class="fl"
                                                  href="Pay.jsp" target="_self">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

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
                                                <a href="Pay.jsp" target="_self"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                  <a>
                                                    <img src="../static/images/fa3606bf0ae243f5.jpg" alt="钟点工">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">钟点工</a>
                                </h4>
                                <p>临时钟点工的工作内容包含:家庭定期的卫生打扫(未配带专业工具)...</p>
                                <span class="y-btns clearfix">
                                                <a href="Pay.jsp" target="_self"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a>
                                                    <img src="../static/images/bdfcf58eca18149a.jpg" alt="玻璃清洁">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">玻璃清洁</a>
                                </h4>
                                <p>服务详情社区邦为您提供服务本服务产品主要将潜伏在门窗边框及窗...</p>
                                <span class="y-btns clearfix">
                                                <a href="Pay.jsp" target="_self"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                 <a>
                                                    <img src="../static/images/5730004de29992d5.jpg" alt="居家大扫除">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">居家大扫除</a>
                                </h4>
                                <p>服务详情社区邦为您提供服务社区邦以打造健康家居环境为出发点，...</p>
                                <span class="y-btns clearfix">
                                                <a href="Pay.jsp" target="_self"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                  <a>
                                                    <img src="../static/images/1db26dfdc46ece74.jpg" alt="卫生间深度清洁">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">卫生间深度清洁</a></h4>
                                <p>服务详情社区邦为您提供服务服务人员:&#160; 专职保洁师服务时间:&#160; 上...</p>
                                <span class="y-btns clearfix">
                                                <a href="Pay.jsp" target="_self"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a>
                                                    <img src="../static/images/b0825153c88abb69.jpg" alt="居家保洁">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">居家保洁</a>
                                </h4>
                                <p>4小时标准化高端家庭保洁服务产品，全员实行员工制，严格按照“...</p>
                                <span class="y-btns clearfix">
                                                <a href="Pay.jsp" target="_self"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                  <a>
                                                    <img src="../static/images/c5a206172a1ae92f.jpg" alt="深层除螨">
                                                </a>
                                            </span>
                                <h4><a href="" target="_self">深层除螨</a>
                                </h4>
                                <p>服务介绍：&quot;居家除螨”是社区邦新推出的星级除螨产品，采用专业...</p>
                                <span class="y-btns clearfix">
                                                <a href="Pay.jsp" target="_self"
                                                   class="fl">立即下单</a>
                                                   <a href="../jsp/bmxq.jsp" target="_self" class="fl">了解更多</a>
                                            </span>
                            </div>

                        </div>

                        <!-- 翻页 -->
                        <div class="paging1200 clearfix">

                                    <span class="jkbtnl pagingPrev">
                                        <a href="javascript:;" class="previousBtn tBtn">
                                                    <img src="../static/images/pagingprevbtn.png" width="45" height="43"
                                                         alt="上一页">
                                                </a>
                                    </span>
                            <p class="jk_num clearfix">
                                <a class="cur"> 1</a><a href="../jsp/jzfw_2.jsp">2</a>
                            </p>
                            <span class="jkbtnr pagingNext">
                                        <a href="../jsp/jzfw_2.jsp" class="nextBtn tBtn">
                                                    <img src="../static/images/pagingnextbtn.png" width="45" height="43"
                                                         alt="下一页">
                                                </a>
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
<!-- 底部包含文件 -->
<!-- foter -->
<div class="footer">
    <div class="content">
        <div class="item">
            <h3><a href="../jsp/jzfw.jsp">家政服务</a></h3>

            <p><a href="../jsp/jzfw_qj.jsp">家庭清洁</a></p>

            <p><a href="../jsp/jzfw_qyqj.jsp">企业清洁</a></p>

            <p><a href="../jsp/jzfw_bm.jsp">保姆</a></p>

            <p><a href="../jsp/jzfw_ys.jsp">月嫂</a></p>

            <p><a href="../jsp/jzfw_yy.jsp">育婴</a></p>

            <p><a href="../jsp/jzfw_zdg.jsp">钟点工</a></p>

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
                url = "../jsp/jzfw_qj.jsp";
            }else if(titles.value == "企业清洁"){
                url = "../jsp/jzfw_qyqj.jsp";
            }else if(titles.value == "保姆"){
                url = "../jsp/jzfw_bm.jsp";
            }else if(titles.value == "月嫂"){
                url = "../jsp/jzfw_ys.jsp";
            }else if(titles.value == "育婴"){
                url = "../jsp/jzfw_yy.jsp";
            }else if(titles.value == "钟点工"){
                url = "../jsp/jzfw_zdg.jsp";
            }else if(titles.value == "医院陪护"){
                url = "../jsp/jzfw_yyph.jsp";
            }
            window.location.href = url;
        }
    }
</script>
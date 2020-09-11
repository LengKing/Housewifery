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
    <%
        String path = request.getContextPath();
    %>
    <link href="${pageContext.request.contextPath}/static/css/common.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/static/css/tcommon.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/static/css/inpage.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/static/css/tinpage-1.0.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/fancybox.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/swiper.css" />
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/1.9.1jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/swiper.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/move.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/tcommon-1.0.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/common.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/inpage.js"></script>
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
        <h2><img src="${pageContext.request.contextPath}/static/images/logo_text.png"></h2>
        <div class="search">
            <form action="/Search/index.html">
                <input type="text" name="word" placeholder="家庭保洁">
                <button type="submit" name="submit">搜　索</button>
            </form>
        </div>
        <div class="phone">
            全国服务热线：<b>400-00-00000</b>
        </div>
    </div>
    <div class="header-nav">
        <div class="content" id="navBox">
            <ul>
                <li><a href="${pageContext.request.contextPath}/jsp/Page_Main.jsp">首页</a></li>

                <li mark='65' px='1'>
                    <a href="${pageContext.request.contextPath}/jsp/jzfw.jsp" target="_blank">家政服务</a>
                </li>

                <li mark='47' px='2'>
                    <a href="/product/" target="_blank">热门服务</a>
                </li>

                <li mark='88' px='3'>
                    <a href="${pageContext.request.contextPath}/jsp/PostDemand.jsp" target="_blank">发布服务</a>
                </li>

                <li mark='89' px='4'>
                    <a href="/help/jzfw.html" target="_blank">联系平台</a>
                </li>

                <li mark='48' px='6'>
                    <a href="/news/" target="_blank">商户入驻</a>
                </li>

                <li mark='52' px='5'>
                    <a href="/help/ppjs.html" target="_blank">关于平台</a>
                </li>

                <li mark='71' px='7'>
                    <a href="/help/lxwm.html" target="_blank">家政了解</a>
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
                    <a href="${pageContext.request.contextPath}/jsp/jzfw_qj.jsp">家庭清洁</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/jsp/jzfw_qyqj.jsp">企业清洁</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/jsp/jzfw_bm.jsp">保姆</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/jsp/jzfw_ys.jsp">月嫂</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/jsp/jzfw_yy.jsp">育婴</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/jsp/jzfw_zdg.jsp">钟点工</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/jsp/jzfw_yyph.jsp">医院陪护</a>
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
                                                <a href="http://www.sqbang.com/help/2019072015117140.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/4ce15f17b4c5d41a.jpg" alt="保姆">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/2019072015117140.html" target="_blank">保姆</a></h4>
                                <p>本服务产品分为一星级、二星级、三星级、四星级、五星级五种级别...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/2019072015117140.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/20190720151053139.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/a4caf21e9d1c45f2.jpg" alt="月嫂">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/20190720151053139.html" target="_blank">月嫂</a></h4>
                                <p>本服务产品严格按国标进行星级评定与划分，主要分为二星级、三星...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/20190720151053139.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/20190723111755170.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/c5424df205add93e.jpg" alt="育婴师">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/20190723111755170.html" target="_blank">育婴师</a></h4>
                                <p>本服务产品分为一星级、二星级、三星级、四星级、五星级五种级别...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/20190723111755170.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/20190723111533169.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/fa3606bf0ae243f5.jpg" alt="钟点工">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/20190723111533169.html" target="_blank">钟点工</a></h4>
                                <p>临时钟点工的工作内容包含:家庭定期的卫生打扫(未配带专业工具)...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/20190723111533169.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/2019071920253091.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/bdfcf58eca18149a.jpg" alt="玻璃清洁">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/2019071920253091.html" target="_blank">玻璃清洁</a></h4>
                                <p>服务详情社区邦为您提供服务本服务产品主要将潜伏在门窗边框及窗...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/2019071920253091.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/2019072318111183.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/5730004de29992d5.jpg" alt="居家大扫除">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/2019072318111183.html" target="_blank">居家大扫除</a></h4>
                                <p>服务详情社区邦为您提供服务社区邦以打造健康家居环境为出发点，...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/2019072318111183.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/20190723172556182.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/1db26dfdc46ece74.jpg" alt="卫生间深度清洁">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/20190723172556182.html" target="_blank">卫生间深度清洁</a></h4>
                                <p>服务详情社区邦为您提供服务服务人员:&#160; 专职保洁师服务时间:&#160; 上...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/20190723172556182.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/2019071920241488.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/b0825153c88abb69.jpg" alt="居家保洁">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/2019071920241488.html" target="_blank">居家保洁</a></h4>
                                <p>4小时标准化高端家庭保洁服务产品，全员实行员工制，严格按照“...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/2019071920241488.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                            <div class="details-cont fl">
                                            <span class="y-img-box">
                                                <a href="http://www.sqbang.com/help/2019071920244289.html" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/static/images/c5a206172a1ae92f.jpg" alt="深层除螨">
                                                </a>
                                            </span>
                                <h4><a href="http://www.sqbang.com/help/2019071920244289.html" target="_blank">深层除螨</a></h4>
                                <p>服务介绍：&quot;居家除螨”是社区邦新推出的星级除螨产品，采用专业...</p>
                                <span class="y-btns clearfix">
                                                <a href="javascript:void(formShow())" target="_blank" rel="nofollow" class="fl">立即咨询</a>
                                                <a href="http://www.sqbang.com/help/2019071920244289.html" target="_blank" class="fl">了解更多</a>
                                            </span>
                            </div>

                        </div>

                        <!-- 翻页 -->
                        <div class="paging1200 clearfix">

                                    <span class="jkbtnl pagingPrev">
                                        <a href="javascript:;" class="previousBtn tBtn">
                                                    <img src="${pageContext.request.contextPath}/static/images/pagingprevbtn.png" width="45" height="43" alt="上一页">
                                                </a>
                                    </span>
                            <p class="jk_num clearfix">
                                <a class="cur"> 1</a><a href="${pageContext.request.contextPath}/jsp/jzfw_2.jsp">2</a>
                            </p>
                            <span class="jkbtnr pagingNext">
                                        <a href="${pageContext.request.contextPath}/jsp/jzfw_2.jsp" class="nextBtn tBtn">
                                                    <img src="${pageContext.request.contextPath}/static/images/pagingnextbtn.png" width="45" height="43" alt="下一页">
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



<!--是否设置分站-->
<input type="hidden" id="fenzhan" value="否">
</body>
</html>

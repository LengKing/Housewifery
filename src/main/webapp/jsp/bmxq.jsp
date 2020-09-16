<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/11
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="renderer" content="webkit">
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>保姆-了解详情</title>
    <link href="/static/css/common.css" rel="stylesheet" type="text/css">
    <link href="/static/css/tcommon.css" rel="stylesheet" type="text/css">
    <link href="/static/css/inpage.css" rel="stylesheet" type="text/css">
    <link href="/static/css/tinpage-1.0.css" rel="stylesheet" type="text/css">
    <link href="/static/css/fancybox.css" rel="stylesheet" type="text/css"/>
    <link type="text/css" rel="stylesheet" href="/static/css/swiper.css"/>
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all">
    <script src="/static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8"
            src="/static/js/1.9.1jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="/static/js/swiper.js"></script>
    <script type="text/javascript" charset="utf-8" src="/static/js/move.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="/static/js/tcommon-1.0.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="/static/js/common.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="/static/js/inpage.js"></script>
    <script src="/static/js/lodash-4.17.4.min.js" type="text/javascript"></script>
    <script src="/static/js/stlclient.js" type="text/javascript"></script>
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
            <p>欢迎来到XXX智慧家政！</p>
            <!--            <div class="rightCon">-->
            <!--                <a href="http://www.sqbang.com/SiteMap.html" target="_blank">网站地图</a>-->
            <!--                <a href="javascript:addBookmark()">收藏本站</a>-->
            <!--                <a href="http://www.sqbang.com/help/lxwm.html" target="_blank">联系社区邦</a>-->
            <!--                <a href="http://www.sqbang.com/news/tag.html">热门标签</a>-->
            <!--            </div>-->
        </div>
    </div>
    <div class="header-center">
        <h1><a href="">XXXX智慧家政</a></h1>
        <h2><img src="/static/images/logo_text.png"></h2>
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
                <li><a href="/jsp/Page_Main.jsp" target="_self">首页</a></li>

                <li mark='65' px='1'>
                    <a href="/jsp/jzfw.jsp" target="_self">家政服务</a>
                </li>

                <li mark='47' px='2'>
                    <a href="/jsp/jzfw_Hot.jsp" target="_self">热门服务</a>
                </li>

                <li mark='88' px='3'>
                    <a href="/jsp/PostDemand.jsp" target="_self">发布服务</a>
                </li>

                <li mark='89' px='4'>
                    <a href="/jsp/Main_lxpt.jsp" target="_self">联系平台</a>
                </li>

                <li mark='48' px='6'>
                    <a href="/jsp/Main_ruzhu.jsp" target="_self">品牌招商</a>
                </li>

                <li mark='52' px='5'>
                    <a href="/jsp/Main_gypt.jsp" target="_self">关于平台</a>
                </li>

                <li mark='71' px='7'>
                    <a href="/jsp/jzfw_news.jsp" target="_self">知识了解</a>
                </li>

            </ul>
        </div>
    </div>
</div>


<div class="y-wrapper width1200 clearfix" style=" margin-top:30px;">

    <div class="proDetailsCanS proDetailsCanS1200  clearfix">

        <div class="conBox">
            <div class="box probox" id="content">
                <p style="text-align: center; margin-top: 25px; line-height: 1.75em; margin-bottom: 10px;"><span
                        style="font-size: 32px;">保姆<span
                        style="font-size: 32px; color: rgb(255, 125, 40);"><strong>详情</strong></span></span><br/></p>
                <p style="text-align: center; margin-bottom: 15px; margin-top: 5px;"><span
                        style="font-size: 16px; color: rgb(165, 165, 165);">智慧家政为您提供服务</span></p>
                <p><br/>
                    <table width="1200" style="border: 2px solid rgb(244, 244, 244);">
                        <tbody>
                        <tr class="firstRow">
                            <td width="580" valign="middle" style="word-break: break-all;" align="center"><img
                                    src="/static/images/65178d618f90101e.jpg"
                                    title="保姆" alt="保姆"/></td>
                            <td width="610" valign="middle" style="word-break:

break-all;background: #f4f4f4;padding: 20px;" align="left">
                <p style="margin-bottom: 5px; margin-top: 5px; line-height: 2em;">
                    本服务产品分为一星级、二星级、三星级、四星级、五星级五种级别，且上岗的家务师均通过社区邦系统培训和认证，严格按照智慧家政服务标准完成每项家政服务工作，月休2-4天；</p>
                <p style="margin-bottom: 5px; margin-top: 5px; line-height: 2em;">本服务包含家庭保洁、家庭烹饪、家务整理、其他辅助工作等；</p>
                <p style="margin-bottom: 5px; margin-top: 5px; line-height: 2em;">
                    家务师的岗位职责是做好家务工作，<strong>主要包含服务内容有:</strong></p>
                <p style="margin-bottom: 5px; margin-top: 5px; text-indent: 2em; line-height: 2em;">
                    家庭保洁、家庭烹饪、衣物洗涤熨烫收纳、接送宝宝上下学等，超出其服务范围内的工作，建议不安排。</p>
                <p style="margin-bottom: 5px; margin-top: 5px; text-indent: 2em; line-height: 2em;">
                    明确家务师的工作时间和工作内容，且每天晚睡时间最晚不超过21点，保证家务师的睡眠时间每天不少于8小时，让家务师每天都能有饱满的精神投入到工作，从而保证服务质量。</p></td></tr></tbody></table></p>
                <p style="line-height: 1.75em;"><br/></p>
                <table width="767" style="width: 1200px;">
                    <tbody>
                    <tr class="firstRow">
                        <td width="303" valign="middle"
                            style="word-break: break-all; border-width: 1px; border-style: solid;" align="center"
                            height="45"><span style="font-size: 16px;"><strong>预定流程</strong></span></td>
                        <td width="303" valign="middle"
                            style="word-break: break-all; border-width: 1px; border-style: solid;" align="center"
                            height="45"><span style="font-size: 16px;"><strong>服务保障</strong></span></td>
                        <td width="303" valign="middle"
                            style="word-break: break-all; border-width: 1px; border-style: solid;" align="center"
                            height="45"><span style="font-size: 16px;"><strong>平台保障</strong></span></td>
                    </tr>
                    <tr>
                        <td width="303" valign="middle" align="center" style="border-width: 1px; border-style: solid;">
                            <img src="/static/images/c802812f1dc9f744.jpg"
                                 title="预定流程" alt="预定流程"/></td>
                        <td width="303" valign="middle" align="center" style="border-width: 1px; border-style: solid;">
                            <img src="/static/images/c1adf77c1857bf9e.jpg"
                                 title="服务保障" alt="服务保障"/></td>
                        <td width="303" valign="middle" align="center" style="border-width: 1px; border-style: solid;">
                            <img src="/static/images/f43b2fdd42589990.jpg"
                                 title="平台保障" alt="平台保障"/></td>
                    </tr>
                    </tbody>
                </table>

            </div>

        </div>
    </div>

</div>
</div>

<!--是否设置分站-->
<input type="hidden" id="fenzhan" value="否">

</body>

</html>

<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/14
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="renderer" content="webkit">
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>文章知识</title>
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

<body style="background: #f4f4f4; ">
<script src="/static/js/lodash-4.17.4.min.js" type="text/javascript"></script>
<script src="/static/js/stlclient.js" type="text/javascript"></script>

<!-- header -->
<div class="header">
    <div class="header-top">
        <div class="content">
            <p>欢迎来到XXXX网站！</p>
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

<div class="newsCenterPress2" id="newsCenterPress2">
    <div class="container">
        <div class="mub01Title">
            <a href="../jsp/jzfw_news.jsp">
                <h3><i class="xianL"></i>知识<em>了解</em><i class="xianR"></i></h3>
            </a>
        </div>
        <div class="mainCon">

            <dl class="clearfix">
                <dt><a href=""><img
                        src="../static/images/c582bf80020f4f73.jpg" alt="附近家政服务公司收费价格范围"></a></dt>
                <dd>
                    <h3><a href="">附近家政服务公司收费价格范围</a>
                    </h3>
                    <p>
                        针对目前需求日益旺盛的家政市场，广大消费者应特别关注家政公司的收费价格，小编今天就为大家介绍一下家政公司如何收费，家政公司收费清单等相关问题：但社区邦家政小编在此提醒大家：选择一家好的家政服务公司，不仅仅要收取比家政公司更多的费用，还要注意以下几点：</p>

                    <span class="zan"><em>2020-09-14</em></span>
                    <span class="readNum">10</span>
                    <a href="../jsp/jsfw_news1.jsp" class="more"></a>
                </dd>
            </dl>

            <dl class="clearfix">
                <dt><a href="" ><img
                        src="../static/images/6316bdd29eac7763.jpg" alt="找附近小时工的注意事项有哪些?"></a></dt>
                <dd>
                    <h3><a href="">找附近小时工的注意事项有哪些?</a>
                    </h3>
                    <p>对于那些上班族而言，因为工作的繁忙，没有时间做家务，所以往往会请小时工来帮忙。一般来说，客户会找附近小时工，那么，找附近小时工有哪些注意事项呢?</p>

                    <span class="zan"><em>2020-09-12</em></span>
                    <span class="readNum">3</span>
                    <a href="" class="more"></a>
                </dd>
            </dl>

            <%--            <dl class="clearfix">--%>
            <%--                <dt><a href="http://www.sqbang.com/news/20200908155391547.html" target="_blank"><img--%>
            <%--                        src="static/picture/ac55d9aada23a817.jpg" alt="钟点工保洁选择哪家好口碑推荐"></a></dt>--%>
            <%--                <dd>--%>
            <%--                    <h3><a href="http://www.sqbang.com/news/20200908155391547.html" target="_blank">钟点工保洁选择哪家好口碑推荐</a>--%>
            <%--                    </h3>--%>
            <%--                    <p>现在的年轻人，或许是因为工作的压力，或许是因为对家务事情不感兴趣，所以他们总是会请钟点工保洁。那么，钟点工保洁如何选择更靠谱呢?</p>--%>

            <%--                    <span class="zan"><em>2020-09-11</em></span>--%>
            <%--                    <span class="readNum">2</span>--%>
            <%--                    <a href="http://www.sqbang.com/news/20200908155391547.html" target="_blank" class="more"></a>--%>
            <%--                </dd>--%>
            <%--            </dl>--%>

        </div>
        <!-- 翻页 -->
        <div class="paging1200 clearfix">

                                    <span class="jkbtnl pagingPrev">
                                        <a href="../jsp/jzfw_news.jsp"
                                           class="previousBtn tBtn">
                                                    <img src="../static/images/pagingprevbtn.png"
                                                         width="45" height="43"
                                                         alt="上一页">
                                                </a>
                                    </span>
            <p class="jk_num clearfix">
                <a href="/jsp/jzfw_news.jsp">1</a><a class="cur"> 2</a>
            </p>
            <span class="jkbtnr pagingNext">
                                        <a href="javascript:;" class="nextBtn tBtn">
                                            <img src="../static/images/pagingnextbtn.png"
                                                 width="45" height="43"
                                                 alt="下一页">
                                        </a>
                            </span>

        </div>
    </div>

</div>



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
<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/14
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="renderer" content="webkit">
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>加盟 </title>
    <link href="../static/css/common.css" rel="stylesheet" type="text/css">
    <link href="../static/css/tcommon.css" rel="stylesheet" type="text/css">
    <link href="../static/css/inpage.css" rel="stylesheet" type="text/css">
    <link href="../static/css/tinpage-1.0.css" rel="stylesheet" type="text/css">
    <link href="../static/css/fancybox.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="../static/css/swiper.css" />
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



<!-- 行业前景 -->
<div class="qianjing" id="hyqj">
    <div class="menu">
        <div class="item active"><a href="#hyqj">行业前景</a></div>
        <div class="item"><a href="#ppzc">品牌支持</a></div>
        <div class="item"><a href="#tzys">投资预算</a></div>
        <div class="item last"><a href="#sqjm">申请加盟</a></div>
    </div>
</div>

<!-- 格调 -->
<div class="gediao">
    <div class="inpageTitle" >
        <h3>智慧家政行业前景</h3>
        <p>让你立即享受连锁品牌的号召力</p>
        <i></i>
    </div>
    <img src="../static/images/pp.jpg" class="bg">
    <div class="content" id="gediaoBox">
        <ul>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

            <li>
                <div class="pic"><img src="../static/images/a8c9c61d6defc3f5.jpg" alt="品牌形象"></div>
                <p>品牌形象</p>
            </li>

        </ul>
    </div>
    <div class="btns">
        <div class="prev" id="gdleft"></div>
        <div class="dots" id="gddots">
            <span></span>
        </div>
        <div class="next" id="gdright"></div>
    </div>
</div>


<!-- 合作 -->
<div class="hezuo" id="ppzc">
    <div class="inpageTitle">
        <h3>社区邦携手合作平台布局全网</h3>
        <p>全国潜在客源持续挖掘中</p>
        <i></i>
    </div>
    <div class="content">
        <ul>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

        </ul>

        <ul>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

            <li><img src="../static/images/hezuo01.jpg" alt="合作"></li>

        </ul>
    </div>
</div>

<!-- 预算 -->
<div class="yusuan" id="tzys">
    <div class="inpageTitle">
        <h3>投资预算</h3>
        <p>把握互联网家政空白时期，小投入，一样赚大钱</p>
        <i></i>
    </div>
    <img src="../static/images/yusuan.png" class="bg">
    <img src="../static/images/yusuan01.jpg" class="tu">
</div>

<!-- 投资 -->
<div class="touzi">
</div>



<!-- 加盟 -->
<div class="liuyan" id="sqjm">
    <div class="inpageTitle">
        <h3>在线申请加盟</h3>
        <p>中小家政公司一体化加盟</p>
        <i></i>
    </div>
    <div class="content">
        <div class="leftCon">
        </div>
        <div class="rightCon">
            <form id="form1">
                <input type="text" placeholder="加盟的城市" data-tips="城市" data-type="txts">
                <input type="text" placeholder="您的姓名" data-tips="姓名" data-type="name">
                <input type="text" placeholder="您的电话" data-tips="电话" data-type="mobile">
                <button onclick="sendMsg('form1',19,'申请加盟',this)">立即申请</button>
            </form>
        </div>
    </div>
</div>



<!--是否设置分站-->
<input type="hidden" id="fenzhan" value="否">
<%--<script>--%>
<%--    $(function () {--%>

<%--        $("#gediaoBox").move({--%>
<%--            leftBtn:"#gdleft",--%>
<%--            rightBtn:"#gdright",--%>
<%--            direction:"left",--%>
<%--            carMethod:true,--%>
<%--            btnBox:"#gddots",--%>
<%--            showList:3--%>
<%--        })--%>
<%--    })--%>
<%--</script>--%><!-- 底部包含文件 -->
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
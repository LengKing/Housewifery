<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/14
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="renderer" content="webkit">
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>关于平台</title>
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


<div class="y-wrapper clearfix">

    <div class="aboutMenu" id="aboutMenu1ppjs">
        <ul class="clearfix">

            <li class="cur">
                <a href="../jsp/Main_gypt.jsp">图说家政</a>
            </li>

            <li>
                <a href="">创始人</a>
            </li>

            <li>
                <a href="">师资队伍</a>
            </li>

            <li>
                <a href="">荣誉资质</a>
            </li>

            <li>
                <a href="">品牌形象</a>
            </li>

            <li>
                <a href="">大事记</a>
            </li>


        </ul>
    </div>



<%--    <div class="aboutIntro">--%>
<%--        <div class="container">--%>
<%--            <div class="mub01Title">--%>
<%--                <h3><i class="xianL"></i>公司<em>简介</em><i class="xianR"></i></h3>--%>
<%--            </div>--%>
<%--            <div class="mainCon">--%>

<%--                <p><br/></p>--%>
<%--                <table width="1200" style="width: 1200px;">--%>
<%--                    <tbody>--%>
<%--                    <tr class="firstRow">--%>
<%--                        <td valign="middle" width="600" align="center"><img src="static/picture/2bb78d61dbb91126.jpg"--%>
<%--                                                                            title="社区邦简介" alt="社区邦简介" width="610"--%>
<%--                                                                            height="415" border="0" vspace="0"--%>
<%--                                                                            style="width: 610px; height: 415px;"/></td>--%>
<%--                        <td valign="middle" style="word-break: break-all;" align="left"><p--%>
<%--                                style="line-height: 1.75em; font-size: 32px; text-indent: 0em; margin-bottom: 15px; margin-top: 10px;">--%>
<%--                            <strong>走进社区邦</strong></p>--%>
<%--                            <p style="text-indent: 2em; margin-bottom: 10px; margin-top: 5px; line-height: 2em;"><span--%>
<%--                                    style="font-size: 16px;"></span><span style="font-size: 16px;">社区邦隶属于深圳市深家网络信息服务有限公司，致力于提供一站式高品质到家服务，<span--%>
<%--                                    style="font-size: 16px; text-indent: 28px;">提升家庭服务供给侧品质，充分利用互联网+技术，打造线上线下垂直一体化运营的先进模式和业务系统、营销系统，贯彻“以用户为中心”的产品思维，</span>倡导家政行业规范化、标准化和职业化。主要业务包含家庭保洁、企业保洁、家电清洗、月嫂、育婴、保姆和钟点工等家政服务，注重以互联网和信息化技术优化提升用户体验，进而促进行业示范及规模化。</span>--%>
<%--                            </p>--%>
<%--                            <p style="text-indent: 2em; margin-top: 5px; margin-bottom: 10px; line-height: 2em;"><span--%>
<%--                                    style="font-size: 16px;">社区邦采用“互联网+家政”O2O垂直一体化运营体系的先进模式，注重服务质量，服务产品通过ISO 9001质量体系认证，拥有丰富的家政资源——社区服务站+线上自媒体群+合作渠道+标准化产品+信息系统+培训学校+行业协会会长单位+民生工程。<br/></span>--%>
<%--                            </p>--%>
<%--                            <p style="text-indent: 2em;"><span style="font-size: 16px;"></span></p>--%>
<%--                            <p style="text-indent: 2em;"><br/></p></td>--%>
<%--                    </tr>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--                <p style="line-height: 1.75em;"><br/></p>--%>
<%--                <p><br/></p>--%>
<%--                <table width="1200" style="width: 1200px;">--%>
<%--                    <tbody>--%>
<%--                    <tr class="firstRow">--%>
<%--                        <td valign="middle" style="word-break: break-all;" align="left"><p--%>
<%--                                style="text-indent: 2em; margin-bottom: 10px; margin-top: 5px; line-height: 2.2em;">--%>
<%--                            <span style="font-size: 16px;"></span><span style="font-size: 16px; text-indent: 32px;">社区邦作为深圳市消费者口碑榜十佳企业，不断完善其专业化、职业化、规范化的培训体系，积极响应国家发展改革委办公厅、人力资源社会保障部办公厅、商务部办公厅2018年5月印发了《关于请报送家政服务业发展典型案例的通知》（发改办社会〔2018〕642号），作为全国范围内征集的家政服务业发展典型案例，社区邦其“垂直一体化”家政加盟运营模式引发高度关注，并光荣上榜，社区邦</span><span--%>
<%--                                style="font-size: 16px; text-indent: 28px;">注重提升家庭服务供给侧品质，</span><span--%>
<%--                                style="font-size: 16px; text-indent: 32px;">希望在总结家政服务业发展经验与模式方面能贡献一份小小的力量。</span><span--%>
<%--                                style="font-size: 16px;"></span></p></td>--%>
<%--                        <td valign="top" width="580" align="right"><img src="static/picture/73e7d252f0fc4960.jpg"--%>
<%--                                                                        title="社区邦家政" alt="社区邦家政" width="560"--%>
<%--                                                                        height="284" border="0" vspace="0"--%>
<%--                                                                        style="width: 560px; height: 284px;"/></td>--%>
<%--                    </tr>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--                 <p style="text-align: center; margin-top: 15px;"><strong><span--%>
<%--                        style="color: rgb(255, 125, 40); font-size: 32px;">社区邦风采</span></strong></p>--%>
<%--                <p style="margin-bottom: 10px; text-indent: 0em; white-space: normal; line-height: 1.75em;"><span--%>
<%--                        microsoft="" color:="" style="font-size: 14px;"><strong><strong--%>
<%--                        style="font-size: 18px; line-height: 24.5px; white-space: normal;"></strong></strong></span></p>--%>
<%--                <p style="text-align: center;"><span style="color: rgb(127, 127, 127);">Dumuda Introduction</span></p>--%>
<%--                <p style="text-align: center; margin-top: 10px;"><img src="static/picture/e7dff04965f84f23.jpg"--%>
<%--                                                                      title="社区邦家政" alt="社区邦家政" width="1200"--%>
<%--                                                                      height="550" border="0" vspace="0"--%>
<%--                                                                      style="width: 1200px; height: 550px;"/></p>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>


    <div class="aboutMien">
        <div class="container">
            <div class="mub01Title">
                <a href="">
                    <h3><i class="xianL"></i>图说<em>智慧家政</em><i class="xianR"></i></h3>
                </a>
            </div>
            <div class="mainCon">
                <span class="btn01" id="aboutMienBtn01"></span>
                <span class="btn02" id="aboutMienBtn02"></span>
                <div class="aboutMienCon">
                    <div id="aboutMien" class="aboutMienBox">

                        <div class="iteam">
                            <b></b>
                            <a href="">
                                <img src="../static/images/tushuo.jpg" alt="关于平台">
                            </a>
                            <p><a href="">关于平台</a></p>
                        </div>

                        <div class="iteam">
                            <b></b>
                            <a href="">
                                <img src="../static/images/tushuo.jpg" alt="关于平台">
                            </a>
                            <p><a href="">关于平台</a></p>
                        </div>

                        <div class="iteam">
                            <b></b>
                            <a href="">
                                <img src="../static/images/tushuo.jpg" alt="关于平台">
                            </a>
                            <p><a href="">关于平台</a></p>
                        </div>

                        <div class="iteam">
                            <b></b>
                            <a href="">
                                <img src="../static/images/tushuo.jpg" alt="关于平台">
                            </a>
                            <p><a href="">关于平台</a></p>
                        </div>

                        <div class="iteam">
                            <b></b>
                            <a href="">
                                <img src="../static/images/tushuo.jpg" alt="关于平台">
                            </a>
                            <p><a href="">关于平台</a></p>
                        </div>

                        <div class="iteam">
                            <b></b>
                            <a href="">
                                <img src="../static/images/tushuo.jpg" alt="关于平台">
                            </a>
                            <p><a href="">关于平台</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        msw_jzt("aboutMien", "aboutMienBtn01", "aboutMienBtn02", "iteam", "p", 4000, 3, 50);
    </script>

    <div class="aboutHistory">

    </div>
</div>
<script>
    var Bool = false;
    var Scro = $("#scroll");
    var Scrp = $("#aboutHistoryP");
    var Scrobd = $("#aboutHistoryGd");
    var Scroul = $("#aboutHistoryUl");
    var Scrp_Height = Scrp.outerHeight() / 2;
    var Num2 = Scro.outerHeight() - Scrp.outerHeight();
    var offsetX = 0;
    var offsetY = 0;
    Scrp.mousedown(function (e) {
        Bool = true;
    });
    $(document).mouseup(function () {
        Bool = false;
    });
    $(document).mousemove(function (e) {
        if (Bool) {
            var Num1 = e.clientY - (Scro.position().top + 100);
            var y = Num1 - Scrp_Height;
            if (y <= 1) {
                Scrll(0);
                Scrp.css("top", 1);
            } else if (y >= Num2) {
                Scrp.css("top", Num2);
                Scrll(Num2);
            } else {
                Scrll(y);
            }
        }
    });

    function Scrll(y) {
        Scrp.css("top", y);
        Scroul.css("margin-top", -(y / (Scro.outerHeight() - Scrp.outerHeight())) * (Scroul.outerHeight() - Scrobd.height()));
    }

    if (document.getElementById("aboutHistory").addEventListener)
        document.getElementById("aboutHistory").addEventListener('DOMMouseScroll', wheel, true);
    document.getElementById("aboutHistory").onmousewheel = wheel;
    var Distance = Num2 * 0.1;

    function wheel(e) {
        var evt = e || window.event;
        var wheelDelta = evt.wheelDelta || evt.detail;
        if (wheelDelta == -120 || wheelDelta == 3) {
            var Distances = Scrp.position().top + Distance;
            if (Distances >= Num2) {
                Scrp.css("top", Num2);
                Scrll(Num2);
            } else {
                Scrll(Distances);
            }
            return false;
        } else if (wheelDelta == 120 || wheelDelta == -3) {
            var Distances = Scrp.position().top - Distance;
            if (Distances <= 1) {
                Scrll(0);
                Scrp.css("top", 1);
            } else {
                Scrll(Distances);
            }
            return false;
        }
    }
</script>


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
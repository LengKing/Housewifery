<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/7
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <title>首页</title>

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

<!--萝卜丝·智能客服代码 开始 -->
<div id="byteDesk"></div>
<script type="text/javascript">
    window.adminUid = "202009071057111";
    window.workGroupWid = "202009071057114";
    window.subDomain = "057112";
    window.type = "workGroup";
    window.agentUid = "";
    (function () {
        d = document;
        s = d.createElement("script");
        s.src = "https://cdn.bytedesk.com/js/float/narrow/index.js";
        s.async = 1;
        d.getElementsByTagName("head")[0].appendChild(s);
    })();
</script>
<!--./萝卜丝·智能客服代码 结束 -->

<script type="text/javascript">
    (function(){
        startKeFuChat = function () {
            document.getElementById("byteDesk-start").click();
        }
    })();
</script>
<!--头部包含文件-->
<!-- header -->
<div class="header">
    <div class="header-top">
        <div class="content">
            <p>欢迎来到XXXX网站！</p>
            <div class="rightCon">
                <a>欢迎：${sessionScope.user.name}</a>
                <a href="../jsp/User_login.jsp" target="_self">登录</a>
                <a href="../jsp/Resig_user.jsp" target="_self">注册</a>
                <a href="../jsp/Main_lxpt.jsp" target="_self">联系平台</a>
                <a href="">工作机会</a>
            </div>
        </div>
    </div>
    <div class="header-center">
        <h1><a href="">XXXX智慧家政</a></h1>
        <h2><img src="../static/images/logo_text.png"></h2>
        <div class="search">
            <form>
                <input  id="title" type="text" name="word" placeholder="家庭清洁">
                <button id="btn" type="button" >搜　索</button>
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

<!-- banner -->
<div class="banner">
    <div class="swiper-container banner-swiper">
        <div class="swiper-wrapper">

            <div class="item swiper-slide"><a title="家政1" style="background-image:url(../static/images/gg1.jpg)"></a></div>

            <div class="item swiper-slide"><a title="家政2" style="background-image:url(../static/images/gg2.jpg)"></a></div>

            <div class="item swiper-slide"><a title="家政3" style="background-image:url(../static/images/gg3.jpg)"></a></div>

            <div class="item swiper-slide"><a title="家政4" style="background-image:url(../static/images/gg4.jpg)"></a></div>

        </div>

        <div class="swiper-pagination swiper-banner-pagination"></div>
        <div class="arrow">
            <div class="prev"></div>
            <div class="next"></div>
        </div>
    </div>
</div>

<!-- 难题 -->
<div class="nanti">
    <div class="common-title wow">
        <h3>小家政公司<b>经营难题</b></h3>
        <p>如何跳当下的经营怪圈？</p>
    </div>
    <div class="content">
        <div class="item wow">
            <h3>没<span>客源</span></h3>
            <p>无渠道开拓新客？</p>
        </div>
        <div class="item wow">
            <h3>没<span>产品</span></h3>
            <p>无法满足更多产品要求？</p>
        </div>
        <div class="item wow">
            <h3>没<span>品牌</span></h3>
            <p>很难取得新客户信任？</p>
        </div>
        <div class="item wow">
            <h3>没<span>管理</span></h3>
            <p>忙来忙去一团糟？</p>
        </div>
        <div class="item wow">
            <h3>没<span>标准</span></h3>
            <p>客户总说不专业？</p>
        </div>
    </div>
</div>

<!-- 需要什么 -->
<div class="xuyao">
    <div class="common-title wow">
        <h3>你需要<b>拥有什么?</b></h3>
        <p>互联网时代，小家政公司如何挣大钱？</p>
    </div>
    <div class="content">
        <div class="item wow">
            <img src="../static/images/xuyao01.png">
            <h3>互联网精准客源</h3>
            <p>进入互联网客户所在区<br>获得海量客户</p>
        </div>
        <div class="item wow">
            <img src="../static/images/xuyao02.png">
            <h3>互联网营销技巧</h3>
            <p>复制成功的互联网营销技巧<br>不用走弯路</p>
        </div>
        <div class="item wow">
            <img src="../static/images/xuyao03.png">
            <h3>完整的产品链</h3>
            <p>客户想要的家政服务<br>一站式提供</p>
        </div>
        <div class="item wow">
            <img src="../static/images/xuyao04.png">
            <h3>品牌影响力</h3>
            <p>借助品牌力量<br>快速赢得客户信任</p>
        </div>
        <div class="item wow">
            <img src="../static/images/xuyao05.png">
            <h3>软件管理系统</h3>
            <p>拥有先进的管理系统<br>一键管控更轻松</p>
        </div>
        <div class="item wow">
            <img src="../static/images/xuyao06.png">
            <h3>专业技术支撑</h3>
            <p>掌握标准化服务技能<br>赢得客户好评与续约</p>
        </div>
    </div>
</div>

<!-- 赋能 -->
<div class="funeng">
    <div class="common-title wow">
        <h3>智慧家政 · 赋能<b>中小家政公司</b></h3>
        <p>挖掘小家政公司的更多赚钱潜力</p>
    </div>
    <div class="menu">

        <div class="item">加盟1</div>

        <div class="item">加盟2</div>

        <div class="item">加盟3</div>

        <div class="item">加盟4</div>

        <div class="item">加盟5</div>

        <div class="item">加盟6</div>

    </div>
    <div class="fnbox">

        <div class="item" style="background-image:url(/static/images/4884fc0a96aa4f3d.jpg)">
            <div class="content">
                <div class="text">
                    <h3>汇聚全国351个地区海量精准家庭客户、<br/>企业客户携手多个大型平台全网覆盖式吸收客源</h3><p>携手百度、美团、大众点评、京东到家等，全网覆盖式吸收精准客户，建立专属粘性体系稳固平台客源。</p><p><a href="../jsp/Main_ruzhu.jsp">抢先加盟，拿走你附近的客源</a></p>
                </div>
            </div>
        </div>

        <div class="item" style="background-image:url(/static/images/7873597b09790788.jpg)">
            <div class="content">
                <div class="text">
                    <h3>直接复制成功门店的赚钱方法<br/>现成营销方法锁定周边客户群</h3><p>市场调研、定价、促销策略、团队管理、服务品质管控等，由实战导师一对一全程指导。</p><p><a href="../jsp/Main_ruzhu.jsp">加盟咨询</a></p>
                </div>
            </div>
        </div>

        <div class="item" style="background-image:url(/static/images/2097c0724476a748.jpg)">
            <div class="content">
                <div class="text">
                    <h3>立即拥有完整的家政产品链<br/>每项服务都有参考的标准及方法</h3><p>智慧家政拥有专属服务标准，并持续开发新产品服务，让每项服务都有参照的标准及方法。</p><p><a href="../jsp/jzfw.jsp">去看有哪些产品服务 &gt;&gt;</a></p>
                </div>
            </div>
        </div>

        <div class="item" style="background-image:url(/static/images/28390e1adc12bcb8.jpg)">
            <div class="content">
                <div class="text">
                    <h3>马上享有连锁品牌的影响力<br/>互联网品牌广告全网大力宣传</h3><p>互联网家政品牌典范，品牌VI、工服、标配工具、宣传物料、法务团队、风险评估全支持。</p><p><a href="../jsp/Main_ruzhu.jsp">查看品牌支持 &gt;&gt;</a></p>
                </div>
            </div>
        </div>

        <div class="item" style="background-image:url(/static/images/2618520d120ef66b.jpg)">
            <div class="content">
                <div class="text">
                    <h3>千万级管理软件一键管控更轻松<br/>一键管订单/一键财务分析/一键管员工/一键管客户</h3><p>千万资金注入研发，9年沉淀，打造成熟稳定的家政服务管理系统，独立后台可视化管理。</p><p><a href="../jsp/Main_ruzhu.jsp">去发现系统更多功能 &gt;&gt;</a></p>
                </div>
            </div>
        </div>

        <div class="item" style="background-image:url(/static/images/9f4e4d24e6ecd780.jpg)">
            <div class="content">
                <div class="text">
                    <h3>营销/管理/技能 零基础速成<br/>理论与实践双管齐下 只教真本事</h3><p>智慧家政，拥有行业重量级师资队伍，为你快速打造一支精英团队。</p><p><a href="../jsp/Main_gypt.jsp">了解智慧家政 &gt;&gt;</a></p>
                </div>
            </div>
        </div>

    </div>
</div>


<!-- 加盟 -->
<div class="jiameng">
    <div class="content">
        <div class="left">
            <div class="top">
                <h3>加盟<em>智慧家政</em></h3>
                <p>让你立即拥有品牌完整产品链</p>
            </div>
            <div class="bottom">
                <h4>全空间无死角深层洁净</h4>
                <span>Deep Cleaning without Dead Angle in Full Space</span>
                <img src="../static/images/jm03.jpg">
<%--                    <div class="btns">--%>
<%--                        <a href="http://www.sqbang.com/help/jtqj.html" target="_self">家庭保洁</a>--%>
<%--                        <a href="http://www.sqbang.com/help/qyqj.html" target="_self">企业保洁</a>--%>
<%--                    </div>--%>
            </div>
        </div>
        <div class="center">
            <img src="../static/images/jm01.jpg" class="top">
            <div class="item item01">
                <img src="../static/images/jm04.jpg">
                <h4>月嫂</h4>
                <span>Baby Nurse</span>
            </div>
            <div class="item item02">
                <img src="../static/images/jm05.jpg">
                <h4>钟点工</h4>
                <span>Hourly workers</span>
            </div>
            <div class="item item03">
                <img src="../static/images/jm06.jpg">
                <h4>育婴</h4>
                <span>Baby raising</span>
            </div>
        </div>
        <div class="right">
            <div class="top">
                <img src="../static/images/jm02.jpg">
                <h4>保姆</h4>
                <span>Nanny</span>
            </div>
            <div class="bottom">
                <img src="../static/images/jm07.jpg">
                <img src="../static/images/jm08.jpg">
            </div>
        </div>
    </div>
    <a href="../jsp/jzfw.jsp" class="more" target="_self">了解详情</a>
</div>

<!-- 客户评价 售后反馈 -->
<div class="kecheng">
    <div class="common-title wow">
        <h3>好评 · 售后 · 反馈<b>实时监测</b></h3>
        <p>真实生活</p>
    </div>
    <div class="content">
        <div class="left">
            <a><img src="../static/images/pj1.jpg"></a>
        </div>
        <div class="right">
            <div class="swiper-container kecheng-swiper">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <div class="item">
                            <div class="text">
                                <h3>家庭保洁+下单时间+下单市区</h3>
                                <p>赞赞赞赞赞赞</p>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="item">
                            <div class="text">
                                <h3>月嫂+下单时间+下单市区</h3>
                                <p>赞赞赞赞赞赞</p>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="item">
                            <div class="text">
                                <h3>育婴师+下单时间+下单市区</h3>
                                <p>赞赞赞赞赞赞</p>
                            </div>

                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="item">
                            <div class="text">
                                <h3>日常保洁+下单时间+下单市区</h3>
                                <p>赞赞赞赞赞赞</p>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="item">
                            <div class="text">
                                <h3>家庭早教师+下单时间+下单市区</h3>
                                <p>赞赞赞赞赞赞</p>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">

                    </div>


                </div>
            </div>
        </div>
    </div>
</div>





<!-- 底部包含文件 -->
<!-- foter -->
<%--<div class="footer">--%>
<%--    <div class="content">--%>
<%--        <div class="item">--%>
<%--            <h3><a href="http://www.sqbang.com/help/jzfw.html" target="_blank">家政服务</a></h3>--%>

<%--            <p><a href="http://www.sqbang.com/help/jtqj.html">家庭清洁</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/qyqj.html">企业清洁</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/bm.html">保姆</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/ys.html">月嫂</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/yy.html">育婴</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/help/20190723111533169.html.html">钟点工</a></p>--%>

<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <h3><a href="http://www.sqbang.com/help/jzfw.html" target="_blank">家政培训</a></h3>--%>

<%--            <p><a href="http://www.sqbang.com/product/zxkk.html"> 最新开课</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/product/jzpxxm.html">家政培训项目</a></p>--%>

<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <h3><a href="http://www.sqbang.com/help/ppzs.html" target="_blank">加盟社区邦</a></h3>--%>

<%--            <p><a href="http://www.sqbang.com/help/ppzs.html#hyqj">行业前景</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/ppzs.html#ppzc">品牌支持</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/ppzs.html#tzys">投资预算</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/ppzs.html#khjz">客户见证</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/hzhb.html">合作伙伴</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/ppzs.html#sqjm">申请加盟</a></p>--%>

<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <h3><a href="http://www.sqbang.com/help/" target="_blank">关于社区邦</a></h3>--%>

<%--            <p><a href="http://www.sqbang.com/help/ppjs.html">品牌介绍</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/csr.html">创始人</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/szdwqh.html">师资队伍</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/ryzz.html">荣誉资质</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/ppxx.html">品牌形象</a></p>--%>

<%--            <p><a href="http://www.sqbang.com/help/dsj.html">大事记</a></p>--%>

<%--        </div>--%>

<%--    </div>--%>
<%--    <div class="phone">--%>
<%--        全国服务热线：400-00-00000 / 品牌加盟专线：0755-36907516--%>
<%--    </div>--%>
<%--    <!--    <div class="text">-->--%>
<%--    <!--        <p>版权所有：深圳市深家网络信息服务有限公司　<a href="http://www.beian.miit.gov.cn/" target="_blank" rel="nofollow">粤ICP备11103067号-8</a></p>-->--%>
<%--    <!--        <p>技术支持：<a href="http://www.shenduwang.cn/" target="_blank" rel="nofollow" >深度网</a></p>            -->--%>
<%--    <!--    </div>-->--%>
<%--</div>--%>



<!--是否设置分站-->
<input type="hidden" id="fenzhan" value="否">
</body>
</html>
<script type="text/javascript">
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
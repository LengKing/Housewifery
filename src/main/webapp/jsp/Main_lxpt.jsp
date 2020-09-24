<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/14
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="renderer" content="webkit">
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>联系平台</title>
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
    <style type="text/css">
        html,body{margin:0;padding:0;}
        .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
        .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
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


<div class="y-wrapper clearfix">

    <div class="aboutMenu" id="aboutMenu1lxwm">
        <ul class="clearfix">

            <li class="cur">
                <a href="">联系我们</a>
            </li>

            <li>
                <a href="">人才招聘</a>
            </li>


        </ul>
    </div>

    <div class="contact-us1200">
        <!-- linkUsMap -->
        <div class="linkUsMap">
            <div class="container">
                <div class="mainCon clearfix">

                    <p><br/></p>
                    <p style="text-align: center; margin-bottom: 10px; margin-top: 10px;"><span
                            style="text-align: center; font-size: 28px; color: rgb(255, 125, 40);">联系智慧家政</span><span
                            style="text-align: center; color: rgb(0, 0, 0); font-size: 28px;"><br/></span></p>
                    <p style="text-align: center; margin-bottom: 10px;"><span
                            style="font-size: 16px; color:  rgb(127, 127, 127);">Contact us</span></p>
                    <p style="border-bottom: 1px dashed #ddd;margin-bottom: 25px;"><br/></p>
                    <table width="100%" style="width: 1167px; margin: 0px auto;">
                        <tbody>
                        <tr class="firstRow">
                            <td width="678" valign="top" style="word-break: break-all;"><p
                                    style="line-height: 2em; margin-bottom: 15px; margin-top: 25px;"><img
                                    src="../static/images/3dac144d08ae140e.png" title="hi" alt="hi"/>&nbsp;欢迎您进入<span
                                    style="letter-spacing: 1pt; font-family: arial, helvetica, sans-serif; font-size: 14px;">智慧家政</span>官方网站！感谢您对<span
                                    style="font-family: arial, helvetica, sans-serif; letter-spacing: 1.33333px;">智慧家政</span>的信赖！“智慧家政”注重提升家庭服务供给侧品质，充分利用互联网+技术，打造线上线下垂直一体化运营的模式和业务系统、营销系统，贯彻“以用户为中心”的产品思维，通过专业化、标准化、职业化的服务和培训体系，提升团队运营能力和服务人员的专业服务水准，用心服务好每一个客户。我们每天都在用微笑欢迎您的到访，服务热线：<span
                                    style="font-size: 20px; color: rgb(255, 125, 40);"><strong><span
                                    style="font-size: 20px; text-align: center; background-color: rgb(255, 255, 255);">400-00-00000</span></strong></span>
                            </p></td>
                            <td width="162" valign="top" style="word-break: break-all;" align="right"><img
                                    src="../static/images/erweima.jpg" title="智慧家政二维码" alt="智慧家政二维码" width="200"
                                    height="200" border="0" vspace="0" style="width: 200px; height: 200px;"/></td>
                        </tr>
                        </tbody>
                    </table>
                    <p style="border-bottom: 1px dashed #ddd;margin-bottom: 25px;"><br/></p>
                    <table align="center" style="width: 100%;margin: 0 auto;">
                        <tbody>
                        <tr class="firstRow">
                            <td width="460"
                                style="background: rgb(244, 244, 244); border: 4px solid rgb(255, 255, 255); word-break: break-all;"
                                valign="middle" align="center" height="203"><p style="margin-top: 15px;"><img
                                    src="../static/images/587fa37330054e70.png" title="电话" alt="电话" width="50" height="50"
                                    border="0" vspace="0" style="width: 50px; height: 50px;"/></p>
                                <p style="margin-top: 15px; margin-bottom: 15px;"><span
                                        style="font-size: 16px;"><strong><span
                                        style="color: rgb(12, 12, 12);">联系方式</span></strong></span></p>
                                <p style="margin-top: 15px; margin-bottom: 5px;"><span
                                        style="font-size: 18px; color: rgb(12, 12, 12);"></span></p>
                                <p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;">0000-<span
                                        style="text-align: -webkit-center; background-color: rgb(244, 244, 244);">88888888</span>
                                </p></td>
                            <td width="460"
                                style="background: rgb(244, 244, 244); border: 4px solid rgb(255, 255, 255); word-break: break-all;"
                                valign="middle" align="center" height="203"><p style="margin-top: 15px;"><img
                                    src="../static/images/caa9f1e098ca4d8e.png" title="邮箱" alt="邮箱" width="50" height="50"
                                    border="0" vspace="0" style="width: 50px; height: 50px;"/></p>
                                <p style="margin-top: 15px;"><span style="font-size: 16px;"><strong><span
                                        style="color: rgb(12, 12, 12);">邮 箱</span></strong></span></p>
                                <p style="margin-top: 15px;"><span>zhjz@zhjz.com</span>
                                </p></td>
                            <td valign="middle" align="center" colspan="1" rowspan="1" width="460"
                                style="background: rgb(244, 244, 244); word-break: break-all;" height="203"><p
                                    style="padding: 0px; text-align: -webkit-center; white-space: normal; margin-bottom: 10px; margin-top: 15px;">
                                <img src="../static/images/db306c84c4540c5.png" title="微信" alt="微信"/></p>
                                <p style="margin-top: 15px; margin-bottom: 0px; padding: 0px; text-align: -webkit-center; white-space: normal;">
                                    <span style="color:#0c0c0c"><span
                                            style="font-size: 16px;"><strong>微信</strong></span></span></p>
                                <p style="margin-top: 15px; margin-bottom: 0px; padding: 0px; text-align: -webkit-center; white-space: normal;">
                                    18888888888</p></td>
                            <td width="460"
                                style="background: rgb(244, 244, 244); border: 4px solid rgb(255, 255, 255); word-break: break-all;"
                                valign="middle" align="center" height="203"><p style="margin-top: 15px;"><img
                                    src="../static/images/4492b8646b894a7e.png" title="收货地址" alt="收货地址" width="50"
                                    height="50" border="0" vspace="0" style="width: 50px; height: 50px;"/></p>
                                <p style="margin-top: 15px;"><span
                                        style="color: rgb(12, 12, 12); font-size: 16px;"><strong><span
                                        style="color: rgb(12, 12, 12); text-align: center;">地 址</span></strong></span>
                                </p>
                                <p style="margin-top: 15px;">软件园二期XXXX</p></td>
                        </tr>
                        </tbody>
                    </table>
                    <p><br/></p>
                    <!--百度地图容器-->
                    <div style="width:1200px;height:500px;border:#ccc solid 1px;" id="dituContent"></div>

                </div>
            </div>
        </div>


        <!--是否设置分站-->
        <input type="hidden" id="fenzhan" value="否">
    </div>
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

<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }

    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(118.173513,24.488118);//定义一个中心点坐标
        map.centerAndZoom(point,15);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        map.addControl(ctrl_sca);
    }

    //标注点数组
    var markerArr = [{title:"智慧家政",content:"这是公司的位置",point:"118.184886|24.498755",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
    ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor:"#808080",
                color:"#333",
                cursor:"pointer"
            });

            (function(){
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click",function(){
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open",function(){
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close",function(){
                    _marker.getLabel().show();
                })
                label.addEventListener("click",function(){
                    _marker.openInfoWindow(_iw);
                })
                if(!!json.isOpen){
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://map.baidu.com/image/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }

    initMap();//创建和初始化地图
</script>
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
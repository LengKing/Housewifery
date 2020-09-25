<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2020/9/24
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <title>个人中心</title>

    <script type="text/javascript" src="../static/js/1.9.1jquery.min.js" charset="utf-8"></script>
    <link href="../static/css/tcommon.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="../static/css/common.css" />
    <link type="text/css" rel="stylesheet" href="../static/css/index.css" />
    <link type="text/css" rel="stylesheet" href="../static/css/swiper.css" />
    <link type="text/css" rel="stylesheet" href="../static/css/animate.css" />
    <script type="text/javascript" charset="utf-8" src="../static/js/common.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/swiper.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/wow.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/js/tcommon-1.0.js"></script>
    <script src="../static/js/index.js" charset="utf-8" type="text/javascript"></script>
    <script src="../static/layui/layui.js" charset="UTF-8"></script>

</head>
<style type="text/css">
    *{margin:0;padding:0;list-style-type:none;}
    a,img{border:0;}
    body{font:12px/180% Arial, Helvetica, sans-serif, "宋体";}
    /* menuDiv */
    .menuDiv{border:1px solid #CCCCCC;background:#FFFFFF;padding:1px;}
    .menuDiv h3{font-size:14px;font-weight:bold;color:#FFFFFF;padding:5px 5px 5px 15px;background:#ff7d28;cursor:pointer;height:22px;line-height:22px;overflow:hidden;}
    .menuDiv ul li{color:#333333;background:#EEEEEE;padding:5px 5px 5px 15px;font-size:12px;margin:1px 0 0 0;height:16px;}
    .menuDiv ul li a{color:#333333;background:#F4F4F4;display:block;padding:5px 5px 5px 15px;font-size:12px;margin:-5px -5px -5px -15px;text-decoration:none;height:16px;}
    .menuDiv ul li a:hover{color:#FFFFFF;background:black;}
</style>
<style type="text/css">
    .menuDiv{
        transform:translateX(-50%);/**左移元素**/
        -ms-transform:translateX(-80%);
        -webkit-transform:translateX(-209%);
    }

    .page-content{
        transform:translateX(50%);/**右移元素**/
        -ms-transform:translateX(50%);
        -webkit-transform:translateX(50%);
    }
    .right{
        background-color: #ff7d28;
        height: 800px;
        width: 850px;
        transform:translateX(50%);/**右移元素**/
        -ms-transform:translateX(50%);
        -webkit-transform:translateX(70%);
    }


</style>
<body>
<div>
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
                <li><a href="../jsp/MoneyTb.jsp" target="_self">我的订单</a></li>

                <li mark='65' px='1'>
                    <a href="../jsp/EvaluationTb.jsp" target="_self">我的评价</a>
                </li>

                <li mark='47' px='2'>
                    <a href="../jsp/UserAddress.jsp target="_self">我的地址</a>
                </li>

                <li mark='88' px='3'>
                    <a href="../jsp/PostDemand.jsp" target="_self">账户</a>
                </li>

                <li mark='89' px='4'>
                    <a href="../jsp/Main_lxpt.jsp" target="_self">售后</a>
                </li>

            </ul>
        </div>
    </div>
</div>

<div class="layui-body">

    <div style="text-align: center">
        <iframe id="iframe" width="100%" height="99%" src="">


        </iframe>


    </div>

</div>
</div>




<script type="text/javascript">
    function MenuSwitch(className){
        this._elements = [];
        this._default = -1;
        this._className = className;
        this._previous = false;
    }
    MenuSwitch.prototype.setDefault = function(id){
        this._default = Number(id);
    }
    MenuSwitch.prototype.setPrevious = function(flag){
        this._previous = Boolean(flag);
    }
    MenuSwitch.prototype.collectElementbyClass = function(){
        this._elements = [];
        var allelements = document.getElementsByTagName("div");
        for(var i=0;i<allelements.length;i++){
            var mItem = allelements[i];
            if (typeof mItem.className == "string" && mItem.className == this._className){
                var h3s = mItem.getElementsByTagName("h3");
                var uls = mItem.getElementsByTagName("ul");
                if(h3s.length == 1 && uls.length == 1){
                    h3s[0].style.cursor = "hand";
                    if(this._default == this._elements.length){
                        uls[0].style.display = "block";
                    }else{
                        uls[0].style.display = "none";
                    }
                    this._elements[this._elements.length] = mItem;
                }
            }
        }
    }
    MenuSwitch.prototype.open = function(mElement){
        var uls = mElement.getElementsByTagName("ul");
        uls[0].style.display = "block";
    }
    MenuSwitch.prototype.close = function(mElement){
        var uls = mElement.getElementsByTagName("ul");
        uls[0].style.display = "none";
    }
    MenuSwitch.prototype.isOpen = function(mElement){
        var uls = mElement.getElementsByTagName("ul");
        return uls[0].style.display == "block";
    }
    MenuSwitch.prototype.toggledisplay = function(header){
        var mItem;
        if(window.addEventListener){
            mItem = header.parentNode;
        }else{
            mItem = header.parentElement;
        }
        if(this.isOpen(mItem)){
            this.close(mItem);
        }else{
            this.open(mItem);
        }
        if(!this._previous){
            for(var i=0;i<this._elements.length;i++){
                if(this._elements[i] != mItem){
                    var uls = this._elements[i].getElementsByTagName("ul");
                    uls[0].style.display = "none";
                }
            }
        }
    }
    MenuSwitch.prototype.init = function(){
        var instance = this;
        this.collectElementbyClass();
        if(this._elements.length==0){
            return;
        }
        for(var i=0;i<this._elements.length;i++){
            var h3s = this._elements[i].getElementsByTagName("h3");
            if(window.addEventListener){
                h3s[0].addEventListener("click",function(){instance.toggledisplay(this);},false);
            }else{
                h3s[0].onclick = function(){instance.toggledisplay(this);}
            }
        }
    }
</script>



<script language="javascript">
    var mSwitch = new MenuSwitch("menuDiv");
    mSwitch.setDefault(0);
    mSwitch.setPrevious(false);
    mSwitch.init();
</script>


</body>
</html>

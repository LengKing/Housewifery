<%--
  Created by IntelliJ IDEA.
  User: ZhangZeMing
  Date: 2020/9/24
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <style>
        body {
            margin: 0;
            overflow: hidden;
            background: linear-gradient(to bottom, #19778c, #095f88);
            background-size: 1400% 300%;
            animation: dynamics 6s ease infinite;
            -webkit-animation: dynamics 6s ease infinite;
            -moz-animation: dynamics 6s ease infinite;
            font-size: 14px;
            color: #ffffff;
            min-height: 700px;
        }

        /*登录样式*/
        .main {
            position: fixed;
            text-align: center;
            top: 182px;
            width: 100%;
            height: auto;
            display: flex;
            justify-content: center;
        }

        .login {
            width: 470px;
            height: 800px;
            background: linear-gradient(to bottom, #19778c, #095f88);
            animation: dynamics 6s ease infinite;
            -webkit-animation: dynamics 6s ease infinite;
            -moz-animation: dynamics 6s ease infinite;
            opacity: 0.9;
            border: solid 1px #13a1fc;
            background-size: 1400% 300%;
        }

        @keyframes dynamics {
            0% {
                background-position: 0% 0%;
            }
            50% {
                background-position: 50% 100%;
            }
            100% {
                background-position: 100% 0%;
            }
        }

        .log-con {
            background: linear-gradient(#13a1fc, #13a1fc) left top, linear-gradient(#13a1fc, #13a1fc) left top,
            linear-gradient(#13a1fc, #13a1fc) right top, linear-gradient(#13a1fc, #13a1fc) right top,
            linear-gradient(#13a1fc, #13a1fc) left bottom, linear-gradient(#13a1fc, #13a1fc) left bottom,
            linear-gradient(#13a1fc, #13a1fc) right bottom, linear-gradient(#13a1fc, #13a1fc) right bottom;
            background-repeat: no-repeat;
            background-size: 3px 20px, 20px 3px;
            height: 100%;
            margin: -2px;
            padding: 3px 1px 1px 0;
            border-radius: 3px;
        }

        .log-con > span {
            font-size: 30px;
            font-weight: bold;
            line-height: 24px;
            letter-spacing: 2px;
            display: block;
            margin: 20px 0 44px 0;
        }

        .log-con > span::after {
            display: block;
            content: '';
            width: 57px;
            height: 3px;
            background: #ffffff;
            margin-top: 16px;
            justify-content: center;
            position: relative;
            left: 206px;
        }

        .log-con > input {
            display: block;
            margin: 10px 0 32px 70px;
            width: 330px;
            height: 42px;
            background-color: #ffffff;
            border-radius: 4px;
            opacity: 0.9;
            border: 0;
            font-size: 16px;
            outline: none;
            padding-left: 10px;
            color: #000000;
        }

        .log-con > a {
            width: 340px;
            height: 44px;
            background-color: #0090ff;
            border-radius: 4px;
            display: block;
            margin: 10px 0 0 70px;
            text-align: center;
            line-height: 44px;
            cursor: pointer;
            opacity: 1;
        }

        .log-con > button {
            width: 340px;
            height: 44px;
            background-color: #0090ff;
            border-radius: 4px;
            display: block;
            margin: 10px 0 0 70px;
            text-align: center;
            line-height: 44px;
            cursor: pointer;
            opacity: 1;
        }

        input::-webkit-input-placeholder {
            color: #000000;
            font-size: 16px;
        }

        .log-con > .code {
            width: 216px;
            display: inline-block;
            margin-left: 6px;
        }

        .log-con > #code {
            width: 94px;
            display: inline-block;
            margin-left: 14px;
            cursor: pointer;
        }

        /*logo*/
        .logo {
            width: 168px;
            height: 75px;
            position: fixed;
            left: 150px;
            top: 26px;
        }

        .logo > img {
            max-width: 100%;
            max-height: 100%;
        }

        /*版权样式*/
        .copyright {
            position: fixed;
            bottom: 10px;
            font-size: 16px;
            display: block;
            width: 100%;
            text-align: center;
        }

        .error {
            color: red;
            text-align: left;
        }

        .input_text {
            width: 200px;
            height: 40px;
            border-radius: 10px;
            margin: 5px;
        }

        .regBtn {
            background: #12b5b0;
            height: 40px;
            color: white;
            font-size: 20px;
            margin-top: 20px;
            /*圆角*/
            border-radius: 30px;
            width: 150px;
        }

    </style>

    <%--    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>--%>
    <script src="/static/js/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="https://www.jq22.com/jquery/three.min.js"></script>

</head>
<body>

<form>
    <input type="hidden" id="path" value="${pageContext.request.contextPath}">
    <div class="main">
        <div class="login">
            <div class="log-con">
                <span>用户注册</span>
                <input type="text" class="name" id="name" name="name" placeholder="请输入用户名"/>
                <input type="password" class="account" id="account" name="password" placeholder="请输入账号"/>
                <input type="password" class="password" id="password" name="password" placeholder="请输入密码"/>
                <input class="form-control"  id="phone" type="text" style="height:40px" value=""  placeholder="手机号码11位"/>
                <div class="Vcode">
                    <input type="text" id="code" style="height: 44px"><a href="javascript:void(0)" id="getCode">获取短信验证码</a>
                </div>
                <input class="form-control"  id="address" type="text" style="height:40px" value=""  placeholder="请输入输入地址"/>
                <button id="resig" type="button"  onclick="addUser()">立即注册</button>
            </div>
        </div>
    </div>
</form>
<script>

    var SEPARATION = 100, AMOUNTX = 60, AMOUNTY = 40;
    var container;
    var camera, scene, renderer;
    var particles, particle, count = 0;
    var mouseX = 0, mouseY = 0;
    var windowHalfX = window.innerWidth / 2;
    var windowHalfY = window.innerHeight / 2;

    $(function () {
        init();		//初始化
        animate();	//动画效果
        // changeImag();	//验证码
    });

    //初始化
    function init() {

        container = document.createElement('div');	//创建容器
        document.body.appendChild(container);			//将容器添加到页面上
        camera = new THREE.PerspectiveCamera(120, window.innerWidth / window.innerHeight, 1, 1500);		//创建透视相机设置相机角度大小等
        camera.position.set(0, 450, 2000);		//设置相机位置

        scene = new THREE.Scene();			//创建场景
        particles = new Array();

        var PI2 = Math.PI * 2;
        //设置粒子的大小，颜色位置等
        var material = new THREE.ParticleCanvasMaterial({
            color: 0x0f96ff,
            vertexColors: true,
            size: 4,
            program: function (context) {
                context.beginPath();
                context.arc(0, 0, 0.01, 0, PI2, true);	//画一个圆形。此处可修改大小。
                context.fill();
            }
        });
        //设置长条粒子的大小颜色长度等
        var materialY = new THREE.ParticleCanvasMaterial({
            color: 0xffffff,
            vertexColors: true,
            size: 1,
            program: function (context) {

                context.beginPath();
                //绘制渐变色的矩形
                var lGrd = context.createLinearGradient(-0.008, 0.25, 0.016, -0.25);
                lGrd.addColorStop(0, '#16eff7');
                lGrd.addColorStop(1, '#0090ff');
                context.fillStyle = lGrd;
                context.fillRect(-0.008, 0.25, 0.016, -0.25);  //注意此处的坐标大小
                //绘制底部和顶部圆圈
                context.fillStyle = "#0090ff";
                context.arc(0, 0, 0.008, 0, PI2, true);    //绘制底部圆圈
                context.fillStyle = "#16eff7";
                context.arc(0, 0.25, 0.008, 0, PI2, true);    //绘制顶部圆圈
                context.fill();
                context.closePath();
                //绘制顶部渐变色光圈
                var rGrd = context.createRadialGradient(0, 0.25, 0, 0, 0.25, 0.025);
                rGrd.addColorStop(0, 'transparent');
                rGrd.addColorStop(1, '#16eff7');
                context.fillStyle = rGrd;
                context.arc(0, 0.25, 0.025, 0, PI2, true);    //绘制一个圆圈
                context.fill();

            }
        });

        //循环判断创建随机数选择创建粒子或者粒子条
        var i = 0;
        for (var ix = 0; ix < AMOUNTX; ix++) {
            for (var iy = 0; iy < AMOUNTY; iy++) {
                var num = Math.random() - 0.1;
                if (num > 0) {
                    particle = particles[i++] = new THREE.Particle(material);
                    console.log("material")
                } else {
                    particle = particles[i++] = new THREE.Particle(materialY);
                    console.log("materialY")
                }
                //particle = particles[ i ++ ] = new THREE.Particle( material );
                particle.position.x = ix * SEPARATION - ((AMOUNTX * SEPARATION) / 2);
                particle.position.z = iy * SEPARATION - ((AMOUNTY * SEPARATION) / 2);
                scene.add(particle);
            }
        }

        renderer = new THREE.CanvasRenderer();
        renderer.setSize(window.innerWidth, window.innerHeight);
        container.appendChild(renderer.domElement);
        //document.addEventListener( 'mousemove', onDocumentMouseMove, false );
        //document.addEventListener( 'touchstart', onDocumentTouchStart, false );
        //document.addEventListener( 'touchmove', onDocumentTouchMove, false );
        window.addEventListener('resize', onWindowResize, false);
    }

    //浏览器大小改变时重新渲染
    function onWindowResize() {
        windowHalfX = window.innerWidth / 2;
        windowHalfY = window.innerHeight / 2;
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize(window.innerWidth, window.innerHeight);
    }

    function animate() {
        requestAnimationFrame(animate);
        render();
    }

    //将相机和场景渲染到页面上
    function render() {
        var i = 0;
        //更新粒子的位置和大小
        for (var ix = 0; ix < AMOUNTX; ix++) {
            for (var iy = 0; iy < AMOUNTY; iy++) {
                particle = particles[i++];
                //更新粒子位置
                particle.position.y = (Math.sin((ix + count) * 0.3) * 50) + (Math.sin((iy + count) * 0.5) * 50);
                //更新粒子大小
                particle.scale.x = particle.scale.y = particle.scale.z = ((Math.sin((ix + count) * 0.3) + 1) * 4 + (Math.sin((iy + count) * 0.5) + 1) * 4) * 50;	//正常情况下再放大100倍*1200
            }
        }

        renderer.render(scene, camera);
        count += 0.1;
    }

</script>

<script type="text/javascript">
    var obj = document.getElementById("getCode");



    var flag = 60;
    obj.onclick = function () {
        if (flag < 60) {
            return;
        }


        var xhr = new XMLHttpRequest();
        xhr.open("get", "/getCode/service?phone="+ document.getElementById("phone").value,true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                alert(xhr.responseText);
            }
        }
        xhr.send(null);
        timer();

    }

    //校验验证码
    function validate() {
        if (flag < 60) {
            return;
        }
        var xhr = new XMLHttpRequest();
        xhr.open("get", "/validate/date?code=" + document.getElementById("code").value, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                alert(xhr.responseText);
            }
        }
        xhr.send(null);
    }

    function timer() {
        flag--;
        obj.innerHTML = flag + "秒以后重新刷新验证码"
        if (flag == 0) {
            obj.innerHTML = "获取短信验证码";
            flag = 60;

        } else {
            setTimeout("timer()", 1000);//递归调用
        }
    }


</script>
<script>
    function  addUser() {
        var name=$("#name").val();
        var account = $("#account").val();
        var password = $("#password").val();
        var phone = $("#phone").val();
        var address = $("#address").val();
        var gender = $("#gender").val();
        console.log(account+":"+password+"："+name);
        var  user = {"name":name,"account":account,"password":password,"phone":phone,"address":address,"gender":gender};
        var path = $("#path").val();
        $.ajax({
            url: path+"/user/userAdd",
            type:"post",
            data:user,
            dataType:"text",
            success:function (data) {
                alert("注册成功！即将跳转主界面");
                alert(data);
                if (data == "success"){
                    alert("注册成功")
                    location.href="/jsp/Page_Main.jsp";

                }else {
                    alert("注册了个寂寞！")

                }
            },


        })
    }
</script>

</body>
</html>
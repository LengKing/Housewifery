<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script src="../static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/tracking-min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/face-min.js"></script>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        .container {
            position: relative;
            width: 581px;
            height: 436px;
            float:left;
        }
        .message{
            float:right;
        }
        video, #canvas {
            position: absolute;
            width: 581px;
            height: 436px;
        }

    </style>
    <script>
        $(function () {
            var video = document.getElementById('video');
            var canvas = document.getElementById('canvas');
            var context = canvas.getContext('2d');
            var shortCut = document.getElementById('shortCut');
            var scContext = shortCut.getContext('2d');
            var time =10000;//向后台发照片的冷却时间
            layui.use('layer',function () {
                layer = layui.layer;
            })
            var tracker = new tracking.ObjectTracker('face');
            tracker.setInitialScale(6);
            tracker.setStepSize(2);
            tracker.setEdgesDensity(0.1);

            tracking.track('#video', tracker, {camera: true});
            var flag=true;
            tracker.on('track', function (event) {
                if (event.data.length === 0) {
                    context.clearRect(0, 0, canvas.width, canvas.height);
                }else{
                    context.clearRect(0, 0, canvas.width, canvas.height);
                    event.data.forEach(function (rect) {
                        context.strokeStyle = '#ff0000';
                        context.strokeRect(rect.x, rect.y, rect.width, rect.height);
                        context.fillStyle = "#ff0000";
                        //console.log(rect.x, rect.width, rect.y, rect.height);
                    });
                    if(flag){
                        layer.msg("识别中...");
                        getPhoto();
                        flag=false;
                        setTimeout(function(){flag=true;},time);
                    }else{
                        //console.log("冷却中");
                    }
                }
            });

            function getPhoto() {
                scContext.drawImage(video,0,0,290,218);
                var imgStr = shortCut.toDataURL("image/png");
                //讲拍照的图片数据发送到controller，调用百度云，签到，返回签到结果
                $.ajax({
                    url:"/face/searchFace",
                    type:"post",
                    dataType:"json",
                    data:{
                        imgStr:imgStr.substring(imgStr.indexOf(",")+1)
                    },
                    success:function(result){
                        console.log(result)
                        // if(parseInt(result.result.user_list[0].score) > 80) {
                        //     //关闭摄像头
                        //    // video.srcObject.getTracks()[0].stop();
                        //     //提醒用户识别成功
                        //     alert("验证成功!");
                        //     //验证成功跳转页面
                        //     //window.location.href="";
                        // }
                        // if(result.result == "true"){
                        //     if(result.user != "404"){
                        //         send("user_info:"+result.user);
                        //     }
                        // }

                    }
                });
            }
        });

    </script>
</head>
<body>
<div class="container" align="center">
    <video id="video" preload autoplay loop muted></video>
    <canvas id="canvas" width="581" height="436"></canvas>
</div>
<div class="message" style="display: none">
    <canvas id="shortCut" width="290" height="218" ></canvas>
    <div id="checkinMsg"></div>
</div>
</body>
</html>

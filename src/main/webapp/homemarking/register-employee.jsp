<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script src="../static/layui/layui.js" charset="utf-8"></script>
</head>
<body>
<p align="center">
    <button id="open">开启摄像头</button>
    <button id="close">关闭摄像头</button>
    <input id="number" type="text" placeholder="员工编号" onkeyup="value=value.replace(/[^A-Za-z\d]/g,'')">
    <button id="confirm">确认</button>
    <button id="CatchCode" disabled>拍照</button>
</p>
<div align="center">
    <video id="video" width="800px" height="600px" autoplay></video>
    <canvas hidden="hidden" id="canvas" width="626" height="800"></canvas>
</div>
</body>
<script type="text/javascript">
    var video;//视频流对象
    var context;//绘制对象
    var canvas;//画布对象
    layui.use('layer', function () {layer = layui.layer});
    $(function() {
        var flag = false;
        //开启摄像头
        $("#open").click(function() {
            //判断摄像头是否打开
            if (!flag) {
                //调用摄像头初始化
                open();
                flag = true;
            }
        });
        //关闭摄像头
        $("#close").click(function() {
            //判断摄像头是否打开
            if (flag) {
                video.srcObject.getTracks()[0].stop();
                flag = false;
            }
        });
        //拍照
        $("#CatchCode").click(function() {
            if (flag) {
                context.drawImage(video, 0, 0, 330, 250);
                CatchCode();
            } else
                alert("请先开启摄像头!");
        });
        //查询是否有该编号的员工
        $("#confirm").click(function() {
            var eId = $("#number").val();
            $.ajax({
                url: "/employee/findEmployeeById",
                data: 'employeeId=' + eId,
                type: 'post',
                dataType: 'text',
                success: function (data) {
                    if (data == 'exist') {
                        $('#CatchCode').removeAttr("disabled");
                    } else {
                        layer.msg("查找不到该员工编号，请检查");
                    }
                },
                error: function () {
                    layer.msg("发生了一点小问题..请稍后再试");
                }
            });
        });
        $("#number").focus(function() {
            $('#CatchCode').attr("disabled",true);
        });
    });
    //将当前图像传输到后台
    function CatchCode() {
        //获取图像
        var img = getBase64();
        var number = $("#number").val();
       // Ajax将Base64字符串传输到后台处理
        $.ajax({
            type : "POST",
            async : false,
            url : "/face/addEmployeeFace",
            data : {
                img : img,number : number
            },
            dataType : "JSON",
            success : function(data) {
                console.log(data)
                //返回的结果
            }
        });
    };
    //开启摄像头
    function open() {
        //获取摄像头对象
        canvas = document.getElementById("canvas");
        context = canvas.getContext("2d");
        //获取视频流
        video = document.getElementById("video");
        var videoObj = {
            "video" : true
        }, errBack = function(error) {
            console.log("Video capture error: ", error.code);
        };
        context.drawImage(video, 0, 0, 330, 250);
        //初始化摄像头参数
        if (navigator.getUserMedia || navigator.webkitGetUserMedia
            || navigator.mozGetUserMedia) {
            navigator.getUserMedia = navigator.getUserMedia
                || navigator.webkitGetUserMedia
                || navigator.mozGetUserMedia;
            navigator.getUserMedia(videoObj, function(stream) {
                video.srcObject = stream;
                video.play();
            }, errBack);
        }
    }
    //将摄像头拍取的图片转换为Base64格式字符串
    function getBase64() {
        //获取当前图像并转换为Base64的字符串
        var imgSrc = canvas.toDataURL("image/png");
        //截取字符串
        return imgSrc.substring(22);
    };
</script>
</html>

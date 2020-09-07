$(function () {
  
    //头部菜单首页高亮
    $("#navBox").find("li").eq(0).addClass("cur");
  
    //滚动监测动画    
    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
        new WOW().init();
    };

    //是否开启分站
    var isfenzhan = $("#fenzhan").val();
    if (isfenzhan == "是") {
        var DomainName = window.location.host;
        $.post("/SiteServer/Sdw/Ajax/ajax.ashx?action=GetFenZhan&t=" + Math.random(), {
            DomainName: DomainName,
            IndexName: "fenzhan",
            IsChecked: "true"
        }, function (msg) {
            if (msg != "") {
                msg = msg.split('&');
                for (var i = 0; i < msg.length; i++) {
                    var msgn = msg[i].split('=');
                    var fzClass = msgn[0];//分站样式类名就是新建虚拟字段英文或拼音,虚拟字段可以大小写，类名必须小写。如：class="email"
                    var fzValue = msgn[1];//分站值，如地址，电话，Email，QQ等等...
                    $("." + fzClass).html(fzValue);
                }
            }
        });
    }

    // banner
    var banner = new Swiper ('.banner-swiper', {
         loop: true, // 循环模式选项
         autoplay: true,//可选选项，自动滑动
         // 如果需要分页器
         pagination: {
           el: '.swiper-banner-pagination',
           clickable :true
         },
         navigation: {
            nextEl: '.prev',
            prevEl: '.next',
        },     
    })
    // 博士
    var boshi = new Swiper ('.boshi-swiper', {
        loop: true, // 循环模式选项
        autoplay: true,//可选选项，自动滑动
        navigation: {
            nextEl: '.boshi-right',
            prevEl: '.boshi-left',
        },        
        // 如果需要分页器
        // pagination: {
        // el: '.swiper-banner-pagination',
        // clickable :true
        // }
    })
    // 课程
    var kecheng = new Swiper ('.kecheng-swiper', {
        loop: true, // 循环模式选项
        direction: 'vertical',
        autoplay: true,//可选选项，自动滑动
        speed:5000,//滚动速度
        slidesPerView : 3,//slide可见数量
    })
    // 荣誉
    var ry = new Swiper ('.ry-swiper', {
        loop: true, // 循环模式选项
        autoplay: true,//可选选项，自动滑动
        slidesPerView: 4,
        navigation: {
            nextEl: '.leftBtn',
            prevEl: '.rightBtn',
          },
        // 如果需要分页器
        // pagination: {
        // el: '.swiper-banner-pagination',
        // clickable :true
        // }
    })

    // news
    $(".news .newsTitle ul li").eq(0).addClass('active');
    $(".news .newsTitle ul li").hover(function() {
        $(this).addClass('active').siblings().removeClass('active')
        $('.news .content .item').eq($(this).index()).fadeIn().siblings().hide()
    })
    // 自动播放
    var newsIndex = 0;
    var newsLen = $(".news .newsTitle ul li").length-1;
    var time = setInterval(function(){
        $(".news .newsTitle ul li").eq(newsIndex-1).mouseover();  
        if(newsIndex>newsLen){
            newsIndex=0;
        }
        $(".news .newsTitle ul li").eq(newsIndex).mouseout();      //设为高亮
        newsIndex++;
    },3000)


    // 赋能
    $(".funeng .menu .item").eq(0).addClass('active');
    $(".funeng .menu .item").hover(function() {
        $(this).addClass("active").siblings().removeClass("active")
        $(".funeng .fnbox .item").eq($(this).index()).fadeIn().siblings().hide()
    })
    // 自动播放
    var funengIndex = 0;
    var funengLen = $(".funeng .fnbox .item").length-1;
    var time = setInterval(function(){
        $(".funeng .fnbox .item").eq(funengIndex-1).mouseover();  
        if(funengIndex>funengLen){
            funengIndex=0;
        }
        $(".funeng .menu .item").eq(funengIndex).mouseout();      //设为高亮
        funengIndex++;
    },5000)
})
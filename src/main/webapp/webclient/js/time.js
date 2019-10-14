var intDiff = parseInt(0);//倒计时总秒数量
function timer(intDiff) {
    window.setInterval(function () {
        var minute = 0,
            second = 0;//时间默认值
        if (intDiff > 0) {
            minute = Math.floor(intDiff / 60);
            second = Math.floor(intDiff) - (minute * 60); }
        if (minute <= 9) minute = '0' + minute;
        if (second <= 9) second = '0' + second;
        $('#minute').html('<s></s>' + minute + '分');
        $('#second').html('<s></s>' + second + '秒');
        intDiff ++;
        if (intDiff <= 0) { clearInterval(timer); //定时器清除；
            history.back(-1);
        }
    }, 1000); }
$(function () {
    timer(intDiff);
});


window.onscroll = function(){
    //以下代码请视为伪码
    var a = $(".timer").offset().top - $(document).scrollTop() - $(window).height(); // 获取div距离顶部的距离  —  滚动的距离  —  浏览器的高度
    var b = $(".timer").height() + $(window).height(); // 获取div高度  +  浏览器高度
    if(a>0 || a < -b) {
        $('.timer').addClass('timerOut');
        $('#something').text('已用时');
    }
    if ($(document).scrollTop() <= 100){
        if ($('.timer').hasClass('timerOut')){
            $('.timer').removeClass('timerOut');
            $('#something').text('');
        }
    }
    // if ($('.timer').hasClass('timerOut')){
    //     var c = $(".timerOut").offset().top - $(document).scrollTop() - $(window).height();
    //     var d = $(".timerOut").height() + $(window).height(); // 获取div高度  +  浏览器高度
    //     console.log('a:',a);
    //     console.log('b:',b);
    //     console.log('c:',c);
    //     console.log('d:',d);
    //     console.log('滚动距离：',$(document).scrollTop());
    //     console.log('浏览器高度：',$(window).height());
    // }
    // $(document).scrollTop(); // 获取滚动的距离
    // $(".timer").offset().top; // 获取div距离顶部的距离
    // $(window).height(); // 获取浏览器的高度
    // $(".timer").height() ; // 获取div高度

};


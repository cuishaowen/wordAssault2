var curWwwPath=window.document.location.href;
var pathName=window.document.location.pathname;
var pos=curWwwPath.indexOf(pathName);
var localhostPaht=curWwwPath.substring(0,pos);
//var path=localhostPaht + '/WORD/';
var path="";

var rightcount = 0;
var errorcount = 0;

var var1 = '';
var var2 = '';
var w1L = '',w1T = '',w2L = '',w2T = '',wcT = '',wcL = '';
var container = '';
var container1 = '';
var audio = null;
var audiof = null;
var audiomian = null;
var list1 = [],list2 = [];
var array_e = [],array_e_temp = [];
var array_c = [],array_c_temp = [];
var outtime = 120;
var usedtime = 0;
var bodypage = null;
var music = true;
function lianliankan(data1, data2, t,tit_title) {

    array_e = data1;
    array_c = data2;
    outtime = t;
    if (!t)
    {
        outtime = 120;
    }
    debugger
    var main = $("<div id='llk' class='llk'></div>")
    main.height(document.body.scrollHeight);
    main.width(document.body.scrollWidth);

    bodypage = $("<div id='pppp'></div>");
    var img1 = $('<img />');
    img1.addClass("jia");
    var img2 = $('<img />');
    img2.addClass("sha");
    bodypage.append(img1);
    bodypage.append(img2);

    var time = $('<div id="mytime"></div>');
    var min = $('<span class="time" id="m">' + getMin ()+ '</span><span style="margin-left: 3px;border:none;">:</span>');

    time.append(min);
    var sec = $('<span class="time" id="s">'+getSec()+'</span>');
    time.append(sec);



    var m = $("<div class='music openm'></div>");
    m.bind("click", function () {
        music = !music
        if (music) {
            m.removeClass("closem");
            m.addClass("openm");
            audiomian.load();
            audiomian.play();
        }
        else {
            m.removeClass("openm");
            m.addClass("closem");
            audiomian.pause();
        }
    });
    time.append(m);


    var quitm = $("<div class='quitclose'></div>");
    quitm.bind("click", function () {
        out();
    });
    time.append(quitm);

    bodypage.append(time);

    var page = $('<div class="contain"></div>');
    var title = $('<img class="title" />');
    if(tit_title == 1)
        title.addClass("titlenewword");
    else
        title.addClass("title");
    page.append(title);
    var container = $('<div class="container">');
    page.append(container);
    bodypage.append(page);
    bodypage.addClass("body_page");


    main.append(bodypage);

    $("body").append(main);
    bao();
    audio = document.getElementById('audio');
    audiof = document.getElementById('audiof');
    audiomian = document.getElementById('bgaudio');
    audiomian.play();
    time_fun();

}
function two_char(n) {
    return n >= 10 ? n : "0" + n;
}
function getMin(){
    m = Math.floor(outtime / 60);
    if (m < 10) {
        m = '0 ' + m;
    }
    else {
        m = m.toString();
        m = m[0] + " " + m[1];
    }
    return m;

}
function getSec(){
    s = outtime % 60;
    if (s < 10) {
        s = '0 ' + s;
    }
    else {
        s = s.toString();
        s = s[0] + " " + s[1];
    }
    return s;
}
var timeInter111 = {};
function time_fun() {

    timeInter111 = setInterval(function () {
        usedtime = usedtime + 1;
        outtime = outtime - 1;
        if (outtime <= 0)
        {
            gameover();
            return;
        }
        $("#m").text(getMin());
        $("#s").text(getSec());
    }, 1000);
}
function out(){
    clearInterval(timeInter111);
    $("#llk").remove();
}
function gameover() {
    $("#mytime").text('');
    var html = ' <div class="over_1">游戏结束</div>';
    html+=' <div class="over_split"></div>';
    html+='<div class="over_c">';
    html += '    <div class="over_img"></div>';
    html += '    <div class="over_3">共用时<span>' + usedtime + '</span>秒</div>';
    html+='    <div class="over_4">总点击次数<span>'+(rightcount+errorcount)+'</span>,点对<span>'+rightcount+'</span>次,点错<span>'+errorcount+'</span>次</div>';
    html += '    <div class="over_btn"><a class="faguanbtn" href="javascript:void(0);" onclick="getWords()">继续游戏</a> </div>';
    html+=' </div>';

    $('.container').html(html);
    clearInterval(timeInter111);

}
function init() {
    array_e_temp = [];
    array_c_temp = [];
    parse = Math.floor(array_e.length / 10);
    array_e_temp = array_e.slice(0, parse * 10);
    array_c_temp = array_c.slice(0, parse * 10);
    function randomsort(a, b) {
        return Math.random() > .5 ? -1 : 1;
    }
    list1 = [];

    for (var i = 0; i < array_e_temp.length; i++) {
        list1.push(i);
    }

    list1.sort(randomsort);
    list = list1.slice(0, 10)
    list2 = list1.slice(0, 10);
    list.sort(randomsort);
    list2.sort(randomsort);


    for (var i = 0; i < array_c_temp.length; i++) {
        var temp = array_c_temp[i][0].split('；');
        temp = temp[0].split(';');
        //temp = temp[0].split('(');
        //temp = temp[0].split('（');
        temp=temp[0].replace('（','(');
        temp = temp.replace('）',')');
        temp=temp.replace('[','(');
        temp=temp.replace(']',')');
        temp=temp.replace('【','(');
        temp=temp.replace('】',')');

        var start_index=temp.indexOf('(');
        var end_index=temp.lastIndexOf(')');

        if(start_index>0&&end_index>0 && end_index>start_index)
        {
            temp = temp.replace(temp.substring(start_index,end_index+1),"");
        }
        array_c_temp[i][0] = temp;
    }
}
var compare = function (x, y) {//比较函数
    if (x < y) {
        return -1;
    } else if (x > y) {
        return 1;
    } else {
        return 0;
    }
}
function bao() {
    init();
    container = "";
    container1 = "";
    for (var i = 0; i < list2.length; i++) {
        temp_l = array_c_temp[list2[i]][0].split('.');
        if(temp_l.length==1)
        {
            temp_l.push(temp_l[0]);
            temp_l[0]="";
        }
        var cls = "";
        if (array_c[list2[i]][0].length > 10) {
            cls = "long";
        }
        // console.log(temp_l[1].length);
        if (temp_l[1].length >= 8) {
            container += ' <div class="box color1" onclick="box($(this))"><span data-src=' + array_e[list[i]][1] + '>' + array_e[list[i]][0] + '</span></div>';
            container1 += ' <div class="box color2 " onclick="box($(this))"><span class="more '+cls+'" data-src=' + array_c[list2[i]][1] + '>' + array_c[list2[i]][0] + '</span></div>';
        } else {
            container += ' <div class="box color1" onclick="box($(this))"><span data-src=' + array_e[list[i]][1] + '>' + array_e[list[i]][0] + '</span></div>';
            container1 += ' <div class="box color2 " onclick="box($(this))"><span class="'+cls+'" data-src=' + array_c[list2[i]][1] + '>' + array_c[list2[i]][0] + '</span></div>';
        }
    }
    list2.sort(compare);
    for (var i = list2.length-1; i >=0; i--) {
        array_e.splice(list2[i], 1);
        array_c.splice(list2[i], 1);
    }
    $('.container').html(container + container1);
}
function box(obj) {
    if (obj.children('span').hasClass('active')) {
        obj.children('span').removeClass('active');
        return;
    }
    obj.children('span').addClass('active').addClass('pim-monkey');
    setTimeout(function () {
        $('.box').children('span').removeClass('pim-monkey');
    }, 500);
    if ($('.active').length == 2) {
        var2 = obj.children('span').attr('data-src');
        w2T = obj.offset().top;
        w2L = obj.offset().left - 30;

        if (var1 == var2) {
            rightcount++;
            wcL = 400;//(w1L + w2L) / 2;
            wcT = 270;//(w1T + w2T) / 2;

            $('.jia').css({ 'left': wcL, 'top': wcT, 'display': 'block' }).addClass('fadeInTop');
            $('.sha').css({ 'left': wcL, 'top': wcT, 'display': 'block' }).addClass('zoomIn');

            $('.active').removeClass('pim-monkey').addClass('fadeOut').parents('.box').css({ 'pointer-events': 'none' });
            $('.active').addClass("active1").removeClass("active");

            if (music) {
                var audio = document.getElementById('audio');
                audio.play();
            }
            $('.qiqiu').show();
            setTimeout(function () {
                $('.qiqiu').hide();
            }, 500)
            setTimeout(function () {
                var1 = '';
                var2 = '';
                w1T = '';
                w1L = '';
                w2T = '';
                w2L = '';
                wcT = '';
                wcL = '';
                $('.jia').css({ 'left': wcL, 'top': wcT, 'display': 'none' }).removeClass('fadeInTop');
                if ($('.fadeOut').length == list2.length * 2) {

                    if (array_e.length >= 10) {
                        bao();
                    }
                    else {
                        gameover();
                    }
                }
            }, 500);
            setTimeout(function () {
                $('.sha').css({ 'left': wcL, 'top': wcT, 'display': 'none' }).removeClass('zoomIn');
            }, 500);
            if (rightcount == 10){
                gameover();
            }
        } else {
            errorcount++;
            if (music) {
               var audiof = document.getElementById('audiof');
                audiof.play();
            }
            var1 = '';
            var2 = '';
            w1T = '';
            w1L = '';
            w2T = '';
            w2L = '';
            $('.box').children('span').removeClass('active');
        }
    } else {
        var1 = obj.children('span').attr('data-src');
        w1T = obj.offset().top + 44;
        w1L = obj.offset().left + 60;
        w1T = 0;
        w1L = 0;
    }
}

var courseId = GetQueryString("courseId");
layui.use(['form', 'layedit', 'laydate', 'laypage', 'layer', 'jquery'],function () {
    var subjectType = '';
    var form = layui.form
        , layer = layui.layer
        , layedit = layui.layedit
        , laydate = layui.laydate
        , laypage = layui.laypage;
    function openllkan() {
        if (courseId == null || courseId == '') {
            layer.open({
                title: '提示'
                , content: '请选择课程'
            });
        } else {
            getWords();
        }
    }
    alreadyBuy();
    openllkan();
});

function getWords() {
    var url = getContextPath() + '/word/selectTenRandWord';
    $('.container').html('');
    var data = {};
    data.courseId = courseId;
    $.post(url, data, function (res) {
        u.setStorage('llkWord', res);
        for (i = 0; i < res.length; i++) {
            $('.container').append(
                '<div class="box color1" onclick="box($(this))"><span data-src="' + res[i].id + '">' + res[i].english + '</span></div>'
            )
        }
        shuffle(res);
        for (j = 0; j < res.length; j++) {
            var chinese = res[j].chinese;
            if (chinese.length > 12){
                var arr_ch = chinese.split("；");
                chinese = arr_ch[0];
            }
            $('.container').append(
                '<div class="box color1" onclick="box($(this))"><span data-src="' + res[j].id + '">' + chinese + '</span></div>'
            )
        }
    });
}

// 已购买课程
function alreadyBuy() {
    var url = getContextPath() + '/usercourse/usercourse/getCourseOpenOrClose?enguserId=' + sessionId;
    $.post(
        url,
        function (res) {
            var openCourses = res.openCourseList;
            u.setStorage('openCourses',openCourses);
            for (var i = 0; i < openCourses.length; i++){
                $('#alreadyPurchase').append('<li onclick="openlianliankan(\''+ openCourses[i].id +'\')">' + openCourses[i].name + '<i></i></li>');
            }
        }
    )
}
function openlianliankan(courseId){
    window.location.href = getContextPath() + '/webclient/llkNew.html?courseId=' + courseId;
    getWords();
}
$('.faguanbtn').on('click',function () {
    getWords();
});
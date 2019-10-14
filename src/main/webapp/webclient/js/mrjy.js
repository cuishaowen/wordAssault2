layui.use(['form', 'layedit', 'laydate', 'laypage', 'layer','element'], function () {
    var form = layui.form
        , layer = layui.layer
        , layedit = layui.layedit
        , laydate = layui.laydate
        , laypage = layui.laypage;

    function getData(date) {
        var url = getContextPath() + '/userchapterword/getEveryDayWord';
        var data = {};
        data.courseId = GetQueryString("courseId");
        data.userId = sessionId;
        data.date = date;
        $.post(url, data, function (res) {
            $('#every').html('<b>' + date + '&nbsp;&nbsp;共学习<b style="color: rebeccapurple">&nbsp;' + res.length + '&nbsp;</b>个词汇' + '</b>');
            layui.use(['form', 'laypage'], function () {
                var form = layui.form
                    , laypage = layui.laypage;
                laypage.render({
                    elem: 'demo0' //注意，这里的 test1 是 ID，不用加 # 号
                    , count: res.length //数据总数，从服务端得到
                    , jump: function (obj, first) {
                        var currentPage = obj.curr;
                        var currentNum = currentPage * 10 - 10;
                        if (res.length < 10) {
                            appendData(res, 0);
                        } else if (res.length >= 10 && res.length - currentPage * 10 < 0) {
                            appendData(res, currentNum);
                        } else {
                            appendData1(res, currentNum);
                        }
                    }
                });
                form.render();
            });
        });
    }

//日期
    laydate.render({
        elem: '#date'
        , min: -7
        , max: 0
        , value: new Date()
        , done: function (value, date, endDate) {
            console.log(value); //得到日期生成的值，如：2017-08-18
            console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
            console.log(endDate); //得结束的日期时间对象，开启范围选择（range: true）才会返回。对象成员同上。
            // layer.msg('hello!');
            getData(value);
        }
    });

    var myDate = new Date();
    //获取当前年
    var year = myDate.getFullYear();
    //获取当前月
    var month = myDate.getMonth() + 1;
    //获取当前日
    var day = myDate.getDate();
    var date = year + '-' + month + '-' + day;

    getData(date);
});


function appendData(res,num){
    $('tbody').html('');
    for (i = num; i < res.length; i++) {
        var ameVoice = res[i].word.ameVoice;
        var engVoice = res[i].word.engVoice;
        var voice = ameVoice ? ameVoice : engVoice;
        var english = res[i].word.english;
        var phoneticTranscription = res[i].word.phoneticTranscription;
        $('tbody').append('<tr>\n' +
            '<td>\n' +
            '<div class="form-control" style="display: none">\n' +
            '</div>\n' +
            '<a class="yb" href="javascript:void(0)" onclick="detail1('+ res[i].word.id +')">\n' + res[i].word.english +
            '</a>\n' +
            '</td>\n' +
            '<td>\n' +
            '<a href="javascript:void(0)" id="fayin" onclick="fayin(this)">\n' + (phoneticTranscription ? phoneticTranscription : english) +
            '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
            '<source src="'+ voice +'">\n' +
            '</audio>\n' +
            '</a>\n' +
            '</td>\n' +
            '<td>'+res[i].word.chinese+'</td>\n' +
            '</tr>')
    }
}

function appendData1(res,num){
    $('tbody').html('');
    for (i = num; i < num + 10; i++) {
        var ameVoice = res[i].word.ameVoice;
        var engVoice = res[i].word.engVoice;
        var voice = ameVoice ? ameVoice : engVoice;
        var english = res[i].word.english;
        var phoneticTranscription = res[i].word.phoneticTranscription;
        $('tbody').append('<tr>\n' +
            '<td>\n' +
            '<div class="form-control" style="display: none">\n' +
            '<input class="checkbox" type="checkbox" value="'+ res[i].userChapterWord.id +'">\n' +
            '</div>\n' +
            '<a class="yb" href="javascript:void(0)" onclick="detail1('+ res[i].word.id +')">\n' + english +
            '</a>\n' +
            '</td>\n' +
            '<td >\n' +
            '<a href="javascript:void(0)" id="fayin" onclick="fayin(this)">\n' + (phoneticTranscription ? phoneticTranscription : english) +
            '<audio class="voicebox" controls=""  preload="auto" style="display: none;">\n' +
            '<source src="'+ voice +'">\n' +
            '</audio>\n' +
            '</a>\n' +'</td>\n' +
            '<td>'+res[i].word.chinese+'</td>\n' +
            '</tr>')
    }

}

// 获取课程详情
$(function () {
    var url = getContextPath() + '/course/course/get?courseId='+ GetQueryString("courseId");
    $.post(url,function (res) {
        $('cite').text(res.name);
    });
});

//发音图标
function fayin(o){
    var a = $(o);
    var f = a.children('audio').children('source').attr('src');
    var audio=new Audio(f);
    audio.play();
}
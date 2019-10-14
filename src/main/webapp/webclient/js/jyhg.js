$(function() {
    var url = getContextPath() + '/userchapterword/completeword';
    var data = {};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var today = year + '-' + month + '-' + day;
    $.post(url, data, function (res) {
        $('#today').html('<b>' + today + '&nbsp;&nbsp;本课程已学习<b style="color: rebeccapurple">&nbsp;'+ res.length + '&nbsp;</b>个词汇' + '</b>');
        layui.use(['form','laypage'],function () {
            var form = layui.form
                ,laypage = layui.laypage;
            laypage.render({
                elem: 'demo0' //注意，这里的 test1 是 ID，不用加 # 号
                ,count: res.length //数据总数，从服务端得到
                ,jump: function(obj, first){
                    var currentPage = obj.curr;
                    var currentNum = currentPage*10 - 10;
                    if (res.length < 10){
                        appendData(res,0);
                    } else if(res.length >= 10 && res.length - currentPage*10 < 0){
                        appendData(res,currentNum);
                    }else{
                        appendData1(res,currentNum);
                    }
                }
            });
            form.render();
        });
        });
});



function apendData(res,num){
    $('tbody').html('');
    for (i = num; i < res.length; i++){
        var ameVoice = res[i].word.ameVoice;
        var engVoice = res[i].word.engVoice;
        var voice = ameVoice ? ameVoice : engVoice;
        var phoneticTranscription = res[i].word.phoneticTranscription;
        var english = res[i].word.english;
        $('tbody').append('<tr>\n' +
            '<td>\n' +
            '<div class="form-control" style="display: none">\n' +
            '<input class="checkbox" type="checkbox" value="'+ res[i].userChapterWord.id +'">\n' +
            '</div>\n' +
            '<a class="yb" href="javascript:void(0)" onclick="detail1(' + res[i].word.id + ')">\n' + res[i].word.english +
            '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
            '<source src="'+ voice + '">\n' +
            '</audio>\n' +
            '</a>\n' +
            '</td>\n' +
            '<td>\n'+
            '<a href="javascript:void(0)" id="fayin" onclick="fayin(this)">\n' + (phoneticTranscription ? phoneticTranscription : english) +
            '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
            '<source src="'+ voice +'">\n' +
            '</audio>\n' +
            '</a>\n' +
            '</td>\n' +
            '<td>'+res[i].word.chinese+'</td>\n' +
            '</tr>'
        )
    }
}

function appendData(res,num){
    $('tbody').html('');
    for (i = num; i < res.length; i++){
        var ameVoice = res[i].word.ameVoice;
        var engVoice = res[i].word.engVoice;
        var voice = ameVoice ? ameVoice : engVoice;
        var phoneticTranscription = res[i].word.phoneticTranscription;
        var english = res[i].word.english;
        $('tbody').append('<tr>\n' +
            '<td>\n' +
            '<div class="form-control" style="display: none">\n' +
            '<input class="checkbox" type="checkbox" value="'+ res[i].userChapterWord.id +'">\n' +
            '</div>\n' +
            '<a class="yb" href="javascript:void(0)" onclick="detail1(' + res[i].word.id + ')">\n' + res[i].word.english +
            '</a>\n' +
            '</td>\n' +
            '<td>\n'+
            '<a href="javascript:void(0)" id="fayin" onclick="fayin(this)">\n' + (phoneticTranscription ? phoneticTranscription : english) +
            '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
            '<source src="'+ voice +'">\n' +
            '</audio>\n' +
            '</a>\n' +
            '</td>\n' +
            '<td>'+res[i].word.chinese+'</td>\n' +
            '</tr>'
        )
    }
}
function appendData1(res,num){
    $('tbody').html('');
    for (i = num; i < num + 10; i++){
        var ameVoice = res[i].word.ameVoice;
        var engVoice = res[i].word.engVoice;
        var voice = ameVoice ? ameVoice : engVoice;
        var phoneticTranscription = res[i].word.phoneticTranscription;
        var english = res[i].word.english;
        $('tbody').append('<tr>\n' +
            '<td>\n' +
            '<div class="form-control" style="display: none">\n' +
            '<input class="checkbox" type="checkbox" value="'+ res[i].userChapterWord.id +'">\n' +
            '</div>\n' +
            '<a class="yb" href="javascript:void(0)" onclick="detail1(' + res[i].word.id + ')">\n' + res[i].word.english +
            '</a>\n' +
            '</td>\n' +
            '<td>'+
            '<a href="javascript:void(0)" id="fayin" onclick="fayin(this)">\n' + (phoneticTranscription ? phoneticTranscription : english) +
            '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
            '<source src="'+ voice +'">\n' +
            '</audio>\n' +
            '</a>\n' +
            '</td>\n' +
            '<td>'+res[i].word.chinese+'</td>\n' +
            '</tr>'
        )
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
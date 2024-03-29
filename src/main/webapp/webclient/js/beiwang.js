$(function() {
    var url = getContextPath() + '/userchapterword/getStrengthenMemory';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var today = year + '-' + month + '-' + day;
    $.post(url, data, function (res) {
        $('#today').html('<b>' + today + '&nbsp;&nbsp;本课程添加了<b style="color: rebeccapurple">&nbsp;'+ res.length + '&nbsp;</b>个备忘词汇' + '</b>');
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
                        apendData(res,0);
                    } else if(res.length >= 10 && res.length - currentPage*10 < 0){
                        apendData(res,currentNum);
                    }else{
                        apendData1(res,currentNum);
                    }
                }
            });
            form.render();
        });
        }
    )
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

function apendData1(res,num){
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

function detail1(wordId) {
    var idx = layer.open({
        title: '单词查询',
        type: 2,
        area: ['900px', '650px'],
        content: 'dccx.html?wordId=' + wordId + '&courseId=' + GetQueryString('courseId') //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
    });
}

$(function () {
    var url = getContextPath() + '/course/course/get?courseId=' + GetQueryString("courseId");
    $.post(url, function (res) {
        $('cite').text(res.name);
    })
});
var userChapterWords = [];
layui.use(['form'],function () {
    var form = layui.form;
    form.on('checkbox',function(data){
        if (data.elem.checked) {
            userChapterWords.push(data.value);
            console.log('userChapterWordsTrue',userChapterWords);
        }else {
            userChapterWords.splice($.inArray(data.value,userChapterWords),1);
            console.log('userChapterWordsFalse',userChapterWords);

        }
    });
});
$('#remove').on('click',function () {
    var a = $('#remove');
    if (a.hasClass('complete')){
        if (userChapterWords.length > 0){
            var url = getContextPath() + '/userchapterword/updateIsMemoById';
            var data = {};
            data.ids = userChapterWords.toString();
            console.log(data);
            $.post(url,data,function (res) {
                console.log('更新成功');
                window.location.reload();
            });
        }
        a.removeClass('complete');
        a.text('移除');
        $('.form-control').css('display','none');
    }else{
        a.addClass('complete');
        a.text('完成');
        $('.form-control').css('display','inline-block');
    }
});

//发音图标
function fayin(o){
    var a = $(o);
    var f = a.children('audio').children('source').attr('src');
    var audio=new Audio(f);
    audio.play();
}
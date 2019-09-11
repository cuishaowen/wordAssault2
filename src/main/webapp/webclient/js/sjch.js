$(function getSkilled() {
    var url = getContextPath() + '/userchapterword/getSkilled';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var today = year + '-' + month + '-' + day;
    $.post(url, data, function (res) {
        $('#today').html('<b>' + today + '&nbsp;&nbsp;添加了<b style="color: rebeccapurple">&nbsp;'+ res.length + '&nbsp;</b>个熟记词汇' + '</b>');
            for (i = 0; i < res.length; i++) {
                var ameVoice = res[i].word.ameVoice;
                var engVoice = res[i].word.engVoice;
                var voice = ameVoice ? ameVoice : engVoice;
                $('tbody').append('<tr>\n' +
                    '<td>\n' +
                    '<div class="form-control" style="display: none">\n' +
                    '<input class="checkbox" type="checkbox" value="'+ res[i].userChapterWord.id +'">\n' +
                    '</div>\n' +
                    '<a class="yb" href="javascript:void(0)" onclick="detail1('+ res[i].word.id +')">\n' + res[i].word.english +
                    '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
                    '<source src="'+ voice +'">\n' +
                    '</audio>\n' +
                    '</a>\n' +
                    '</td>\n' +
                    '<td>' + res[i].word.phoneticTranscription + '</td>\n' +
                    '<td>'+res[i].word.chinese+'</td>\n' +
                    '</tr>')
            }
            layui.use(['form'],function () {
            var form = layui.form;
            form.render();
        });
        }
    )
});

$(function () {
    var url = getContextPath() + '/course/course/get?courseId='+ GetQueryString("courseId");
    $.post(url,function (res) {
        $('cite').text(res.name);
    });
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
            var url = getContextPath() + '/userchapterword/updateSkillWordById';
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
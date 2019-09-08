/**
 * 获取生词
 */
$(function() {
    var url = getContextPath() + '/userchapterword/getCourseHard';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var today = year + '-' + month + '-' + day;
    $.post(url, data, function (res) {
        $('#today').html('<b>' + today + '&nbsp;&nbsp;添加了<b style="color: rebeccapurple">&nbsp;'+ res.length + '&nbsp;</b>个生词' + '</b>');
        for (i = 0; i < res.length; i++){
            var engVoice = res[i].word.engVoice;
            var ameVoice = res[i].word.ameVoice;
            var voice = ameVoice ? ameVoice : engVoice;
            $('tbody').append(
                '<tr>\n' +
                '<td>\n' +
                '<a class="yb" href="javascript:void(0)" onclick="detail1(' + res[i].word.id + ')">\n' + res[i].word.english +
                '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
                '<source src="'+ voice +'">\n' +
                '</audio>\n' +
                '</a>\n' +
                '</td>\n' +
                '<td>'+ res[i].word.phoneticTranscription + '</td>\n' +
                '<td>'+res[i].word.chinese+'</td>\n' +
                '</tr>')
            }
        }
    )
});

// 获取课程详情
$(function () {
    var url = getContextPath() + '/course/course/get?courseId='+ GetQueryString("courseId");
    $.post(url,function (res) {
       $('cite').text(res.name);
    });
});
/**
 * 获取生词
 */
$(function() {
    var url = getContextPath() + '/userchapterword/getCourseHard';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(url, data, function (res) {
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
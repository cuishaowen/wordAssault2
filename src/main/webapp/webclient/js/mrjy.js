
$(function() {
    var url = getContextPath() + '/userchapterword/getEveryDayWord';
    var data = {};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    var myDate = new Date();
    //获取当前年
    var year=myDate.getFullYear();
    //获取当前月
    var month=myDate.getMonth()+1;
    //获取当前日
    var day=myDate.getDate();
    var date = year + '-' + month + '-' + day;
    data.date = date;
    $.post(url, data, function (res) {
        $('#every').html('<b>' + date + '&nbsp;&nbsp;共学习<b style="color: rebeccapurple">&nbsp;'+ res.length + '&nbsp;</b>个词汇' + '</b>');
        for (i = 0; i < res.length; i++) {
            var ameVoice = res[i].word.ameVoice;
            var engVoice = res[i].word.engVoice;
            var voice = ameVoice ? ameVoice : engVoice;
                $('tbody').append('<tr>\n' +
                    '                        <td>\n' +
                    '                            <a class="yb" href="javascript:void(0)" onclick="detail1('+ res[i].word.id +')">\n' + res[i].word.english +
                    '                                <audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
                    '                                    <source src="' + voice + '">\n' +
                    '                                </audio>\n' +
                    '                            </a>\n' +
                    '                            </td>\n' +
                    '                        <td>' + res[i].word.phoneticTranscription + '</td>\n' +
                    '                        <td>'+res[i].word.chinese+'</td>\n' +
                    '                    </tr>')
            }
        });
});

// 获取课程详情
$(function () {
    var url = getContextPath() + '/course/course/get?courseId='+ GetQueryString("courseId");
    $.post(url,function (res) {
        $('cite').text(res.name);
    });
});
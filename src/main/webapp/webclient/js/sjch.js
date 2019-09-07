$(function getSkilled() {
    var url = getContextPath() + '/userchapterword/getSkilled';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(
        url,
        data,
        function (res) {
            for (i = 0; i < res.length; i++) {
                $('tbody').append('<tr>\n' +
                    '                        <td>\n' +
                    '                            <a class="yb" href="javascript:void(0)" onclick="detail1('+ res[i].word.id +')">\n' + res[i].word.english +
                    '                                <audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
                    '                                    <source src="音频/anyone.mp3">\n' +
                    '                                </audio>\n' +
                    '                            </a>\n' +
                    '                            </td>\n' +
                    '                        <td>' + res[i].word.phoneticTranscription + '</td>\n' +
                    '                        <td>'+res[i].word.chinese+'</td>\n' +
                    '                    </tr>')
            }
        }
    )
});
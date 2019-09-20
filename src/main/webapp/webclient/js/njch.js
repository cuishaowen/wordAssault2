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
        $('#today').html('<b>' + today + '&nbsp;&nbsp;添加了<b style="color: rebeccapurple">&nbsp;' + res.length + '&nbsp;</b>个生词' + '</b>');
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
    })
});

// 获取课程详情
$(function () {
    var url = getContextPath() + '/course/course/get?courseId='+ GetQueryString("courseId");
    $.post(url,function (res) {
       $('cite').text(res.name);
    });
});

function appendData(res,num){
    $('tbody').html('');
    for (i = num; i < res.length; i++) {
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
}

function appendData1(res,num){
    $('tbody').html('');
    for (i = num; i < num + 10; i++) {
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
}

// for (i = 0; i < res.length; i++){
//     var engVoice = res[i].word.engVoice;
//     var ameVoice = res[i].word.ameVoice;
//     var voice = ameVoice ? ameVoice : engVoice;
//     $('tbody').append(
//         '<tr>\n' +
//         '<td>\n' +
//         '<a class="yb" href="javascript:void(0)" onclick="detail1(' + res[i].word.id + ')">\n' + res[i].word.english +
//         '<audio class="voicebox" controls  preload="auto" style="display: none;">\n' +
//         '<source src="'+ voice +'">\n' +
//         '</audio>\n' +
//         '</a>\n' +
//         '</td>\n' +
//         '<td>'+ res[i].word.phoneticTranscription + '</td>\n' +
//         '<td>'+res[i].word.chinese+'</td>\n' +
//         '</tr>')
// }

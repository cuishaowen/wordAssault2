$(function(){
    var courseId = GetQueryString('courseId');
    var chapterId = GetQueryString('chapterId');
    var url = '';
    var data = {};

    // 查章节
    if (chapterId != null && chapterId != 0) {
        url = getContextPath() + '/userchapterword/getWordInformation';
        data.chapterId = chapterId;
    }
    // 查全书
    if (chapterId == 0 && courseId != null){
        url = getContextPath() + '/userchapterword/getCourseWordInformation';
        data.courseId = courseId;
    }
    $.post(
        url,
        data,
        function(res) {
            // 设置缓存
            u.setStorage('result',res);
            console.log('result',u.getStorage('result'));
        }
    )
});

// 动态添加元素
function getWord(){
    var  val = GetQueryString('val');
    var result = u.getStorage('result');
    var i = 0;
    var j = randNum(result.length);
    var myDate = new Date();
    var year = myDate.getFullYear(); //获取当前年
    var mon = myDate.getMonth() + 1; //获取当前月
    var DateStr = year+ '/' + mon +'/';
    if (result.length > 10){
        if (val == 1){
            for (i = 0;i < 10; i ++){
                addContentOne(i);
            }
        } else {
            for (i = 0;i < 10; i ++){
                addContentTwo(i);
            }
        }
    } else {
        if (val == 1){
            for (i = 0; i < result.length; i++){
                addContentOne(i);
            }
        } else{
            for (i = 0; i < result.length; i++){
                addContentTwo(i);
            }
        }
    }
}

layui.use(['form','jquery'],function () {
    var form = layui.form;
    getWord();
    function sp(){
        $('.zz').height($(window).height());
        $('.zz').width($(window).width());
        var a = $('.zz').height();
        $('.zz1').css('margin-top',(a-454)/2);
        $('.wordvoice audio')[0].pause();
    }
    sp();
    window.onresize = sp;
    form.render();

    form.on('radio',function (data) {

    })
});

function addContentOne(num){
    var result = u.getStorage('result');
    var object = {};
    object = result[num];
    var english = object.word.english;
    var phoneticTranscription = object.word.phoneticTranscription;
    var chinese = object.word.chinese;
    var exampleArr = object.wordExample.example.split("$$$");
    var exampleEng = exampleArr[0];
    var exampleCh = exampleArr[1];
    var errorCh = object.errorCh;
    errorCh.push(chinese);
    shuffle(errorCh);
    $('#container').append(
    '<div class="xt">\n' +
        '<div class="xt-title">\n' +
        '                <span>'+ (num+1) +')</span>\n' +
        '               <span>'+ english + '     '+  phoneticTranscription +'</span>\n' +
        '                <a href="javascript:void(0)" class="wordvoice" id="fayin2">\n' +
        '                    <audio class="voicebox" controls="" autoplay="" preload="auto" style="display: none;">\n' +
        '                        <source src="音频/anyone.mp3" type="audio/mpeg">\n' +
        '                    </audio>\n' +
        '                </a>\n' +
        '            </div>\n' +
        '            <div class="xt-content">\n' +
        '                <form class="layui-form layui-form-pane" action="">\n' +
        '                    <div class="layui-form-item">\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="1" title="'+ errorCh[0] +'">\n' +
        '                        </div>\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="2" title="'+ errorCh[1] +'">\n' +
        '                        </div>\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="3" title="'+ errorCh[2] +'">\n' +
        '                        </div>\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="4" title="'+ errorCh[3] +'">\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                </form>\n' +
        '            </div>\n' +
        '       </div>'
    )
};

function addContentTwo(num) {
    var result = u.getStorage('result');
    var object = {};
    object = result[num];
    var english = object.word.english;
    var phoneticTranscription = object.word.phoneticTranscription;
    var chinese = object.word.chinese;
    var exampleArr = object.wordExample.example.split("$$$");
    var exampleEng = exampleArr[0];
    var exampleCh = exampleArr[1];
    var errorCh = object.errorCh;
    errorCh.push(chinese);
    shuffle(errorCh);
    $('#container').append(
        '<div class="xt">\n' +
        '            <div class="xt-title">\n' +
        '                <span>'+ (num + 1) +')</span>\n' +
        '                <span class="xianshi">词义显示</span>\n' +
        '                <a href="javascript:void(0)" class="wordvoice">\n' +
        '                    <audio class="voicebox" controls="" autoplay="" preload="auto" style="display: none;">\n' +
        '                        <source src="音频/anyone.mp3" type="audio/mpeg">\n' +
        '                    </audio>\n' +
        '                </a>\n' +
        '                <span class="yinbiao" style="margin-left:10px;">'+ chinese + '</span>\n' +
        '            </div>\n' +
        '            <div class="xt-content">\n' +
        '                <div class="xt1">\n' +
        '                    <form class="layui-form layui-form-pane" action="">\n' +
        '                        <div class="layui-form-item">\n' +
        '                            <div class="layui-input-block" style="margin-left:0;">\n' +
        '                                <input id="aaaa"  type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入" class="layui-input" style="text-align: center;">\n' +
        '                            </div>\n' +
        '                        </div>\n' +
        '                    </form>\n' +
        '                </div>\n' +
        '            </div>\n' +
        '        </div>'
    )
}

function randNum(len){
    var a = Math.floor((Math.random()*len));
    return a;
}
$(function () {
    var url = getContextPath() + '/userchapterword/getWordDccx';
    var data = {};
    data.userId = sessionId;
    data.wordId = GetQueryString('wordId');
    data.courseId =  GetQueryString('courseId');
    $.post(url, data, function (res) {
        u.setStorage('userChapterWord',res.userChapterWord);
        var word = res.word;
        var examples = res.wordExamples;
        $('.dc11 img').attr('src',word.img);
        $('#word').text(word.english);
        $('#yinbiao').text(word.phoneticTranscription);
        $('#zhongwen').text(word.chinese);
        $('.examples').html('');
        var voice = '';
        var ameVoice = res.word.ameVoice;
        var engVoice = res.word.engVoice;
        ameVoice ? voice = ameVoice : voice = engVoice;
        $('.wordvoice audio source').attr('src',voice);
        for (i = 0; i < examples.length; i++){
            var ex = examples[i].example;
            var example = ex.split("$$$");
            var engEx = example[0];
            var chEx = example[1];
            $('.dc3').append(
                '<p>'+ engEx  +'</p>\n' +
                '<p>'+ chEx  +'</p>'
            );
            getStatus();
        }
    })
});

var play=true;
var bfindex=0;
layui.use(['form', 'layedit','element'], function(){
    var form = layui.form
        ,layedit = layui.layedit
        ,element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

    //监听导航点击
    element.on('nav(demo)', function(elem){
        //console.log(elem)
        layer.msg(elem.text());
    });
    form.on('switch(switchTest)', function(data){
//            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
//                offset: '6px'
//            });
    });
});

// 获取备忘和熟词状态
function getStatus() {
    // 获取单词状态
    var userChapterWord = u.getStorage('userChapterWord');
    var isMemo = userChapterWord.isMemo;
    var skilledWord = userChapterWord.skilledWord;
    if (isMemo == 'T'){
        honeySwitch.showOn("#memo");
    }else {
        honeySwitch.showOff('#memo');
    }
    if (skilledWord == 'T'){
        honeySwitch.showOn('#skilledWord');
    }else{
        honeySwitch.showOff('#skilledWord');
    }
}

// 备忘和熟词事件
$(function() {
    // 加入备忘
    switchEvent("#memo", function () {
        addMemo();
    }, function () {
        deleteMemo();
    });
    // 加入熟词
    switchEvent('#skilledWord',function () {
        addSkilled();
    },function () {
        deleteSkilled();
    })
});

// 加入备忘
function addMemo(){
    var userChapterWord = u.getStorage('userChapterWord');
    userChapterWord.isMemo = 'T';
    updateWord(userChapterWord);
}

function deleteMemo(){
    var userChapterWord = u.getStorage('userChapterWord');
    userChapterWord.isMemo = 'F';
    updateWord(userChapterWord);
}

function addSkilled() {
    var userChapterWord = u.getStorage('userChapterWord');
    userChapterWord.skilledWord = 'T';
    updateWord(userChapterWord);
}
function deleteSkilled() {
    var userChapterWord = u.getStorage('userChapterWord');
    userChapterWord.skilledWord = 'F';
    updateWord(userChapterWord);
}

//发音图标
$('#fayin').on('click',function () {
    var f = $('.wordvoice audio source').attr('src');
    var audio=new Audio(f);
    audio.play();
});
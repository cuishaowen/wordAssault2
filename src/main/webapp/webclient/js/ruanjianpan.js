/**
 *  description: 用于刷题测试模块的软件盘功能js
 *  author: cuisw
 *  date: 2019-09-17
 */

var rightclicked = [];
var errorclicked = [];
function addContentThreeBefore(num,object){
    var english = object.word.english;
    var ameVoice = object.word.ameVoice;
    var engVoice = object.word.engVoice;
    var voice;
    ameVoice ? voice = ameVoice : voice = engVoice;
    var chinese = object.word.chinese;
    $('#container').append(
        '        <div class="xt">\n' +
        '            <div class="xt-title">\n' +
        '                <span>'+ (num + 1) +')</span>\n' +
        '                <span class="xianshi">词义显示</span>\n' +
        '                <a href="javascript:void(0)" class="wordvoice">\n' +
        '                    <audio class="voicebox" controls="" preload="auto" style="display: none;">\n' +
        '                        <source class="auto-play" src="'+ voice +'" type="audio/mpeg">\n' +
        '                    </audio>\n' +
        '                </a>\n' +
        '                <span class="yinbiao" style="margin-left:10px;">'+ chinese + '</span>\n' +
        '            </div>\n' +
        '            <div class="xt-content">\n' +
        '                <div class="xt1" style="width: 100%">\n' +
        '                    <div id="a-word-form" class="layui-form-item lfii" style="">\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <ul id="a-word-'+ num +'" class="ul"></ul>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                    <div id="aa-word-form" class="layui-form-item lfii">\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <ul id="aa-word-'+ num +'" class="ul"></ul>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                    <div id="a-word-click-form" class="layui-form-item lfiii">\n' +
        '                        <div class="layui-input-block" style="font-size: 18px;color:#1d8183;line-height: 38px;font-weight: 600;text-align: center;">\n' +
        '                            <ul  id="a-word-click-'+ num +'" style="text-align: center;color: white"></ul>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                </div>\n' +
        '            </div>\n' +
        '        </div>'
    );
}

// 听写逻辑 软键盘
function addContentThree(num,error,res){
    var object = res[num];
    addContentThreeBefore(num, object);
    var english = object.word.english;
    $('.eng-ans').text(english);
    var arr = [];
    for (var i = 0; i < english.length; i++) {
        arr.push(english.charAt(i))
    }
    for (var j = 0; j < arr.length; j++) {
        var abc = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','x','y','z','w','v','u'];
        abc.splice($.inArray(arr[j],abc),1);
        var flag = randNum();
        shuffle(abc);
        if (flag == 'T'){
            $('#a-word-'+ num).append('<li class="lfi1 word-btn-'+ english + j +' " onclick="keybroad_select_word(this,\''+ english + '\')">' + arr[j] + '</li>\n');
            $('#aa-word-'+ num).append('<li class="lfi1 word-btn-'+ english + j +'" onclick="keybroad_select_word(this,\''+ english + '\')">' + abc[j] + '</li>\n');
        }else{
            $('#a-word-'+ num).append('<li class="lfi1 word-btn-'+ english + j +'" onclick="keybroad_select_word(this,\''+ english + '\')">' + abc[j] + '</li>\n');
            $('#aa-word-'+ num).append('<li class="lfi1 word-btn-'+ english + j +'" onclick="keybroad_select_word(this,\''+ english + '\')">' + arr[j] + '</li>\n');
        }
        $('#a-word-click-'+ num).append('<li id="li-'+ english + '-'+ j +'" style="width:auto!important;height:auto!important;padding:0;float:inherit;display: inline-block;"></li>\n')
    }
    $('.lfi').hide();
    $('.lfii').show();
    $('.lfiii').show();
}

// 软键盘
function keybroad_select_word(o,english) {
    var oclass = $(o).attr('class');
    var arr = oclass.split(' ');
    var lastClass = arr[1];
    $('li').siblings('.'+ lastClass).removeClass('selected');
    if (!$(o).hasClass('selected')) {
        $(o).addClass('selected');
    }
    var length = $('.lfii div ul li').length;
    var select = '';
    for (i = 0; i < length; i++) {
        var text = $('.word-btn-'+ english + i + '.selected').text();
        $('#li-'+ english + '-' + i).text(text);
        select += text;
    }
    if(select.length == english.length){
        if (select == english) {
            correctAnswer(english);
        }else {
            wrongAnswer(english);
        }
        console.log('答对的题目',rightclicked);
        console.log('答错的题目',errorclicked);
    }
}

// 答对 添加答对队列
function correctAnswer(english){
    if (rightclicked.length < 1){
        rightclicked.push(english);
    }else{
        // 校验 是否存在 , 不存在就push  已经存在就什么都不做
        if ($.inArray(english,rightclicked) < 0) {
            rightclicked.push(english);
        }
    }
    // 答对逻辑中，如果存在就移除，如果不存在就什么也不做
    if (errorclicked.length >= 1){
        if ($.inArray(english,errorclicked) >= 0) {
            errorclicked.splice($.inArray(english,errorclicked),1);
        }
    }
}

// 答错 添加答错队列
function wrongAnswer(english){
    // 答错添加答错列表
    if (errorclicked.length < 1){
        errorclicked.push(english);
    }else{
        // 校验 是否存在 , 不存在就push  已经存在就什么都不做
        if ($.inArray(english,errorclicked) < 0) {
            errorclicked.push(english);
        }
    }
    // 移除答对列表
    if (rightclicked.length >= 1){
        // 校验是否存在，如果存在就移除，如果不存在就什么也不做
        console.log($.inArray(english,rightclicked));
        if ($.inArray(english,rightclicked) >= 0) {
            rightclicked.splice($.inArray(english,rightclicked),1);
        }
    }
}

function randNum(){
    var a = Math.floor((Math.random()*10)+1);
    if(a%2 == 0){
        return 'T';
    }else{
        return 'F';
    }
}
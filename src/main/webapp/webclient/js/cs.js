var testSubject = [];
var errorSubject = [];
var rightclicked = [];
var errorclicked = [];
var  val = GetQueryString('val');

// 获取章节和课程信息
$(function () {
    var courseId = GetQueryString('courseId');
    var chapterId = GetQueryString('chapterId');
    if (chapterId == null || chapterId == undefined || chapterId == ''){
        $('#chapter').text('(全书)');
    }else{
        var url1 = getContextPath() + '/chapter/get?chapterId=' + chapterId;
        $.get(url1,function (res) {
            $('#chapter').text('('+ res.name +')');
        })
    }
    var url = getContextPath() + '/course/course/get?courseId=' + courseId;
    $.get(url,function (res) {
        $('#course').text(res.name);
    })
});

layui.use(['layer','form','jquery'],function () {
    var form = layui.form;
    var layer = layui.layer;
    getSubject();
    function sp(){
        $('.zz').height($(window).height());
        $('.zz').width($(window).width());
        var a = $('.zz').height();
        $('.zz1').css('margin-top',(a-454)/2);
    }
    sp();
    window.onresize = sp;

    // 请求后端获取数据
    function getSubject(){
        var courseId = GetQueryString('courseId');
        var chapterId = GetQueryString('chapterId');
        var url = '';
        var data = {};

        // 查章节
        if (chapterId != null && chapterId != 0 && chapterId != undefined && chapterId != '') {
            url = getContextPath() + '/userchapterword/getWordInformation';
            data.chapterId = chapterId;
            $.post(url, data, function(res) {
                getWord(res);
                loading();
            });
        }else{
            // 查全书
            if (courseId != null && courseId != undefined){
                url = getContextPath() + '/userchapterword/getAllCourseWordInformation';
                data.courseId = courseId;
                $.post(url, data, function(res) {
                    // 动态添加数据
                    getWord100(res);
                    loading();
                });
            }
        }
    }

    // 动态添加元素
    function getWord100(res){
        var result = res;
        console.log('res',res);
        shuffle(result);
        var i = 0;
        if (result.length > 100){
            if (val == 1){
                for (i = 0;i < 100; i ++){
                    addContentThree(i,false,res);
                }
            } else if (val == 2) {
                for (i = 0;i < 100; i ++){
                    addContentTwo(i,false,res);
                }
            }else{
                for (i = 0;i < 100; i ++){
                    addContentOne(i,false,res);
                }
            }
        } else {
            if (val == 1){
                for (i = 0; i < result.length; i++){
                    addContentThree(i,false,res);
                }
            } else if (val == 2) {
                for (i = 0; i < result.length; i++){
                    addContentTwo(i,false,res);
                }
            }else {
                for (i = 0; i < result.length; i++){
                    addContentOne(i,false,res);
                }
            }
        }
    }

    // 动态添加元素
    function getWord(res){
        var result = res;
        shuffle(res);
        var i = 0;
        // if (result.length > 10){
        //     if (val == 1){
        //         for (i = 0;i < 10; i ++){
        //             addContentThree(i,false,res);
        //         }
        //     } else if (val == 2) {
        //         for (i = 0;i < 10; i ++){
        //             addContentTwo(i,false,res);
        //         }
        //     }else{
        //         for (i = 0;i < 10; i ++){
        //             addContentOne(i,false,res);
        //         }
        //     }
        // } else {
            if (val == 1){
                for (i = 0; i < result.length; i++){
                    addContentThree(i,false,res);
                }
            } else if (val == 2) {
                for (i = 0; i < result.length; i++){
                    addContentTwo(i,false,res);
                }
            }else {
                for (i = 0; i < result.length; i++){
                    addContentOne(i,false,res);
                }
            }
        // }
    }

    /**
     * 设定一个答对数组,只要点对了，就push,
     * 已经点对了，又点不重复push,
     * 点对了，又点了错的就移除,重复点错，只移除第一次
     */
    // 选择
    form.on('radio',function (data) {
        var selectValue = data.elem.title;
        var valueInf = data.elem.value;
        var arr = valueInf.split('$$$');
        var english = arr[0];
        var chinese = arr[1];
        var id = arr[2];
        if (chinese == selectValue){
            correctAnswer(english,id);
        }else {
            wrongAnswer(english,id);
        }
        console.log('答对的题目',rightclicked);
        console.log('答错的题目',errorclicked);
    });

    // 交卷逻辑 提示未写完，写完则弹出得分窗口
    $('#submit-paper').on('click',function(){
        if (errorclicked.length + rightclicked.length < testSubject.length) {
            layer.open({
                title: '提示',
                content: '还有未做完的题目' //这里content是一个普通的String
            });
        }else{
            $('#submit-paper').hide();
            $('#error-subject').show();
            getScore();
            var scoreSubject = 100/testSubject.length;
            var currentScore = Math.round(scoreSubject*rightclicked.length);
            updateScore(currentScore);
            $('#subject-num').append(testSubject.length);
            $('#right-num').append(rightclicked.length);
            if (currentScore >= 60){
                $('#cs-fail').hide();
                $('#cs-success').show();
                $('#success').show();
                $('#failure').hide();
            } else{
                $('#cs-fail').show();
                $('#cs-success').hide();
                $('#success').hide();
                $('#failure').show();
            }
            $('.cur-score').text(currentScore);
            $('.zz').fadeIn(300);
        }
    });

    // 获取上次得分
    function getScore(){
        var url = getContextPath() + '/userchapterword/getCourseScoreByIds';
        var data = {};
        data.userId = sessionId;
        data.courseId = GetQueryString('courseId');
        $.post(url, data, function (res) {
            $('#pre-score').text(res);
        })
    }

    // 更新分数
    function updateScore(score) {
        var url = getContextPath() + '/usercourse/usercourse/updateScore';
        var data = {};
        data.score = score;
        data.userId = sessionId;
        data.courseId = GetQueryString('courseId');
        $.post(url, data, function (res) {
                console.log('更新分数成功');
        })
    }

    // 关闭窗口
    $('.cha1').on('click',function(){
        $('.zz').fadeOut(300);
    });

    // 获取错题
    function getErrorSubject(){
        for (i = 0; i < rightclicked.length; i++){
            var id = rightclicked[i];
            $('#'+id).hide();
        }
        if (val == 3) {      // 选择题
            $('.da').show();
        }else if (val == 2) {
            $('.xianshi').hide();
            $('.yinbiao').hide();
            $('.answer').show();
        }else if (val == 1){
            $('.xianshi').hide();
            $('.yinbiao').hide();
            $('.answer').show();
        }
        // for (i = 0; i < testSubject.length; i++){
        //     var object = testSubject[i];
        //     var english = object.word.english;
        //     for (j = 0; j < errorclicked.length; j ++){
        //         if (english == errorclicked[j]){
        //             errorSubject.push(object);
        //         }
        //     }
        // }
        // for (n = 0; n < errorSubject.length; n++){
        //     $('#container').html('');
        //     if (val == 1) {
        //         for (n = 0; n < errorSubject.length; n++) {
        //             addContentThree(n, true);
        //         }
        //         $('.xianshi').hide();
        //         $('.yinbiao').hide();
        //         $('.answer').show();
        //     }else if(val == 2){
        //         for (n = 0; n < errorSubject.length; n++) {
        //             addContentTwo(n, true);
        //         }
        //         $('.xianshi').hide();
        //         $('.yinbiao').hide();
        //         $('.answer').show();
        //     } else{
        //         for (n = 0; n < errorSubject.length; n++){
        //             layui.use(['form'],function () {
        //                 var form = layui.form;
        //                 addContentOne(n,true);
        //                 form.render();
        //             });
        //         }
        //         $('.da').show();
        //     }
        // }
        $('.btn2').html('');
    }

    // 查看错题
    $('.lb').on('click',function(){
        getErrorSubject();
    });

    // 选项卡逻辑
    function addContentOne(num,error,res){
        var object = {};
        if (error){
            object = errorSubject[num];
        } else {
            var result = res;
            object = result[num];
            testSubject.push(object);
        }
        var id = object.word.id;
        var english = object.word.english;
        var engVoice = object.word.engVoice;
        var ameVoice = object.word.ameVoice;
        var voice;
        ameVoice ?  voice = ameVoice : voice = engVoice;
        var phoneticTranscription = object.word.phoneticTranscription;
        var chinese = object.word.chinese;
        console.log('chinese',chinese);
        var exampleArr = '';
        if (object.wordExample != null){
            exampleArr = object.wordExample.example.split("$$$");
        }else{
            exampleArr = '***$$$***';
        }
        var exampleEng = exampleArr[0];
        var exampleCh = exampleArr[1];
        var errorCh = object.errorCh;
        errorCh.push(chinese);
        shuffle(errorCh);
        $('#container').append(
            '<div class="xt" id="'+ id +'">\n' +
            '<div class="xt-title">\n' +
            '                <span>'+ (num+1) +')</span>\n' +
            '                <span>'+ english + '</span>&nbsp;&nbsp;<span>[ '+  phoneticTranscription +' ]</span>\n' +
            '                <a href="javascript:void(0)" class="wordvoice" onclick="playMp3(this)">\n' +
            '                    <audio class="voicebox" controls="" preload="auto" style="display: none;">\n' +
            '                        <source class="auto-play" src="'+ voice +'" type="audio/mpeg">\n' +
            '                    </audio>\n' +
            '                </a>\n' +
            '            </div>\n' +
            '            <div class="xt-content">\n' +
            '                <form class="layui-form layui-form-pane" action="">\n' +
            '                    <div class="layui-form-item">\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'$$$'+ id +'" title="'+ errorCh[0] +'">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'$$$'+ id +'"  title="'+ errorCh[1] +'">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'$$$'+ id +'"  title="'+ errorCh[2] +'">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'$$$'+ id +'"  title="'+ errorCh[3] +'">\n' +
            '                        </div>\n' +
            '                    </div>\n' +
            '                </form>\n' +
            '            </div>\n' +
            '       <div id="ch-right" class="da" style="color:#d81e06;font-size: 24px;display: none;">\n' +
            '           <span>正确答案：<i>'+ chinese +'</i></span>\n' +
            '       </div>\n' +
            '       </div>'

        );
        form.render();
    }

    // 听写逻辑 硬键盘
    function addContentTwo(num,error,res) {
        var object = {};
        if (error){
            object = errorSubject[num];
        } else {
            var result = res;
            object = result[num];
            testSubject.push(object);
        }
        var id = object.word.id;
        var english = object.word.english;
        var engVoice = object.word.engVoice;
        var ameVoice = object.word.ameVoice;
        var voice;
        ameVoice ?  voice = ameVoice : voice = engVoice;
        var phoneticTranscription = object.word.phoneticTranscription;
        var chinese = object.word.chinese;
        var exampleArr = '';
        if (object.wordExample != null){
            exampleArr = object.wordExample.example.split("$$$");
        }else{
            exampleArr = '***$$$***';
        }
        var exampleEng = exampleArr[0];
        var exampleCh = exampleArr[1];
        var errorCh = object.errorCh;
        errorCh.push(chinese);
        shuffle(errorCh);
        $('#container').append(
            '<div class="xt" id="'+ id +'">\n' +
            '            <div class="xt-title">\n' +
            '                <span>'+ (num + 1) +')</span>\n' +
            '                <span class="xianshi">词义显示</span>\n' +
            '                <a href="javascript:void(0)" class="wordvoice" onclick="playMp3(this)">\n' +
            '                    <audio class="voicebox" controls="" preload="auto" style="display: none;">\n' +
            '                        <source class="auto-play" src="'+ voice +'" type="audio/mpeg">\n' +
            '                    </audio>\n' +
            '                </a>\n' +
            '                <span class="yinbiao" style="margin-left:10px;">'+ chinese + '</span>\n' +
            '                <span class="answer" style="margin-left:10px;color:#d81e06;display: none">'+ english +'&nbsp;&nbsp;&nbsp;'+ chinese +'&nbsp;&nbsp;&nbsp;</span>\n' +
            '            </div>\n' +
            '            <div class="xt-content">\n' +
            '                <div class="xt1">\n' +
            '                    <form class="layui-form layui-form-pane" action="">\n' +
            '                        <div class="layui-form-item">\n' +
            '                            <div class="layui-input-block" style="margin-left:0;">\n' +
            '                                <input id="aaaa" onblur="yingJianPan(this)" onkeypress="enter()" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入" class="layui-input input-value" style="text-align: center;" >\n' +
            '                                <span style="display: none">' + english +'$$$'+ id +'</span>\n' +
            '                            </div>\n' +
            '                        </div>\n' +
            '                    </form>\n' +
            '                </div>\n' +
            '            </div>\n' +
            '        </div>'
        );
        form.render();
    }

    // 听写逻辑 软键盘
    function addContentThreeBefore(num,object){
        var id = object.word.id;
        var english = object.word.english;
        var ameVoice = object.word.ameVoice;
        var engVoice = object.word.engVoice;
        var voice;
        ameVoice ? voice = ameVoice : voice = engVoice;
        var chinese = object.word.chinese;
        $('#container').append(
            '        <div class="xt" id="'+ id +'">\n' +
            '            <div class="xt-title">\n' +
            '                <span>'+ (num + 1) +')</span>\n' +
            '                <span class="xianshi">词义显示</span>\n' +
            '                <a href="javascript:void(0)" class="wordvoice" onclick="playMp3(this)">\n' +
            '                    <audio class="voicebox" controls="" preload="auto" style="display: none;">\n' +
            '                        <source class="auto-play" src="'+ voice +'" type="audio/mpeg">\n' +
            '                    </audio>\n' +
            '                </a>\n' +
            '                <span class="yinbiao" style="margin-left:10px;">'+ chinese + '</span>\n' +
            '                <span class="answer" style="margin-left:10px;color:#d81e06;display: none">'+ english +'&nbsp;&nbsp;&nbsp;'+ chinese +'&nbsp;&nbsp;&nbsp;</span>\n' +
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
    function addContentThree(num,error,res){
        var object;
        error ? object = errorSubject[num] : [object = res[num],testSubject.push(object)];
        addContentThreeBefore(num, object);
        var english = object.word.english;
        var id = object.word.id;
        english = english.replace('\'','`');
        console.log(english);
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
                $('#a-word-'+ num).append('<li class="lfi1 word-btn-'+ id + j +' " onclick="keybroad_select_word(this,\''+ english + '\',\''+ id +'\')">' + arr[j] + '</li>\n');
                $('#aa-word-'+ num).append('<li class="lfi1 word-btn-'+ id + j +'" onclick="keybroad_select_word(this,\''+ english + '\',\''+ id +'\')">' + abc[j] + '</li>\n');
            }else{
                $('#a-word-'+ num).append('<li class="lfi1 word-btn-'+ id + j +'" onclick="keybroad_select_word(this,\''+ english + '\',\''+ id +'\')">' + abc[j] + '</li>\n');
                $('#aa-word-'+ num).append('<li class="lfi1 word-btn-'+ id + j +'" onclick="keybroad_select_word(this,\''+ english + '\',\''+ id +'\')">' + arr[j] + '</li>\n');
            }
            $('#a-word-click-'+ num).append('<li id="li-'+ id + '-'+ j +'" style="width:auto!important;height:auto!important;padding:0;float:inherit;display: inline-block;"></li>\n')
        }
        $('.lfi').hide();
        $('.lfii').show();
        $('.lfiii').show();
    }
});

// 硬键盘
function yingJianPan(o) {
    console.log('111');
    var inputValue = $(o).val();
    var rightValue = $(o).next().text();
    var arr = rightValue.split('$$$');
    var english = arr[0];
    var id = arr[1];
    if (inputValue == english){
        correctAnswer(english,id);
    }else {
        wrongAnswer(english,id);
    }
    console.log('答对的题目',rightclicked);
    console.log('答错的题目',errorclicked);
}

function enter(){
    var e = arguments.callee.caller.arguments[0];
    if (e.keyCode==13) {
        e.preventDefault();
    }
}

// 软键盘
function keybroad_select_word(o,english,id) {
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
        var text = $('.word-btn-'+ id + i + '.selected').text();
        $('#li-'+ id + '-' + i).text(text);
        select += text;
    }
    if(select.length == english.length){
        if (select == english) {
            correctAnswer(english,id);
        }else {
            wrongAnswer(english,id);
        }
        console.log('答对的题目',rightclicked);
        console.log('答错的题目',errorclicked);
    }
}

// 答对 添加答对队列
function correctAnswer(english,id){
    if (rightclicked.length < 1){
        rightclicked.push(id);
    }else{
        // 校验 是否存在 , 不存在就push  已经存在就什么都不做
        if ($.inArray(id,rightclicked) < 0) {
            rightclicked.push(id);
        }
    }
    // 答对逻辑中，如果存在就移除，如果不存在就什么也不做
    if (errorclicked.length >= 1){
        if ($.inArray(id,errorclicked) >= 0) {
            errorclicked.splice($.inArray(id,errorclicked),1);
        }
    }
}

// 答错 添加答错队列
function wrongAnswer(english,id){
    // 答错添加答错列表
    if (errorclicked.length < 1){
        errorclicked.push(id);
    }else{
        // 校验 是否存在 , 不存在就push  已经存在就什么都不做
        if ($.inArray(id,errorclicked) < 0) {
            errorclicked.push(id);
        }
    }
    // 移除答对列表
    if (rightclicked.length >= 1){
        // 校验是否存在，如果存在就移除，如果不存在就什么也不做
        console.log($.inArray(id,rightclicked));
        if ($.inArray(id,rightclicked) >= 0) {
            rightclicked.splice($.inArray(id,rightclicked),1);
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

//发音图标
function playMp3(o) {
    console.log('playMp3');
    var f = $(o).children('.voicebox');
    var source = f.children('.auto-play');
    var src = source.attr('src');
    console.log(src);
    var audio=new Audio(src);
    audio.play();
}

function loading(){
    $('#loading').hide();
    $('#submit-paper').show();
}





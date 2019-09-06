var testSubject = [];
var errorSubject = [];
var val = GetQueryString('val');
$(function(){
    var courseId = GetQueryString('courseId');
    var data = {};
    data.courseId = courseId;
    data.userId = sessionId;
    var url = getContextPath() + '/userchapterword/getCourseHard';
    $.post(url, data, function(res) {
            // 设置缓存
            u.setStorage('result',res);
            console.log('result',u.getStorage('result'));
        }
    )
});

// 动态添加元素
function getWord(){
    var result = u.getStorage('result');
    var i = 0;
    var j = randNum(result.length);
    if (result.length > 10){
        if (val == 1){
            for (i = 0;i < 10; i ++){
                addContentTwo(i,false);
            }
        } else {
            for (i = 0;i < 10; i ++){
                addContentOne(i,false);
            }
        }
    } else {
        if (val == 1){
            for (i = 0; i < result.length; i++){
                addContentTwo(i,false);
            }
        } else{
            for (i = 0; i < result.length; i++){
                addContentOne(i,false);
            }
        }
    }
}

layui.use(['layer','form','jquery'],function () {
    var form = layui.form;
    var layer = layui.layer;
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


    /**
     * 设定一个答对数组,只要点对了，就push,
     * 已经点对了，又点不重复push,
     * 点对了，又点了错的就移除,重复点错，只移除第一次
     */
    var rightclicked = [];
    var errorclicked = [];
    // 选择
    form.on('radio',function (data) {
        var selectValue = data.elem.title;
        var valueInf = data.elem.value;
        var arr = valueInf.split('$$$');
        var english = arr[0];
        var chinese = arr[1];
        if (chinese == selectValue){
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
        }else {
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
        console.log('答对的题目',rightclicked);
        console.log('答错的题目',errorclicked);
    });

    // 听写
    $('.input-value').on('blur',function () {
        var inputValue = $(this).val();
        var rightValue = $(this).next().text();
        if (inputValue == rightValue){
            if (rightclicked.length < 1){
                rightclicked.push(rightValue);
            }else{
                // 校验 是否存在 , 不存在就push  已经存在就什么都不做
                if ($.inArray(rightValue,rightclicked) < 0) {
                    rightclicked.push(rightValue);
                }
            }
            // 答对逻辑中，如果存在就移除，如果不存在就什么也不做
            if (errorclicked.length >= 1){
                if ($.inArray(rightValue,errorclicked) >= 0) {
                    errorclicked.splice($.inArray(rightValue,errorclicked),1);
                }
            }
        }else {
            // 答错添加答错列表
            if (errorclicked.length < 1){
                errorclicked.push(rightValue);
            }else{
                // 校验 是否存在 , 不存在就push  已经存在就什么都不做
                if ($.inArray(rightValue,errorclicked) < 0) {
                    errorclicked.push(rightValue);
                }
            }
            // 移除答对列表
            if (rightclicked.length >= 1){
                // 校验是否存在，如果存在就移除，如果不存在就什么也不做
                console.log($.inArray(rightValue,rightclicked));
                if ($.inArray(rightValue,rightclicked) >= 0) {
                    rightclicked.splice($.inArray(rightValue,rightclicked),1);
                }
            }
        }
        console.log('答对的题目',rightclicked);
        console.log('答错的题目',errorclicked);
    });

    // 提示未写完，写完则弹出得分窗口
    $('.btn3').on('click',function() {
        if (errorclicked.length + rightclicked.length < testSubject.length) {
            layer.open({
                title: '提示',
                content: '还有未做完的题目' //这里content是一个普通的String
            });
        } else {
            var rightSubject_new = [];
            for (i = 0; i < testSubject.length; i++){
                var object = testSubject[i];
                var english = object.word.english;
                for (j = 0; j < rightclicked.length; j ++){
                    if (english == rightclicked[j]){
                        rightSubject_new.push(object);
                    }
                }
            }
            for (n = 0; n < rightSubject_new.length; n++){
                var userChapterWord = rightSubject_new[n].userChapterWord;
                console.log('userChapterWord',userChapterWord);
                userChapterWord.studyStatus = '3';
                userChapterWord.strangeWord = 'F';
                updateWord(userChapterWord);
            }
            $('#subject-num').append(testSubject.length);
            $('#right-num').append(rightclicked.length);
            // killHardWord();
            $('.zz').fadeIn(300);
        }
    });

        // 是否生词
        // function killHardWord() {
        //     var userChapterWord = getUserChapterWord();
        //     userChapterWord.studyStatus = '3';
        //     userChapterWord.strangeWord = 'F';
        //     return userChapterWord;
        // }

    // 关闭窗口
    $('.cha1').on('click',function(){
        $('.zz').fadeOut(300);
    });

    // 获取错题
    function getErrorSubject(){
        for (i = 0; i < testSubject.length; i++){
            var object = testSubject[i];
            var english = object.word.english;
            for (j = 0; j < errorclicked.length; j ++){
                if (english == errorclicked[j]){
                    errorSubject.push(object);
                }
            }
        }
        for (n = 0; n < errorSubject.length; n++){
            $('#container').html('');
            if (val == 1){
                for (n = 0; n < errorSubject.length; n++){
                    addContentTwo(n,true);
                }
                $('.xianshi').hide();
                $('.yinbiao').hide();
                $('.answer').show();
            } else{
                for (n = 0; n < errorSubject.length; n++){
                    addContentOne(n,true);
                }
                $('#ch-right').show();
            }
        }
        $('.btn2').html('');
    }

    // 查看错题
    $('.lb').on('click',function(){
        getErrorSubject();
    });
    //发音图标
    $('.wordvoice').on('click',function () {
        console.log('playMp3');
        var f = $(this).children('.voicebox');
        var source = f.children('.auto-play');
        var src = source.attr('src');
        console.log(src);
        var audio=new Audio(src);
        audio.play();
    });
});

function addContentOne(num,error){
    var object = {};
    if (error){
        object = errorSubject[num];
    } else {
        var result = u.getStorage('result');
        object = result[num];
        testSubject.push(object);
    }
    var english = object.word.english;
    var engVoice = object.word.engVoice;
    var ameVoice = object.word.ameVoice;
    var voice = ameVoice ? ameVoice : engVoice;
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
        '<div class="xt">\n' +
        '<div class="xt-title">\n' +
        '                <span>'+ (num+1) +')</span>\n' +
        '               <span>'+ english + '</span><span>'+  phoneticTranscription +'</span>\n' +
        '                <a href="javascript:void(0)" class="wordvoice">\n' +
        '                    <audio class="voicebox" controls="" preload="auto" style="display: none;">\n' +
        '                        <source class="auto-play" src="'+ voice +'" type="audio/mpeg">\n' +
        '                    </audio>\n' +
        '                </a>\n' +
        '            </div>\n' +
        '            <div class="xt-content">\n' +
        '                <form class="layui-form layui-form-pane" action="">\n' +
        '                    <div class="layui-form-item">\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'" title="'+ errorCh[0] +'">\n' +
        '                        </div>\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'"  title="'+ errorCh[1] +'">\n' +
        '                        </div>\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'"  title="'+ errorCh[2] +'">\n' +
        '                        </div>\n' +
        '                        <div class="layui-input-block">\n' +
        '                            <input type="radio" name="xt" value="'+ english + '$$$'+chinese +'"  title="'+ errorCh[3] +'">\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                </form>\n' +
        '            </div>\n' +
        '       </div>\n' +
        '       <div id="ch-right" class="da" style="color:#d81e06;font-size: 24px;display: none;">\n' +
        '           <span>正确答案：<i>'+ chinese +'</i></span>\n' +
        '       </div>'
    )
}

function addContentTwo(num,error) {
    var object = {};
    if (error){
        object = errorSubject[num];
    } else {
        var result = u.getStorage('result');
        object = result[num];
        testSubject.push(object);
    }
    var english = object.word.english;
    var engVoice = object.word.engVoice;
    var ameVoice = object.word.ameVoice;
    var voice = ameVoice ? ameVoice : engVoice;
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
        '<div class="xt">\n' +
        '            <div class="xt-title">\n' +
        '                <span>'+ (num + 1) +')</span>\n' +
        '                <span class="xianshi">词义显示</span>\n' +
        '                <a href="javascript:void(0)" class="wordvoice">\n' +
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
        '                                <input id="aaaa"  type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入" class="layui-input input-value" style="text-align: center;" >\n' +
        '                                <span style="display: none">' + english+'</span>\n' +
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


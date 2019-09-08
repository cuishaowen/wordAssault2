// 公共变量
u.setStorage('result','');
var result = [];
// 存放错题
var errorSubjects = [];
// 设置一个公共变量，用于遍历数组
var pageNum = 0;
// 请求后台数据加载选择题，并将数据存储进缓存
$(function (){
    var chapterId = GetQueryString("chapterId");
    var url = getContextPath() + '/userchapterword/getWordInformation';
    var data = {};
    data.chapterId = chapterId;
    data.pageNum = pageNum;
    if (result == null || result == undefined || result == ''){
        $.post(url, data, function(res) {
            // 设置缓存
            u.setStorage('result',res);
            result = res;
            pageOne(res);
        })
    }
});

// 获取当前操作对象
function getUserChapterWord(){
    var result = u.getStorage('result');
    var wordId = '';
    var i = pageNum -1 ;
    // var wordId = result[pageNum].word.id;
    if (i < result.length){
        wordId = result[i].word.id;
    }else{
        wordId = errorSubjects[0].word.id;
    }
    var userChapterWords = u.getStorage('userChapterWords');
    console.log('getUserChapterWordRes:',userChapterWords);
    for (i = 0; i < userChapterWords.length; i++){
        if (wordId == userChapterWords[i].wordId) {
            return userChapterWords[i];
        }
    }
}
// 是否生词
function HardWord() {
    var userChapterWord = getUserChapterWord();
    userChapterWord.studyStatus = '2';
    userChapterWord.strangeWord = 'T';
    if (userChapterWord.wrongTime == null || userChapterWord.wrongTime == undefined || userChapterWord.wrongTime == ''){
        userChapterWord.wrongTime = 0;
    }
    userChapterWord.wrongTime += 1;
    return userChapterWord;
}
// 已学
function alreadyLearn() {
    var userChapterWord = getUserChapterWord();
    userChapterWord.studyStatus = '2';
    return userChapterWord;
}
getUserChapterWords();
// ----------------------------------------------------第一页逻辑--------------------------------------------
/**
 * 加载第一个页面数据
 * @param res
 */
function pageOne(res) {
    var object = {};
    if (pageNum < result.length){
        object = result[pageNum];
    }else{
        object = res;
    }
    console.log('object:',object);
    var english = object.word.english;
    var engVoice = object.word.engVoice;
    var ameVoice = object.word.ameVoice;
    var voice = ameVoice ? ameVoice : engVoice;
    var audio=new Audio(voice);
    audio.play();
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
    if (pageNum < result.length){
        errorCh.push(chinese);
    }
    shuffle(errorCh);
    $('.da').hide();
    $('.ch-ans').text(chinese);
    $('#eng-word').text(english);
    // $('#eng-right').text(chinese);
    $('#ch-word').text(chinese);
    $('#fayin audio source').attr('src',voice);
    $('#radio-1').val(errorCh[0]);
    $('#radio-1').text('A. '+ errorCh[0]);
    $('#radio-2').val(errorCh[1]);
    $('#radio-2').text('B. '+ errorCh[1]);
    $('#radio-3').val(errorCh[2]);
    $('#radio-3').text('C. '+ errorCh[2]);
    $('#radio-4').val(errorCh[3]);
    $('#radio-4').text('D. '+ errorCh[3]);
}

// 获取当前点击按钮的值
$('#radio-1').on('click',function(){
    var select = $(this).val();
    var right = $('.ch-ans').text();
    if (select == right) {
        $(this).addClass('btn-right');
    } else {
        $(this).addClass('btn-error');
    }
    nextSubject(select);
});
$('#radio-2').on('click',function(){
    var select = $(this).val();
    var right = $('.ch-ans').text();
    if (select == right) {
        $(this).addClass('btn-right');
    } else {
        $(this).addClass('btn-error');
    }
    nextSubject(select);
});
$('#radio-3').on('click',function(){
    var select = $(this).val();
    var right = $('.ch-ans').text();
    if (select == right) {
        $(this).addClass('btn-right');
    } else {
        $(this).addClass('btn-error');
    }
    nextSubject(select);
});
$('#radio-4').on('click',function(){
    var select = $(this).val();
    var right = $('.ch-ans').text();
    if (select == right) {
        $(this).addClass('btn-right');
    } else {
        $(this).addClass('btn-error');
    }
    nextSubject(select);
});

/**
 * 点击选项，如果选择正确 直接进入下一题 选择错误弹出正确答案 和下一题
 * 选择正确则影藏当前的，显示下一题
 * 选择错误 则将所有选项disabled
 */
function nextSubject(select) {
    pageNum++;
    console.log('pageNum',pageNum);
    var right = $('.ch-ans').text();
    if (select == right){
        xuanyiAnsRight();
        radioDisabledTrue();
        var userChapterWord = alreadyLearn();
        updateWord(userChapterWord);
        if (pageNum > result.length) {
            errorSubjects.shift();
            console.log('errorSubjectsRight',errorSubjects);
        }
    }else{
        xuanyiAnsError();
        radioDisabledTrue();
        var userChapterWord = HardWord();
        updateWord(userChapterWord);
        if (pageNum < result.length) {
            errorSubjects.push(result[pageNum-1]);
            console.log('errorSubjectsError',errorSubjects);
        }else {
            errorSubjects.push(errorSubjects[0]);
            errorSubjects.shift();
            console.log('errorSubjectsError',errorSubjects);
        }
    }
}
$('#nextsub').on('click',function(){
    $('button').removeClass('btn-right').removeClass('btn-error');
    $(this).hide();
    radioDisabledFalse();
    var res = result[pageNum];
    if (pageNum < result.length) {
        pageOne(res);
    }else {
        if (errorSubjects.length > 0){
            pageOne(errorSubjects[0]);
            console.log('errorSubjects0000:',errorSubjects[0]);
        }else{
            console.log('没有错误的选择题了');
            // 开始第二页数据
            pageNum = 0;
            $('#xuanyiBox').hide();
            $('#pinxieBox').show();
            $('.pingxie_da').hide();

            page2(result[pageNum]);
        }

    }
});
// 答对
function xuanyiAnsRight() {
    $('.da').show();
    $('.ch-right').show();
    $('.ch-error').hide();
    $('#nextsub').show();
}
// 答错
function xuanyiAnsError(){
    $('.da').show();
    $('.ch-right').hide();
    $('.ch-error').show();
    $('#nextsub').show();
}


// btn 设置不可点击
function radioDisabledTrue(){
    $('#radio-1').attr('disabled',true);
    $('#radio-2').attr('disabled',true);
    $('#radio-3').attr('disabled',true);
    $('#radio-4').attr('disabled',true);
}
// btn 设置可以点击
function radioDisabledFalse(){
    $('#radio-1').attr('disabled',false);
    $('#radio-2').attr('disabled',false);
    $('#radio-3').attr('disabled',false);
    $('#radio-4').attr('disabled',false);
}
//    ------------------------------------------------- 第二页逻辑  --------------------------------------------------
/**
 * 加载第二个页面数据
 */
function page2(res) {
    index = 0;
    word = "";
    var object = {};
    if (pageNum < result.length){
        object = result[pageNum];
    }else{
        object = res;
    }
    var english = object.word.english;
    var ameVoice = object.word.ameVoice;
    var engVoice = object.word.engVoice;
    var voice = ameVoice ? ameVoice : engVoice;
    var audio=new Audio(voice);
    audio.play();
    var phoneticTranscription = object.word.phoneticTranscription;
    var chinese = object.word.chinese;
    var exampleArr = object.wordExample.example.split("$$$");
    var exampleEng = exampleArr[0];
    var exampleCh = exampleArr[1];
    var errorCh = object.errorCh;
    if (pageNum < result.length){
        errorCh.push(chinese);
    }
    shuffle(errorCh);
    $('#ch-word').text(chinese);
    $('.eng-ans').text(english);
    $('#fayin2 audio source').attr('src',voice);
    $('#aaaa').val('');
    if (jPanType == '1'){
        var arr = [];
        for (var i = 0; i < english.length; i++) {
            arr.push(english.charAt(i))
        }
        $('#a-word').html('');
        $('#aa-word').html('');
        $('#a-word-click').html('');
        for (var j = 0; j < arr.length; j++) {
            var abc = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','x','y','z','w','v','u'];
            abc.splice($.inArray(arr[j],abc),1);
            var flag = randNum();
            shuffle(abc);
            if (flag == 'T'){
                $('#a-word').append('<li class="lfi1">' + arr[j] + '</li>\n');
                $('#aa-word').append('<li class="lfi1">' + abc[j] + '</li>\n');
            }else{
                $('#a-word').append('<li class="lfi1">' + abc[j] + '</li>\n');
                $('#aa-word').append('<li class="lfi1">' + arr[j] + '</li>\n');
            }

            $('#a-word-click').append('<li style="width:auto!important;height:auto!important;padding:0;float:inherit;display: inline-block;"></li>\n')
        }
        $('.lfi').hide();
        $('.lfii').show();
        $('.lfiii').show();
    }else{
        $('.lfi').show();
        $('.lfii').hide();
        $('.lfiii').hide();
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

/**
 * 输入完毕后按enter 触发事件，比对输入值与正确的单词是否相同
 */
$('#aaaa').on('keypress',function(e){
    if(e.keyCode==13){
        pageNum++;
        console.log('pageNum',pageNum);
        e.preventDefault();
        var a = $('#aaaa').val();
        var b = $('.pingxie_da span i').text();
        var c = $('.lfiii .layui-input-block ul li').text();
        if (a == b || c == b) {
            pinxieAnsRight();
            var userChapterWord = alreadyLearn();
            updateWord(userChapterWord);
            if (pageNum > result.length) {
                errorSubjects.shift();
                console.log('errorSubjectsRight',errorSubjects);
            }
        } else {
            pinxieAnsError();
            var userChapterWord = HardWord();
            updateWord(userChapterWord);
            if (pageNum < result.length) {
                errorSubjects.push(result[pageNum-1]);
            }else {
                errorSubjects.push(errorSubjects[0]);
                errorSubjects.shift();
                console.log('errorSubjectsError',errorSubjects);
            }
        }
    }
});

// 点击进入下一特
$('#next-page').on('click',function () {
    $('.pingxie_da').hide();
    $(this).hide();
    $('#aaaa').attr('disabled',false);

    var res = result[pageNum];
    if (pageNum < result.length) {
        page2(res);
    }else {
        if (errorSubjects.length > 0) {
            page2(errorSubjects[0]);
            console.log('errorSubjects0000:', errorSubjects[0]);
        } else {
            console.log('没有错误的选择题了');
            alert('恭喜你闯关成功！');
            var userChapterWords = u.getStorage('userChapterWords');
            var userChapters = u.getStorage('userChapters');
            var chapterId = userChapterWords[0].chapterId;
            var courseId = userChapterWords[0].courseId;
            var userChapter = {};
            var  userChapterNext = {};
            var j  = 0;
            for (i = 0; i < userChapters.length; i++){
                j = i + 1;
                if (j <= userChapters.length) {
                    if (chapterId == userChapters[i].userChapter.chapterId){
                        userChapter = userChapters[i].userChapter;
                        userChapterNext = userChapters[j].userChapter;
                        break;
                    }
                }
            }
            if (userChapter.studyStatus != '3'){
                var studyStatus = '3';
                updateStatus(chapterId,studyStatus); // 修改此章节完成
                console.log('userChapterNext', userChapterNext);
                updateStatus(userChapterNext.chapterId, '1'); // 开通下一章节
                $('.xl_btns').load(location.href + ' .xl_btns');
                addLoop();
            }
        }
    }
});
// 答对
function pinxieAnsRight(){
    $('.pingxie_da').show();
    $('.eng-right').show();
    $('.eng-error').hide();
    $('#next-page').show();
    $('#aaaa').attr('disabled',true);
}
// 答错
function pinxieAnsError(){
    $('.pingxie_da').show();
    $('.eng-right').hide();
    $('.eng-error').show();
    $('#next-page').show();
    $('#aaaa').attr('disabled',true);
}

//发音图标
$('#fayin').on('click',function () {
    var f = $('#fayin audio source').attr('src');
    var audio=new Audio(f);
    audio.play();
});
$('#fayin2').on('click',function () {
    var f = $('#fayin2 audio source').attr('src');
    var audio=new Audio(f);
    audio.play();
});
//发音图标
$('#fayin').on('click',function () {
    var f = $('.wordvoice audio source').attr('src');
    var audio=new Audio(f);
    audio.play();
});


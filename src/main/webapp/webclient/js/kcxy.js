// 公共变量
u.setStorage('result','');
var result = [];
// 存放错题
var errorSubjects = [];
// 设置一个公共变量，用于遍历数组
var pageNum = 0;
// 请求后台数据加载选择题，并将数据存储进缓存
$(function(){
    var chapterId = GetQueryString("chapterId");
    var url = getContextPath() + '/userchapterword/getWordInformation';
    var data = {};
    data.chapterId = chapterId;
    data.pageNum = pageNum;
    var myDate = new Date;
    var year = myDate.getFullYear(); //获取当前年
    var mon = myDate.getMonth() + 1; //获取当前月
    var DateStr = year+ '/' + mon +'/';
    if (result == null || result == undefined || result == ''){
        $.post(
            url,
            data,
            function(res) {
                // 设置缓存
                u.setStorage('result',res);
                result = res;
                console.log('result',u.getStorage('result'));
                pageOne(res);
                // page2(res);
            }
        )
    }
});
// 获取当前操作对象
function getUserChapterWord(){
    var result = u.getStorage('result');
    var wordId = '';
    // var wordId = result[pageNum].word.id;
    if (pageNum < result.length){
        wordId = result[pageNum].word.id;
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
    $('.da').hide();
    $('#ch-right').text(chinese);
    $('#eng-word').text(english);
    $('#eng-right').text(chinese);
    $('#ch-word').text(chinese);
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
    console.log(':',$(this).val());
    var select = $(this).val();
    nextSubject(select);
});
$('#radio-2').on('click',function(){
    console.log(':',$(this).val());
    var select = $(this).val();
    nextSubject(select);
});
$('#radio-3').on('click',function(){
    console.log(':',$(this).val());
    var select = $(this).val();
    nextSubject(select);
});
$('#radio-4').on('click',function(){
    console.log(':',$(this).val());
    var select = $(this).val();
    nextSubject(select);
});

/**
 * 点击选项，如果选择正确 直接进入下一题 选择错误弹出正确答案 和下一题
 * 选择正确则影藏当前的，显示下一题
 * 选择错误 则将所有选项disabled
 */
function nextSubject(select) {
    var right = $('#ch-right').text();
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
        if (pageNum < result.length) {
            errorSubjects.push(result[pageNum]);
        }else {
            errorSubjects.push(errorSubjects[0]);
            errorSubjects.shift();
            console.log('errorSubjectsError',errorSubjects);
        }
        var userChapterWord = HardWord();
        updateWord(userChapterWord);
    }
}
$('#nextsub').on('click',function(){
    pageNum++;
    console.log('pageNum',pageNum);
    $(this).hide();
    radioDisabledFalse();
    var res = result[pageNum];
    if (pageNum < result.length) {
        pageOne(res);
    }else {
        if (errorSubjects.length > 0){
            pageOne(errorSubjects[0]);
            console.log('errorSubjects0000:',errorSubjects[0]);
        }
    }
});
// 答对
function xuanyiAnsRight() {
    $('.da').show();
    $('.da span').show();
    $('.da b').hide();
    $('#nextsub').show();
}
// 答错
function xuanyiAnsError(){
    $('.da').show();
    $('.da span').hide();
    $('.da b').show();
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
    var result = u.getStorage('result');
    if (result == '') {
        result = res;
    }
    var object = result[pageNum];
    var english = object.word.english;
    var phoneticTranscription = object.word.phoneticTranscription;
    var chinese = object.word.chinese;
    var exampleArr = object.wordExample.example.split("$$$");
    var exampleEng = exampleArr[0];
    var exampleCh = exampleArr[1];
    var errorCh = object.errorCh;
    errorCh.push(chinese);
    shuffle(errorCh);

    $('#ch-word').text(chinese);
    $('#eng-right').text(english);
    var arr = [];
    $('#aaaa').attr('disabled',false);

    for (var i = 0; i < english.length; i++) {
        arr.push(english.charAt(i))
    }
    arr.join(',');
    shuffle(arr);
    console.log(arr);
    $('#aaaa').val('');
    $('#a-word').html('');
    $('#a-word-click').html('');
    for (var j = 0; j < arr.length; j++) {
        $('#a-word').append('<li class="lfi1">' + arr[j] + '</li>\n');
        $('#a-word-click').append('<li style="width:auto!important;height:auto!important;padding:0;float:inherit;display: inline-block;"></li>\n')
    }
}

/**
 * 输入完毕后按enter 触发事件，比对输入值与正确的单词是否相同
 */
$('#aaaa').on('keypress',function(e){
    if(e.keyCode==13){
        e.preventDefault();
        var a = $('#aaaa').val();
        var b = $('.pingxie_da span i').text();
        var c = $('.lfiii .layui-input-block ul li').text();
        if (a == b || c == b) {
            var userChapterWord = alreadyLearn();
            updateWord(userChapterWord);
            nextPage();
        } else {
            pinxieAnsError();
            $('#aaaa').attr('disabled', true);
            $('#next-page').show();
        }
    }
});

// 点击进入下一特
$('#next-page').on('click',function () {
    HardWord();
    updateWord(userChapterWord);
    nextPage();
});

// 答对
function pinxieAnsRight(){
    $('.pingxie_da').show();
    $('.pingxie_da span').show();
    $('.pingxie_da b').show();
}
// 答错
function pinxieAnsError(){
    $('.pingxie_da span').hide();
    $('.pingxie_da b').hide();
    $('.pingxie_da').hide();
}


/**
 * 点击进入下一页
 */
function nextPage(){
    pageNum++;
    var result = u.getStorage('result');
    var res = result[pageNum];
    console.log('nextPageRes:',res);
    page2(res);
    $('.da span').hide();
    $('.da b').hide();
    $('#pinxieBox').hide();
    $('#xuanyiBox').show();
    pinxieAnsError();
    $('#nextsub').hide();
    $('#next-page').hide();
}
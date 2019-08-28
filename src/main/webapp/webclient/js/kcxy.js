// 公共变量
u.setStorage('result','');
var result = [];
// 设置一个公共变量，用于遍历数组
var pageNum = 0;

// 请求后台数据，并将数据存储进缓存
function chapterWord(){
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
                console.log('result',u.getStorage('result'));
                page(res);
                page2(res);
            }
        )
    }
}
chapterWord();

// ----------------------------------------------------第一页逻辑--------------------------------------------

/**
 * 加载第一个页面数据
 * @param res
 */
function page(res) {
    var result = u.getStorage('result');
    if (result == ''){
        result = res;
    }
    var object = result[pageNum];
    console.log('object:',object);
    var english = object.word.english;
    var phoneticTranscription = object.word.phoneticTranscription;
    var chinese = object.word.chinese;
    var exampleArr = object.wordExample.example.split("$$$");
    var exampleEng = exampleArr[0];
    var exampleCh = exampleArr[1];
    var errorCh = object.errorCh;
    errorCh.push(chinese);
    shuffle(errorCh);
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
        $('#xuanyiBox').hide();
        $('#pinxieBox').show();
    }else{
        $('#radio-1').attr('disabled',true);
        $('#radio-2').attr('disabled',true);
        $('#radio-3').attr('disabled',true);
        $('#radio-4').attr('disabled',true);
        $('.da span').show();
        $('.da b').show();
        $('#nextsub').show();
    }
}

/**
 * 点击进入下一题
 */
$('#nextsub').on('click',function(){
    $(this).hide();
    $('#xuanyiBox').hide();
    $('#pinxieBox').show();
});

//    ------------------------------------------------- 第二页逻辑  --------------------------------------------------

/**
 * 加载第二个页面数据
 */
function page2(res) {
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
        if(e.keyCode==13) {
            var a = $('#aaaa').val();
            var b = $('.pingxie_da span i').text();
            var c = $('.lfiii .layui-input-block ul li').text();
            if (a == b || c == b) {
                $('.pingxie_da b').hide();
                $('.pingxie_da span').show();
                nextPage();
            } else {
                $('#aaaa').attr('disabled', true);
                $('.pingxie_da').show();
                $('#next-page').show();
            }
        }
    }
});

// 隐藏答案
$('#key-1').on('click',function(){
    $('.pingxie_da span i').hide();
    $('.pingxie_da b').hide();
});
$('#key-2').on('click',function(){
    $('.pingxie_da span i').hide();
    $('.pingxie_da b').hide();
});

// 点击进入下一特
$('#next-page').on('click',function () {
    nextPage();
});

/**
 * 点击进入下一页
 */
function nextPage(){
    pageNum++;
    var result = u.getStorage('result');
    var res = result[pageNum];
    console.log('nextPageRes:',res);
    page(res);
    page2(res);
    $('#radio-1').attr('disabled',false);
    $('#radio-2').attr('disabled',false);
    $('#radio-3').attr('disabled',false);
    $('#radio-4').attr('disabled',false);
    $('.da span').hide();
    $('.da b').hide();
    $('#pinxieBox').hide();
    $('#xuanyiBox').show();
    $('.pingxie_da').hide();
    $('#nextsub').hide();
    $('#next-page').hide();
}
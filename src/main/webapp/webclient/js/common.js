//定义全局变量函数
var uzStorage = function () {
    var ls = window.localStorage;
    return ls;
};
// 定义全局变量u
var u = {};

// 设置缓存
u.setStorage = function (key, value) {
    var v = value;
    if (typeof v == 'object') {
        v = JSON.stringify(v);
        v = 'obj-' + v;
    } else {
        v = 'str-' + v;
    }
    var ls = uzStorage();
    if (ls) {
        ls.setItem(key, v);
    }
};

// 获取缓存
u.getStorage = function (key) {
    var ls = uzStorage();
    if (ls) {
        var v = ls.getItem(key);
        if (!v) {
            return;
        }
        if (v.indexOf('obj-') === 0) {
            v = v.slice(4);
            return JSON.parse(v);
        } else if (v.indexOf('str-') === 0) {
            return v.slice(4);
        }
    }
};

// 从url 截取数据
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg); //获取url中"?"符后的字符串并正则匹配
    var context = "";
    if (r != null)
        context = r[2];
    reg = null;
    r = null;
    return context == null || context == "" || context == "undefined" ? "" : context;
}
var urlId = GetQueryString("id");
console.log(urlId);

var loginName = "";// 登录名字
var sessionId= "";// id
var userName = "";// 昵称
var num = "";// 编号
var loginTimes = "";// 登录次数
var optionsId = "";// 操作对象id
var jPanType = ''; // 软硬键盘设置 (1软键盘，2硬键盘)
var mp3Type = '';  // 发音设置  (1英式发音，2美式发音)
$.ajax({
    "url" : getContextPath() +"/enguser/enguser/getUserSession",
    "method" : "POST",
    "cache" : false,
    "async" : false,
}).success(function(data){
    if(data.loginName != null){
        console.log(data);
        loginName = data.loginName;
        sessionId = data.id;
        userName = data.name;
        num = data.num;
        loginTimes = data.loginTimes;
        optionsId = data.optionsId;
        jPanType = data.JpanType;
        mp3Type = data.Mp2Type;
        u.setStorage('userInformation',data);
    }
});

// 用户信息
$('#userName').text(userName);
$('#loginUserName').text(userName);
$('#num').text(num);
$('#loginTimes').text(loginTimes);


//登出系统
function loginOut() {
    layer.confirm("确定要退出系统吗？",function () {
        //先记录操作option数据，再清空缓存跳转登录页面
        var url = getContextPath() + '/enguser/enguser/loginOut?optionsId=' + optionsId;
        $.post(
            url,
            function (data) {
                if (data.code==0){
                    //退出成功
                    window.sessionStorage.clear();//清空session
                    window.location.href="Login.html";
                }else {
                    alert(data.msg);
                    window.location.reload();
                }
            }
        )

    });
}

// 已购买课程
function alreadyPurchase() {
    var url = getContextPath() + '/usercourse/usercourse/getCourseOpenOrClose?enguserId=' + sessionId;
    $.post(
        url,
        function (res) {
            var openCourses = res.openCourseList;
            u.setStorage('openCourses',openCourses);
            for (var i = 0; i < openCourses.length; i++){
                $('#alreadyPurchase').append('<li onclick="alreadyBuyCourses(\''+ openCourses[i].id +'\')">' + openCourses[i].name + '<i></i></li>');
            }
        }
    )
}
function shuffle(a) {
    var len = a.length;
    for(var i=0;i<len;i++){
        var end = len - 1 ;
        var index = (Math.random()*(end + 1)) >> 0;
        var t = a[end];
        a[end] = a[index];
        a[index] = t;
    }
    return a;
}

/**
 *  获取用户该章节下所有的单词信息
 */
function getUserChapterWords() {
    var url = getContextPath() + '/userchapterword/getUserChapterWordList';
    var chapterId = GetQueryString("chapterId");
    var data = {};
    data.engUserId = sessionId;
    data.chapterId = chapterId;
    $.post(
        url,
        data,
        function (res) {
            u.setStorage('userChapterWords',res);
            console.log('userChapterWords',res);
        }
    )
}

function updateWord(userChapterWord) {
    var url = getContextPath() + '/userchapterword/updateWord';
    var data = {};
    data.id = userChapterWord.id;
    data.chapterId = userChapterWord.chapterId;
    data.courseId = userChapterWord.courseId;
    data.wordId = userChapterWord.wordId;
    data.engUserId = userChapterWord.engUserId;
    data.studyStatus = userChapterWord.studyStatus;
    data.wrongTime = userChapterWord.wrongTime;
    data.strangeWord = userChapterWord.strangeWord;
    data.skilledWord = userChapterWord.skilledWord;
    data.isMemo = userChapterWord.isMemo;
    console.log('update:',userChapterWord);
    $.post(url, data, function (res) {
            getUserChapterWords();
            console.log('updateUserChapterWord:','success');
        }
    )
}

// 查找下一个章节
function getNextChapter(courseId,chapterId){
    var url = getContextPath() + '/userChapter/userChapter/getNextChapter';
    var data = {};
    data.courseId = courseId;
    data.chapterId = chapterId;
    $.post(
        url,
        data,
        function (res) {
            if (res != null && res.length > 0) {
                updateStatus(res.chapterId,'1');
            }
        }
    )
}
/**
 * 修改用户章节学习状态
 */
function updateStatus(chapterId,studyStatus) {
    var data = {};
    data.chapterId = chapterId;
    data.userId = sessionId;
    data.studyStatus = studyStatus;
    data.isOpen = '1';
    console.log('updateStatusDate',data);
    var url = getContextPath() + '/userChapter/userChapter/updateUserChapter';
    $.post(
        url,
        data,
        function (res) {
            console.log('updateStatus','修改用户章节学习状态成功')
        }
    );
}

/**
 * 获取课程下的所有章节
 */
function addLoop() {
    $('#Loop').html('');
    // $('#shaoguan').load(location.href + ' #shaoguan');
    $('.container').html('');
    var courseId = GetQueryString('courseId');
    var url =  getContextPath() + '/userChapter/userChapter/getUserChapterList';
    var data = {};
    data.courseId = courseId;
    data.userId = sessionId;
    $.post(url, data, function(res){
            var j = 1, k = 0;
            u.setStorage('userChapters',res);
            console.log('res:',res);
            for (var m = 0; m < res.length; m++){
                if ( m % 2 != 1){ // 如果 i 是偶数  i = 0 i = 2
                    $('#Loop').append('<div id="xl'+ j +'" class="xl_btns"></div>');
                    $('.container').append('<div id="xxl'+ j +'" class="xl_btns"></div>');
                    j++;
                }
            }
            for (var i = 0; i < res.length; i++){
                if (i % 2 != 1){
                    k++;
                }
                var chapter = res[i].chapter;
                console.log('chapter:',chapter);
                var userChapter = res[i].userChapter;
                // 如果是开通状态
                if (userChapter.isOpen == 1){
                    if (userChapter.studyStatus == 1){  // 未开始
                        $('#xl' + k).append(
                            '<a class="xl_btn state3 outline-outward" href="javascript:void (0);" onclick="detail3(\''+chapter.id +'\')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">可开始</span>\n' +
                            '</a>\n');
                        $('#xxl' + k).append(
                            '<a class="xl_btn state3 outline-outward" href="javascript:void (0);" onclick="detail(\''+chapter.id +'\')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">准备闯关</span>\n' +
                            '</a>\n');
                    }else if (userChapter.studyStatus == 2 ) { // 学习中
                        $('#xl' + k).append('<a class="xl_btn state2 outline-outward" href="javascript:void (0);" onclick="detail3(\''+chapter.id +'\')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">学习中</span>\n' +
                            '</a>');
                        $('#xxl' + k).append(
                            '<a class="xl_btn state2 outline-outward" href="javascript:void (0);" onclick="detail(\''+chapter.id +'\')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">继续闯关</span>\n' +
                            '</a>\n');
                    }else if(userChapter.studyStatus == 3) {  // 已完成
                        $('#xl' + k).append('<a class="xl_btn state1 outline-outward" href="javascript:void (0);" onclick="detail3(\''+chapter.id +'\')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">已完成</span>\n' +
                            '</a>');
                        $('#xxl' + k).append(
                            '<a class="xl_btn state1 outline-outward" href="javascript:void (0);" onclick="detail(\''+chapter.id +'\')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">闯关成功</span>\n' +
                            '</a>\n');
                    }
                }else {
                    $('#xl' + k).append('<a class="xl_btn state3 outline-outward" href="javascript:void (0);">\n' +
                        '<span class="dy">'+ chapter.name + '</span>\n' +
                        '<span class="remark">未开放</span>\n' +
                        '</a>');
                    $('#xxl' + k).append(
                        '<a class="xl_btn state3 outline-outward" href="javascript:void (0);">\n' +
                        '<span class="dy">'+ chapter.name + '</span>\n' +
                        '<span class="remark">等待闯关</span>\n' +
                        '</a>\n');
                    console.log('id:' ,'#xl'+k );
                    console.log(i);
                }
            }
            if ($('#xl' + k + ' a').length == 1){
                $('#xl' + k).append(
                    '<c class="last-append" href="javascript:void (0);">\n' +
                    '</c>\n');
            }
            if ($('#xxl' + k + ' a').length == 1){
                $('#xxl' + k).append(
                    '<c class="last-append" href="javascript:void (0);">\n' +
                    '</c>\n');
            }

        }
    )
}
// 播放
$('#music-B').on('click',function () {
    var music = $('#music');
    $('#music-B').hide();
    $('#music-R').show();
    music[0].pause();
});
// 暂停
$('#music-R').on('click',function () {
    var music = $('#music');
    music.volume = 0.2;
    $('#music-B').show();
    $('#music-R').hide();
    music[0].play();
});







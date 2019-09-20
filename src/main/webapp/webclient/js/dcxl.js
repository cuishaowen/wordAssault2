// 点击进入不同的词汇分组页面
function getWordPage(){
    $('#word-page').html('').append(
        '<div class="btn newbtn">\n' +
        '    <div class="btn1"><a style="background-color: #FB5D74;" target="_blank" href="njch.html?courseId='+ GetQueryString("courseId") +'"><img src="images/251.png" alt=""> 生词本</a></div>\n' +
        '<!--<div class="btn1"><a href="javascript:void(0)" onclick="detail()"><img src="images/251.png" alt=""> 每日记忆</a></div>-->\n' +
        '<div class="btn1"><a style="background-color: #C3BAAA;" target="_blank" href="mrjy.html?courseId='+ GetQueryString("courseId") +'" ><img src="images/251.png" alt=""> 每日记忆</a></div>\n' +
        '<div class="btn1"><a style="background-color: #BCB3B0;" target="_blank" href="beiwang.html?courseId='+ GetQueryString("courseId") +'" ><img src="images/251.png" alt=""> 备忘录</a></div>\n' +
        '\n' +
        '</div>\n' +
        '<div class="btn newbtn">\n' +
        '    <div class="btn1"><a style="background-color: #9BC8CC;" target="_blank" href="sjch.html?courseId='+ GetQueryString("courseId") +'"><img src="images/251.png" alt=""> 熟词集</a></div>\n' +
        '<div class="btn1"><a style="background-color: #787F84;" target="_blank" href="wxch.html?courseId='+ GetQueryString("courseId") +'"><img src="images/251.png" alt=""> 未学词汇</a></div>\n' +
        '<div class="btn1"><a style="background-color: #AAC3AC;" target="_blank" href="jyhg.html?courseId='+ GetQueryString("courseId") +'"><img src="images/251.png" alt=""> 已学词汇</a></div>\n' +
        '<span style="float:right;display: block;width:auto;height:43px;line-height: 43px;"></span>\n' +
        '    </div>'
    );
}

/**
 * 本书已学单词
 */
function completeWord() {
    var url = getContextPath() + '/userchapterword/completeword';
    var data = {};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(url, data, function (res) {
            if (res == undefined || res == null || res == '') {
                res.length = 0;
            }
            $('#completeWord').text(res.length);
        }
    )
}

/**
 * 未学单词
 */
function waitLearn() {
    var url = getContextPath() + '/userchapterword/waitLearning';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(url, data, function (res) {
            if (res == undefined || res == null || res == '') {
                res.length = 0;
            }
            $('#waitLearn').text(res.length);
        }
    )
}

/**
 * 生词
 */
function getCourseHard() {
    var url = getContextPath() + '/userchapterword/getCourseHard';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(
        url,
        data,
        function (res) {
            if (res == undefined || res == null || res == '') {
                res.length = 0;
            }
            $('#hardWord').text(res.length);
        }
    )
}

/**
 *  消灭生词
 */
function getKillCourseHard() {
    var url = getContextPath() + '/userchapterword/getKillCourseHard';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(
        url,
        data,
        function (res) {
            if (res == undefined || res == null || res == '') {
                res.length = 0;
            }
            $('#killHardWord').text(res.length);
        }
    )
}

/**
 * 备忘词汇
 */
function getStrengthenMemoryWord() {
    var url = getContextPath() + '/userchapterword/getStrengthenMemory';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(
        url,
        data,
        function (res) {
            if (res == undefined || res == null || res == '') {
                res.length = 0;
            }
            $('#getStrengthenMemory').text(res.length);
        }
    )
}

/**
 * 熟记
 */
function getSkilled() {
    var url = getContextPath() + '/userchapterword/getSkilled';
    var data ={};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(
        url,
        data,
        function (res) {
            if (res == undefined || res == null || res == '') {
                res.length = 0;
            }
            $('#skilledWord').text(res.length);
        }
    )
}

function loadPage() {
    getCourseHard();
    getKillCourseHard();
    getStrengthenMemoryWord();
    getSkilled();
    waitLearn();
    completeWord();
}

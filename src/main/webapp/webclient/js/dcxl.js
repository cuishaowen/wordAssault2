/**
 * 获取课程下的所有章节
 */
function addLoop() {
    var courseId = GetQueryString('courseId');
    var url =  getContextPath() + '/userChapter/userChapter/getUserChapterList';
    var data = {};
    data.courseId = courseId;
    data.userId = sessionId;
    $.post(
        url,
        data,
        function(res){
            var j = 1;
            var k = 0;
            console.log('res:',res);
            for (var m = 0; m < res.length; m++){
                if ( m % 2 != 1){ // 如果 i 是偶数  i = 0 i = 2
                    $('#Loop').append('<div id="xl'+ j +'" class="xl_btns"></div>');
                    $('#shaoguan').append('<div id="xxl'+ j +'" class="xl_btns"></div>')
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
                            '<a class="xl_btn state3 outline-outward" href="javascript:void (0);" onclick="detail3('+chapter.id +')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">可开始</span>\n' +
                            '</a>\n');
                        $('#xxl' + k).append(
                            '<a class="xl_btn state3 outline-outward" href="javascript:void (0);" onclick="detail('+chapter.id +')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">准备闯关</span>\n' +
                            '</a>\n');
                    }else if (userChapter.studyStatus == 2 ) { // 学习中
                        $('#xl' + k).append('<a class="xl_btn state2 outline-outward" href="javascript:void (0);" onclick="detail3('+chapter.id +')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">学习中</span>\n' +
                            '</a>');
                        $('#xxl' + k).append(
                            '<a class="xl_btn state2 outline-outward" href="javascript:void (0);" onclick="detail('+chapter.id +'">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">继续闯关</span>\n' +
                            '</a>\n');
                    }else if(userChapter.studyStatus == 3) {  // 已完成
                        $('#xl' + k).append('<a class="xl_btn state1 outline-outward" href="javascript:void (0);" onclick="detail3('+chapter.id +')">\n' +
                            '<span class="dy">'+ chapter.name + '</span>\n' +
                            '<span class="remark">已完成</span>\n' +
                            '</a>');
                        $('#xxl' + k).append(
                            '<a class="xl_btn state1 outline-outward" href="javascript:void (0);" onclick="detail('+chapter.id +')">\n' +
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

        }
    )
}

/**
 * 本书已学单词
 */
function completeWord() {
    var url = getContextPath() + '/userchapterword/completeword';
    var data = {};
    data.courseId = GetQueryString("courseId");
    data.userId = sessionId;
    $.post(
        url,
        data,
        function (res) {
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
    $.post(
        url,
        data,
        function (res) {
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

getCourseHard();
getKillCourseHard();
getStrengthenMemoryWord();
getSkilled();
waitLearn();
addLoop();
completeWord();
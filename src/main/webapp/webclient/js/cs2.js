var testSubject = [];
var errorSubject = [];
var highestScore = 0;
var subjectType = GetQueryString('subjectType');
var version = GetQueryString('version');

// 最高得分
function getHighestScore(){
    var url = getContextPath() + '/userSubjectVersion/getList?subjectType=' + subjectType + '&subjectVersionName=' + version;
    $.get(url, function (res) {
        if (res == null || res.length < 1){
            return  0;
        } else {
            var scores = [];
            for (i = 0; i < res.length; i++){
                scores.push(res[i].score);
            }
            var max = scores[0];
            for(var i = 1; i < scores.length; i++) {
                var cur = scores[i];
                cur > max ? max = cur : null
            }
            highestScore =  parseInt(max);
        }
    })
}
getHighestScore();
// 获取语法题
$(function(){
    var url = getContextPath() + '/subject/getList';
    var data = {};
    data.sort = subjectType;
    data.version = version;
    $.post(url, data, function(res) {u.setStorage('subject',res);})
});

// 获取版本信息
$(function () {
    var url = getContextPath() + '/subjectVersion/get?id=' + version;
    $('.dttop h3').text();
    $.get(url,function (res) {
        subjectName = res.name;
        $('.dttop h3').text(res.name);
    })
});

// 动态添加元素
function getSubject(){
    var subject = u.getStorage('subject');
    for (i = 0;i < subject.length; i ++){
        addContent(i,false);
    }
}

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
    form.render();
    var rightclicked = [];
    var errorclicked = [];
    // 选择
    form.on('radio',function (data) {
        var selectValue = data.elem.title;
        var valueInf = data.elem.value;
        var arr = valueInf.split('$$$');
        var id = arr[0];
        var answer = arr[1];
        var select = selectValue.charAt(0);
        if (answer == select){
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
        }else {
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
        console.log('答对的题目',rightclicked);
        console.log('答错的题目',errorclicked);
    });

    // 提示未写完，写完则弹出得分窗口
    $('.btn3').on('click',function(){
        if (errorclicked.length + rightclicked.length < testSubject.length) {
            layer.open({
                title: '提示',
                content: '还有未做完的题目' //这里content是一个普通的String
            });
        }else{
            var scoreSubject = 100/testSubject.length;
            var getScore = scoreSubject*rightclicked.length;
            var curScore = Math.round(getScore);
            saveScore(curScore);
            $('#subject-num').append(testSubject.length);
            $('#right-num').append(rightclicked.length);
            $('#pre-score').text(highestScore);
            if (curScore >= 60){
                $('#success').show();
                $('#failure').hide();
            } else{
                $('#success').hide();
                $('#failure').show();
            }
            $('.cur-score').text(curScore);
            ErrorSubject();
            saveErrorSubject();
            $('.zz').fadeIn(300);
        }
        function saveScore(score) {
            var url = getContextPath() + '/userSubjectVersion/save';
            var data = {};
            data.score = score;
            data.userId = sessionId;
            data.subjectType = subjectType;
            data.subjectVersionName = version;
            $.post(url, data, function (res) {
                layer.msg('本次分数录入成功');
            })
        }
    });

    // 关闭窗口
    $('.cha1').on('click',function(){
        $('.zz').fadeOut(300);
    });

    // 获取错题信息
    function ErrorSubject() {
        for (i = 0; i < testSubject.length; i++) {
            var object = testSubject[i];
            var id = object.id;
            for (j = 0; j < errorclicked.length; j++) {
                if (id == errorclicked[j]) {
                    errorSubject.push(object);
                }
            }
        }
    }
    // 获取错题
    function getErrorSubject() {
        console.log('errorSubject',errorSubject);
        $('#container').html('');
        for (n = 0; n < errorSubject.length; n++) {
            addContent(n, true);
        }
        $('.answer').show();
        $('.btn2').html('');
    }
    // 查看错题
    $('.lb').on('click',function(){
        getErrorSubject();
        form.render();
    });

    // 将错题持久化
    function saveErrorSubject(){
        for (i = 0; i < errorSubject.length; i++){
            var data = {};
            data.userId = sessionId;
            data.subjectVersionId = version;
            data.subjectId = errorSubject[i].id;
            data.isWrong = 'T';
            var url = getContextPath() + '/userSubject/save';
            $.post(url,data,function (res) {
                layer.msg('错题保存成功');
            })
        }
    }
});

function addContent(num,error){
    var object = {};
    if (error){
        object = errorSubject[num];
    } else {
        var subject = u.getStorage('subject');
        object = subject[num];
        testSubject.push(object);
    }
    var id = object.id;
    var question = object.question;
    var selectA = object.selectA;
    var selectB = object.selectB;
    var selectC = object.selectC;
    var selectD = object.selectD;
    var answer = object.answer;
    var analysis = object.analysis;
    if (selectD == null || selectD == ''){
        $('#container').append(
            '<div class="xt">\n' +
            '<div class="xt-title">\n' +
            '                <span>'+ (num+1) +')</span>\n' +
            '               <span>'+ question +'</span>\n' +
            '            </div>\n' +
            '            <div class="xt-content">\n' +
            '                <form class="layui-form layui-form-pane" action="">\n' +
            '                    <div class="layui-form-item">\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="'+ id + '$$$' + answer +'" title="'+ selectA +'">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="'+ id + '$$$' + answer +'" title="'+ selectB +'">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="'+ id + '$$$' + answer +'" title="'+ selectC +'">\n' +
            '                        </div>\n' +
            '                    </div>\n' +
            '                </form>\n' +
            '            </div>\n' +
            '       </div>\n' +
            '       <div class="da answer" style="color:#d81e06;font-size: 24px;display: none;height: 100px;width: 700px;margin: 10px auto;">\n' +
            '       <span>正确答案：<i>'+ answer +'</i></span>\n' +
            '       <span>解析：<i>'+ analysis +'</i></span>\n' +
            '       </div>'
        )
    } else {
        $('#container').append(
            '<div class="xt">\n' +
            '<div class="xt-title">\n' +
            '                <span>' + (num + 1) + ')</span>\n' +
            '               <span>' + question + '</span>\n' +
            '            </div>\n' +
            '            <div class="xt-content">\n' +
            '                <form class="layui-form layui-form-pane" action="">\n' +
            '                    <div class="layui-form-item">\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="' + selectA + '">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="' + selectB + '">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="' + selectC + '">\n' +
            '                        </div>\n' +
            '                        <div class="layui-input-block">\n' +
            '                            <input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="' + selectD + '">\n' +
            '                        </div>\n' +
            '                    </div>\n' +
            '                </form>\n' +
            '            </div>\n' +
            '       </div>\n' +
            '       <div class="da answer" style="color:#d81e06;font-size: 24px;display: none; height: 100px;width: 700px;margin: 10px auto;">\n' +
            '       <span>正确答案：<i>' + answer + '</i></span>\n' +
            '       <span>解析：<i>' + analysis + '</i></span>\n' +
            '       </div>'
        )
    }
}








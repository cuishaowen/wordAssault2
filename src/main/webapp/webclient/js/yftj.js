var version = '';

layui.use(['form', 'layedit', 'laydate', 'laypage', 'layer', 'element'],function () {
    var form = layui.form
        , layer = layui.layer
        , layedit = layui.layedit
        , laydate = layui.laydate
        , laypage = layui.laypage
        , element = layui.element;

    function getSelect(){
        var url = getContextPath() + '/subjectVersion/list';
        $.get(url,function (res) {
            for (i=0; i < res.length; i++){
                $('#version').append(
                    '<option value="' + res[i].id+ '">' + res[i].name+ '</option>'
                )
            }
            form.render('select');
        });
    }
    getSelect();

    form.on('select',function (data) {
        version = data.elem.value;
        getErrorList(version);
        var url = getContextPath() + '/subject/getSubjectSort?version=' + version;
        $('.btn11').attr('disabled',true).removeClass('hasbuy').removeClass('float-shadow').removeClass('btn11-active');
        subjectType = '';
        // hasbuy float-shadow
        $.get(url,function (res1) {
            var url1 = getContextPath() + '/subject/getSubjectType';
            var data = {};
            data.type = 'subject_type';
            $.post(url1,data,function (res2) {
                $('#subjectType').html('');
                //hasbuy float-shadow
                for (i=0; i < res2.length; i++){
                    for (j = 0; j < res1.length; j++){
                        if(res1[j] == res2[i].value){
                            $('#subjectType').append(
                                '<button type="button" class="btn11 hasbuy float-shadow" style="margin-bottom: 20px;" onclick="getBtnValue(' + res2[i].value + ')" value="' + res2[i].value + '">'+ res2[i].label +'</button>'
                            )
                        }
                    }
                }
            });
            form.render();
        })
    });

    form.on('submit(*)',function (data) {
        if (subjectType == '' || version == ''){
            layer.open({
                title: '提示'
                ,content: '请选择版本和语法'
            });
        }else{
            window.open('cs2.html?subjectType=' + subjectType + '&version=' + version);
        }
        return false;
    });

    form.on('radio',function (data) {
        $('input[type="radio"]').attr('disabled',true);
        var selectValue = data.elem.title;
        var valueInf = data.elem.value;
        var arr = valueInf.split('$$$');
        var id = arr[0];
        var answer = arr[1];
        var select = selectValue.charAt(0);
        if (select == answer){
            $('.tj_da').show();
            $('.tj_da .error').hide();
            $('.tj_da .right').show();
            $('.tj_da .analysis').show();
            $('#removeErrSubject').show();
        }else {
            $('.tj_da').show();
            $('.tj_da .error').show();
            $('.tj_da .right').hide();
            $('.tj_da .analysis').show();
            $('#removeErrSubject').hide();
            saveErrorSubject(id,version);
        }
    });

    var index = 0;
    $('#errorSubject').on('click',function () {
        getErrorList(version);
    });

    // 下一题
    $('#nextSubject').on('click',function () {
        var errorSubject = u.getStorage('errorSubject');
        index++;
        if (index >= (errorSubject.length)){
            index = 0;
        }
        NextErrorList(index);
        form.render();
    });

    function getErrorList(subjectVersionId) {
        var url = getContextPath() + '/userSubject/errorList?subjectVersionId=' + subjectVersionId;
        $.get(url,function (res) {
            u.setStorage('errorSubject',res);
            if (res != null && res.length > 0){
                showAll();
                $('#nextSubject').show().css('margin-right',0);
                NextErrorList(0);
                form.render();
            }else{
                hideAll();
            }
        })
    }

    function NextErrorList(index){
        $('input[type="radio"]').attr('disabled',false);
        $('#removeErrSubject').hide();
        var errorSubject = u.getStorage('errorSubject');
        var num = index + 1;
        var object = errorSubject[index].subject;
        var id = object.id;
        var question = object.question;
        var selectA = object.selectA;
        var selectB = object.selectB;
        var selectC = object.selectC;
        var selectD = object.selectD;
        var answer = object.answer;
        var analysis = object.analysis;
        $('.yufa').text(num + ')  ' + question);
        $('.beizhu').text('【' + object.subjectTypeLabel + '】');
        $('.xt-content').html('').append(
            '<form class="layui-form layui-form-pane" action="">\n' +
            '<div class="layui-form-item subject">\n' +
            '<div class="layui-input-block">\n' +
            '<input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="'+ selectA +'">\n' +
            '</div>\n' +
            '<div class="layui-input-block">\n' +
            '<input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="'+ selectB +'">\n' +
            '</div>\n' +
            ' <div class="layui-input-block">\n' +
            '<input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="'+ selectC +'">\n' +
            '</div>\n' +
            '</div>\n' +
            '<div class="tj_da">\n' +
            '<p class="error">答案错误</p>\n' +
            '<p class="right">答案正确</p>\n' +
            '<p class="analysis">【解析】解析内容解析内容解析内容</p>\n' +
            '</div>\n' +
            '</form>'
        );
        if (selectD != null && selectD != ''){
            $('.subject').append(
                '<div class="layui-input-block">\n' +
                '<input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="'+ selectD +'">\n' +
                '</div>'
            )
        }
        $('.tj_da').hide();
        $('#indexS').text(index + 1);
        $('#totalS').text(errorSubject.length);
        $('.analysis').text(analysis);
        form.render();
    }

    $('#removeErrSubject').on('click',function () {
        var errorSubject = u.getStorage('errorSubject');
        var userSubject = errorSubject[index].userSubject;
        var date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        userSubject.updateDate = year + '-' + month + '-' + day;
        userSubject.delFlag = '1';
        var url = getContextPath() + '/userSubject/save';
        $.post(url,userSubject,function(){
            // layer.msg('错题移除成功',{icon: 6});
            var url = getContextPath() + '/userSubject/errorList?subjectVersionId=' + errorSubject[0].userSubject.subjectVersionId;
            $.get(url,function (res) {
                u.setStorage('errorSubject',res);
                NextErrorList(index);
                $('#totalS').html(res.length);
            })
        });
    });

    function hideAll(){
        $('.timu').hide();
        $('.xt-content').html('<div style="font-size: 30px;text-align: center">没有错题~</div>');
        $('.newbtns').hide();
        $('.jdt').hide();
    }

    function showAll() {
        $('.timu').show();
        $('.newbtns').show();
        $('.jdt').show();
    }

    // 将错题持久化
    function saveErrorSubject(id,version){
        var errorclicked = [];
        errorclicked.push(id);
        var url = getContextPath() + '/userSubject/saveData';
        var data={'errorClickedJson': JSON.stringify(errorclicked),'version': version};
        console.log('errorSubjectJson',data);
        $.post(url,data,function (res) {console.log('错题保存成功')})
    }

});








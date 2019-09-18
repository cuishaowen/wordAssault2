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
        }else {
            $('.tj_da').show();
            $('.tj_da .error').show();
            $('.tj_da .right').hide();
            $('.tj_da .analysis').hide();
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
            NextErrorList(0);
            form.render();
        })
    }

    function NextErrorList(index){
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
            '                                       <div class="layui-form-item subject">\n' +
            '                                           <div class="layui-input-block">\n' +
            '                                               <input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="'+ selectA +'">\n' +
            '                                           </div>\n' +
            '                                           <div class="layui-input-block">\n' +
            '                                               <input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="'+ selectB +'">\n' +
            '                                           </div>\n' +
            '                                           <div class="layui-input-block">\n' +
            '                                               <input type="radio" name="xt" value="' + id + '$$$' + answer + '" title="'+ selectC +'">\n' +
            '                                           </div>\n' +
            '                                       </div>\n' +
            '                                   </form>'
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
    }

    $('#removeErrSubject').on('click',function () {
        var errorSubject = u.getStorage('errorSubject');
        var userSubject = errorSubject[index].userSubject;
        var url = getContextPath() + '/userSubject/delete';
        $.post(url,userSubject,function(){
            layer.msg('错题移除成功');
            NextErrorList(index);
            if (index == (errorSubject.length-1)){
                var url = getContextPath() + '/userSubject/errorList?subjectVersionId=' + subjectVersionId;
                $.get(url,function (res) {
                    u.setStorage('errorSubject', res);
                })
            }
        });
    });
    form.render();
});








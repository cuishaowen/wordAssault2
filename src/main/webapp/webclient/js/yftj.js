$(function () {
    console.log('加载数据。。。。');
    var url = getContextPath() + '/subjectVersion/list';
    $.get(url,function (res) {
        console.log('res',res);
        for (i=0; i < res.length; i++){
            $('#version').append(
                '<option value="' + res[i].id+ '">' + res[i].name+ '</option>'
            )
        }
    });
    var url1 = getContextPath() + '/subject/getSubjectType';
    var data = {};
    data.type = 'subject_type';
    $.post(url1,data,function (res) {
        for (i=0; i < res.length; i++){
            $('#subjectType').append(
                '<button type="button" class="btn11 hasbuy float-shadow" style="margin-bottom: 20px;" value="' + res[i].value + '">'+ res[i].label +'</button>'
            )
        }
    })
});

layui.use(['form', 'layedit', 'laydate', 'laypage', 'layer'],function () {
    var subjectType = '';
    var form = layui.form
        , layer = layui.layer
        , layedit = layui.layedit
        , laydate = layui.laydate
        , laypage = layui.laypage;

    form.render();

    $('.btn11').on('click',function () {
       subjectType = $(this).val();
    });

    form.on('submit(*)',function (data) {
        var version = data.field.version;
        if (subjectType == '' || version == ''){
            layer.open({
                title: '提示'
                ,content: '请选择版本和语法'
            });
        }else{
            window.open('cs2.html?subjectType=' + subjectType + '&version=' + version);
        }
        return false;
    })


});


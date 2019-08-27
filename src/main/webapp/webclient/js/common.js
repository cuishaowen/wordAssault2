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

var loginName = "";
var sessionId= "";
var userName = "";
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
    }
});

// 用户信息
$('#userName').text(userName);

// 已购买课程
function alreadyPurchase() {
    var url = getContextPath() + '/usercourse/usercourse/getCourseOpenOrClose?enguserId=' + sessionId;
    $.post(
        url,
        function (res) {
            var openCourses = res.openCourseList;
            for (var i = 0; i < openCourses.length; i++){
                $('#alreadyPurchase').append('<li onclick="alreadyBuyCourses('+ openCourses[i].id +')">' + openCourses[i].name + '<i></i></li>');
            }
        }
    )
};

function alreadyBuyCourses(courseId){
    window.location.href = getContextPath() + '/webclient/dcxl.html?courseId=' + courseId;
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
};

//定义全局变量函数
var uzStorage = function () {
    var ls = window.localStorage;
    return ls;
};
//定义全局变量u
var u = {};
//设置缓存
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
//获取缓存
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

alreadyPurchase();



//nav slideDown
jQuery("#nav").slide({
	type:"menu",// 效果类型，针对菜单/导航而引入的参数（默认slide）
	titCell:".nLi", //鼠标触发对象
	targetCell:".sub", //titCell里面包含的要显示/消失的对象
	effect:"slideDown", //targetCell下拉效果
	delayTime:300 , //效果时间
	triggerTime:0, //鼠标延迟触发时间（默认150）
	returnDefault:true //鼠标移走后返回默认状态，例如默认频道是“预告片”，鼠标移走后会返回“预告片”（默认false）
});

//用户相关下拉菜单
jQuery(".corner>ul").slide({
    type: "menu",// 效果类型，针对菜单/导航而引入的参数（默认slide）
    titCell: ".nLi", //鼠标触发对象
    targetCell: ".user_handle", //titCell里面包含的要显示/消失的对象
    effect: "slideDown", //targetCell下拉效果
    delayTime: 300, //效果时间
    triggerTime: 0, //鼠标延迟触发时间（默认150）
    returnDefault: true //鼠标移走后返回默认状态，例如默认频道是“预告片”，鼠标移走后会返回“预告片”（默认false）
});

//获取项目根路径
function getContextPath() {
    // var pathName = document.location.pathname;
    // var index = pathName.substr(1).indexOf("/");
    // var result = pathName.substr(0, index + 1);
    // return "http://192.168.1.24:8082/article";
    // return "http://localhost:8081/wordassault";
    return "http://localhost:8080/wordassault";
}

//获取路径中的参数
function GetArgsFromHref(sArgName) {
    var url = window.location.href;
    var args = url.split("?");
    var retval = "";
    if (args[0] == url) /*参数为空*/
    {
        return retval;
        /*无需做任何处理*/
    }
    var str = args[1];
    args = str.split("&");
    for (var i = 0; i < args.length; i++) {
        str = args[i];
        var arg = str.split("=");
        if (arg.length <= 1) continue;
        if (arg[0] == sArgName) retval = arg[1];
    }
    return retval;
}

// ****************字典开始***************
var userStatus={'0':'审核中','2':'审核不通过','3':'黑名单中'};
var degree = {'0':'博士','1':'硕士','2':'研究生','3':'本科','4':'大专','5':'高中','6':'中专','7':'其他'};
var gjtype = {'1':'约稿申请','2':'公文约稿','3':'商务约稿','4':'约稿申请期刊'};
var ctype = {'1':'个人','2':'个体户','3':'企业'};

//*****************字典结束****************

//获取字典内容
function getDictValue(obj,_key) {
    for(var key in obj){
        if(key == _key){
            return obj[key];
            break;
        }
    }
}

//进入个人中心
function updateInfo(url) {
    window.location.href = url;
}

//登出系统
function loginOut() {
    layer.confirm("确定要退出系统吗？",function () {
        window.sessionStorage.clear();
        window.location.href = 'login.html';
    });
}

//隐藏手机号中间几位
function getHideNum(num){
    if(num!=null && num!=''){
        num = num.substring(0,3)+"****"+num.substring(7,num.length);
        return num;
    }
    return '';
}

//和当前时间比较 大于当前时间则返回true
function getMoreThanNow(date){
    var d1 = new Date(date);
    var t1 = d1.getTime();
    var t2 = (new Date()).getTime();
    return t1>t2;
}

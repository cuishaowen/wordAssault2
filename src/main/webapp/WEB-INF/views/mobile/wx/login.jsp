
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>登陆</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/wx/css/style.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-2.1.4.js"></script>
</head>
<style>
    .login{background: url(${pageContext.request.contextPath}/static/wx/image/loginbg.jpg) no-repeat center; background-size: 100% 100%;}
</style>
<body class="login">
<div class="loginbox">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/static/wx/image/logo2.png">
    </div>
    <div class="loginContent">
        <div class="title">家长监督系统</div>
        <div class="login_input">
            <div class="item">
                <img src="${pageContext.request.contextPath}/static/wx/image/ico1.png">
                <input type="text" id="userName">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/static/wx/image/ico2.png">
                <input type="password" id="passWord">
            </div>
            <div class="item">
                <a class="login_btn" href="#" onclick="toIndex()">登陆</a>
            </div>
        </div>
    </div>
</div>
</body>
<script>

    function toIndex() {
        var userName=document.getElementById('userName').value;
        var passWord=document.getElementById('passWord').value;
        if (userName==null||passWord==null||userName==""||passWord==""){
            alert("请填写账户密码");
        }else {
            $.ajax({
                type:'get',
                url:"${pageContext.request.contextPath}/wx/Common/toCheckUser/"+userName+"/"+passWord,
                cache:false,
                async:false,
                success:function (data) {
                   if (data.code==1){
                       //操作成功
                       window.location.href="${pageContext.request.contextPath}/wx/Common/toIndex/"+data.data.id;
                   }else {
                       alert(data.msg);
                   }
                },
                error:function () {
                    alert("系统出错……");
                }
            });
        }
    }
</script>
</html>

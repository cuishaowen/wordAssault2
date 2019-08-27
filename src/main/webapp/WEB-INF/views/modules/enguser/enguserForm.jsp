<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>enguser管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/enguser/enguser/">用户列表</a></li>
		<li class="active"><a href="${ctx}/enguser/enguser/form?id=${enguser.id}">用户<shiro:hasPermission name="enguser:enguser:edit">${not empty enguser.id?'修改':'批量添加'}</shiro:hasPermission><shiro:lacksPermission name="enguser:enguser:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="engusers" action="${ctx}/enguser/enguser/insertMore" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
			<div class="control-group">
				<label class="control-label">选择校长：</label>
				<div class="controls">
					<form:select path="id" class="input-xlarge">
						<form:option value="" label=""/>
						<form:options items="${fns:getAllUser()}" itemLabel="loginName" itemValue="id"/>
					</form:select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">用户名：</label>
				<div class="controls">
					<form:input path="login" htmlEscape="false" maxlength="20" class="input-medium"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">密码:</label>
				<div class="controls">
					<form:label path="password">1111</form:label>
				</div>
			</div>
		<div class="control-group">
			<label class="control-label">新增个数:</label>
			<div class="controls">
				<form:input path="insertNum" htmlEscape="false" maxlength="20" class="input-medium"/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="enguser:enguser:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>保存用户题目版本成功管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/usersubjectversion/userSubjectVersion/">保存用户题目版本成功列表</a></li>
		<shiro:hasPermission name="usersubjectversion:userSubjectVersion:edit"><li><a href="${ctx}/usersubjectversion/userSubjectVersion/form">保存用户题目版本成功添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="userSubjectVersion" action="${ctx}/usersubjectversion/userSubjectVersion/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>id_：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>用户id：</label>
				<form:input path="userId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>题目版本名称：</label>
				<form:input path="subjectVersionName" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>题目类型：</label>
				<form:input path="subjectType" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li><label>得分：</label>
				<form:input path="score" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<shiro:hasPermission name="usersubjectversion:userSubjectVersion:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="userSubjectVersion">
			<tr>
				<shiro:hasPermission name="usersubjectversion:userSubjectVersion:edit"><td>
    				<a href="${ctx}/usersubjectversion/userSubjectVersion/form?id=${userSubjectVersion.id}">修改</a>
					<a href="${ctx}/usersubjectversion/userSubjectVersion/delete?id=${userSubjectVersion.id}" onclick="return confirmx('确认要删除该保存用户题目版本成功吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
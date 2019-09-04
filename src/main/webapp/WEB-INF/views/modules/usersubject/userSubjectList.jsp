<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>保存用户语法题成功管理</title>
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
		<li class="active"><a href="${ctx}/usersubject/userSubject/">保存用户语法题成功列表</a></li>
		<shiro:hasPermission name="usersubject:userSubject:edit"><li><a href="${ctx}/usersubject/userSubject/form">保存用户语法题成功添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="userSubject" action="${ctx}/usersubject/userSubject/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>用户练习题id：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>用户id：</label>
				<form:input path="userId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>题目版本id：</label>
				<form:input path="subjectVersionId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>练习题id：</label>
				<form:input path="subjectId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>用户章节题目的学习状态 1.待学习 2.待复习 3.已完成：</label>
				<form:input path="studyStatus" htmlEscape="false" maxlength="2" class="input-medium"/>
			</li>
			<li><label>是否错题 true 是  flase 不是：</label>
				<form:input path="isWrong" htmlEscape="false" maxlength="1" class="input-medium"/>
			</li>
			<li><label>错误次数：</label>
				<form:input path="wrongTime" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<shiro:hasPermission name="usersubject:userSubject:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="userSubject">
			<tr>
				<shiro:hasPermission name="usersubject:userSubject:edit"><td>
    				<a href="${ctx}/usersubject/userSubject/form?id=${userSubject.id}">修改</a>
					<a href="${ctx}/usersubject/userSubject/delete?id=${userSubject.id}" onclick="return confirmx('确认要删除该保存用户语法题成功吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
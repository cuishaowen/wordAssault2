<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>usercourse管理</title>
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
		<li class="active"><a href="${ctx}/usercourse/userCourse/">usercourse列表</a></li>
		<shiro:hasPermission name="usercourse:userCourse:edit"><li><a href="${ctx}/usercourse/userCourse/form">usercourse添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="userCourse" action="${ctx}/usercourse/userCourse/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>用户id：</label>
				<sys:treeselect id="engUserId" name="engUserId" value="${userCourse.engUserId}" labelName="" labelValue="${userCourse.}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>课程id：</label>
				<form:input path="courseId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>是否开通 1 开通 2 未开通：</label>
				<form:input path="isOpen" htmlEscape="false" maxlength="2" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<shiro:hasPermission name="usercourse:userCourse:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="userCourse">
			<tr>
				<shiro:hasPermission name="usercourse:userCourse:edit"><td>
    				<a href="${ctx}/usercourse/userCourse/form?id=${userCourse.id}">修改</a>
					<a href="${ctx}/usercourse/userCourse/delete?id=${userCourse.id}" onclick="return confirmx('确认要删除该usercourse吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
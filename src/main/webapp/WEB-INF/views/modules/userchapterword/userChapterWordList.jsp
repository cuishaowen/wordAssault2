<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>userchapterword管理</title>
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
		<li class="active"><a href="${ctx}/userchapterword/userChapterWord/">userchapterword列表</a></li>
		<shiro:hasPermission name="userchapterword:userChapterWord:edit"><li><a href="${ctx}/userchapterword/userChapterWord/form">userchapterword添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="userChapterWord" action="${ctx}/userchapterword/userChapterWord/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>id_：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>用户id：</label>
				<sys:treeselect id="engUserId" name="engUserId" value="${userChapterWord.engUserId}" labelName="" labelValue="${userChapterWord.}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>章节单词id：</label>
				<form:input path="chapterWordId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<shiro:hasPermission name="userchapterword:userChapterWord:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="userChapterWord">
			<tr>
				<shiro:hasPermission name="userchapterword:userChapterWord:edit"><td>
    				<a href="${ctx}/userchapterword/userChapterWord/form?id=${userChapterWord.id}">修改</a>
					<a href="${ctx}/userchapterword/userChapterWord/delete?id=${userChapterWord.id}" onclick="return confirmx('确认要删除该userchapterword吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
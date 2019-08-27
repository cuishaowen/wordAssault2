<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>章节管理</title>
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
		<li class="active"><a href="${ctx}/chapter/chapter/">章节列表</a></li>
		<li><a href="${ctx}/chapter/chapter/form">章节添加</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="chapter" action="${ctx}/chapter/chapter/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>课程名称: </label>
				<form:select path="parentId" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getCourse()}" itemLabel="name" itemValue="id" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>章节名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li><label>章节状态：</label>
				<form:select path="status" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('chapter_status')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>章节名称</th>
				<th>简述</th>
				<th>章节状态</th>
				<th>创建时间</th>
				<shiro:hasPermission name="chapter:chapter:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="chapter">
			<tr>
				<td><a href="${ctx}/chapter/chapter/form?id=${chapter.id}">
					${chapter.name}
				</a></td>
				<td>
					${chapter.detail}
				</td>
				<td>
					${fns:getDictLabel(chapter.status, '', '')}
				</td>
				<td>
					<fmt:formatDate value="${chapter.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="chapter:chapter:edit"><td>
    				<a href="${ctx}/chapter/chapter/form?id=${chapter.id}">修改</a>
					<a href="${ctx}/chapter/chapter/delete?id=${chapter.id}" onclick="return confirmx('确认要删除该章节吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
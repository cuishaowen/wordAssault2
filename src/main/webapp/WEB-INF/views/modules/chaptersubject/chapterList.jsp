<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>chapterSubject管理</title>
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
		<li class="active"><a href="${ctx}/chaptersubject/chapter/">chapterSubject列表</a></li>
		<shiro:hasPermission name="chaptersubject:chapter:edit"><li><a href="${ctx}/chaptersubject/chapter/form">chapterSubject添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="chapter" action="${ctx}/chaptersubject/chapter/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
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
				<shiro:hasPermission name="chaptersubject:chapter:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="chapter">
			<tr>
				<td><a href="${ctx}/chaptersubject/chapter/form?id=${chapter.id}">
					${chapter.name}
				</a></td>
				<td>
					${chapter.detail}
				</td>
				<td>
					${fns:getDictLabel(chapter.status, 'chapter_status', '')}
				</td>
				<td>
					<fmt:formatDate value="${chapter.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="chaptersubject:chapter:edit"><td>
    				<a href="${ctx}/chaptersubject/chapter/form?id=${chapter.id}">修改</a>
					<a href="${ctx}/chaptersubject/chapter/delete?id=${chapter.id}" onclick="return confirmx('确认要删除该chapterSubject吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
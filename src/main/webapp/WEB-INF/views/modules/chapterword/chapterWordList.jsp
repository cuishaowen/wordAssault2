<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>章节单词管理</title>
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
		<li class="active"><a href="${ctx}/chapterword/chapterWord/">章节单词列表</a></li>
		<shiro:hasPermission name="chapterword:chapterWord:edit"><li><a href="${ctx}/chapterword/chapterWord/form">章节单词添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="chapterWord" action="${ctx}/chapterword/chapterWord/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>id_：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>课程名</th>
				<th>章节名</th>
				<th>单词</th>
				<th>释义</th>
				<shiro:hasPermission name="chapterword:chapterWord:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="courseChapterWord">
			<tr>
				<td rowspan="${courseChapterWord.words.size() + 1}"> ${courseChapterWord.course.name}</td>
				<td rowspan="${courseChapterWord.words.size() + 1}">${courseChapterWord.chapter.name}</td>
				<c:forEach items="${courseChapterWord.words}" var="word">
					<tr>
						<td>${word.english}</td>
						<td>${word.chinese}</td>
						<shiro:hasPermission name="chapterword:chapterWord:edit"><td>
						<a href="${ctx}/chapterword/chapterWord/form?id=${courseChapterWord.chapterWord.id}">修改</a>
						<a href="${ctx}/chapterword/chapterWord/updateByWordId?id=${courseChapterWord.chapterWord.id}&wordId=${word.id}" onclick="return confirmx('确认要删除该章节单词吗？', this.href)">删除</a>
						</td></shiro:hasPermission>
					</tr>
				</c:forEach>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
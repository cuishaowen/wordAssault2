<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>everymemoryword管理</title>
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
		<li class="active"><a href="${ctx}/everymemoryword/everydayMemoryWord/">everymemoryword列表</a></li>
		<shiro:hasPermission name="everymemoryword:everydayMemoryWord:edit"><li><a href="${ctx}/everymemoryword/everydayMemoryWord/form">everymemoryword添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="everydayMemoryWord" action="${ctx}/everymemoryword/everydayMemoryWord/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>每日记忆单词：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>每日日期：</label>
				<input name="everyday" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${everydayMemoryWord.everyday}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>用户id：</label>
				<sys:treeselect id="enguserId" name="enguserId" value="${everydayMemoryWord.enguserId}" labelName="" labelValue="${everydayMemoryWord.}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>课程id：</label>
				<form:input path="courseId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>章节id：</label>
				<form:input path="chapterId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>单词id：</label>
				<form:input path="wordId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<shiro:hasPermission name="everymemoryword:everydayMemoryWord:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="everydayMemoryWord">
			<tr>
				<shiro:hasPermission name="everymemoryword:everydayMemoryWord:edit"><td>
    				<a href="${ctx}/everymemoryword/everydayMemoryWord/form?id=${everydayMemoryWord.id}">修改</a>
					<a href="${ctx}/everymemoryword/everydayMemoryWord/delete?id=${everydayMemoryWord.id}" onclick="return confirmx('确认要删除该everymemoryword吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
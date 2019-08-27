<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>enguseroption管理</title>
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
		<li class="active"><a href="${ctx}/enguseroption/enguserOption/">enguseroption列表</a></li>
		<shiro:hasPermission name="enguseroption:enguserOption:edit"><li><a href="${ctx}/enguseroption/enguserOption/form">enguseroption添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="enguserOption" action="${ctx}/enguseroption/enguserOption/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>用户操作表id：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>用户id：</label>
				<sys:treeselect id="engUserId" name="engUserId" value="${enguserOption.engUserId}" labelName="" labelValue="${enguserOption.}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>登入时间：</label>
				<input name="loginInTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${enguserOption.loginInTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>登出时间：</label>
				<input name="loginOutTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${enguserOption.loginOutTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>当前时间：</label>
				<input name="currentTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${enguserOption.currentTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>T 是 F 不是：</label>
				<form:input path="autoLoginOut" htmlEscape="false" maxlength="1" class="input-medium"/>
			</li>
			<li><label>本次学习时间：</label>
				<form:input path="currentStudyTime" htmlEscape="false" maxlength="5" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<shiro:hasPermission name="enguseroption:enguserOption:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="enguserOption">
			<tr>
				<shiro:hasPermission name="enguseroption:enguserOption:edit"><td>
    				<a href="${ctx}/enguseroption/enguserOption/form?id=${enguserOption.id}">修改</a>
					<a href="${ctx}/enguseroption/enguserOption/delete?id=${enguserOption.id}" onclick="return confirmx('确认要删除该enguseroption吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
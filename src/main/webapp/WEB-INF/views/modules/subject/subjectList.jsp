<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>subject管理</title>
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
		// Excel 导入
		$(document).ready(function() {
			$("#btnImport").click(function(){
				$.jBox($("#importBox").html(), {title:"导入数据", buttons:{"关闭":true},
					bottomText:"导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"});
			});
		});
	</script>
</head>
<body>
<div id="importBox" class="hide">
	<form id="importForm" action="${ctx}/subject/subject/import"
		  method="post" enctype="multipart/form-data" class="form-search"
		  style="padding-left: 20px; text-align: center;"
		  onsubmit="loading('正在导入，请稍等...');">
		<br />
		<input id="uploadFile" name="file" type="file"
			   style="width: 330px" />
		<br /> <br />
		<input id="btnImportSubmit"
			   class="btn btn-primary" type="submit" value="   导    入   " /> <a
			href="${ctx}/subject/subject/import/template">下载模板</a>
	</form>
</div>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/subject/subject/">语法题列表</a></li>
		<shiro:hasPermission name="subject:subject:edit"><li><a href="${ctx}/subject/subject/form">语法题添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="subject" action="${ctx}/subject/subject/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>单元：</label>
				<form:input path="version" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li>
				<label>分类：</label>
				<form:select path="sort" class="input-xlarge">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('subject_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="btns"><input id="btnImport" class="btn btn-primary" type="button" value="导入" /></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>版本</th>
				<th>分类</th>
				<th>题目</th>
				<th>A</th>
				<th>B</th>
				<th>C</th>
				<th>D</th>
				<th>答案</th>
				<th>解析</th>
				<shiro:hasPermission name="subject:subject:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="subject">
			<tr>
				<td>${subject.version}</td>
				<td>${fns:getDictLabel(subject.sort, 'subject_type','')}</td>
				<td>${subject.question}</td>
				<td>${subject.selectA}</td>
				<td>${subject.selectB}</td>
				<td>${subject.selectC}</td>
				<td>${subject.selectD}</td>
				<td>${subject.answer}</td>
				<td>${subject.analysis}</td>
				<shiro:hasPermission name="subject:subject:edit"><td>
    				<a href="${ctx}/subject/subject/form?id=${subject.id}">修改</a>
					<a href="${ctx}/subject/subject/delete?id=${subject.id}" onclick="return confirmx('确认要删除该subject吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>单词管理</title>
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
        <form id="importForm" action="${ctx}/word/word/import"
              method="post" enctype="multipart/form-data" class="form-search"
              style="padding-left: 20px; text-align: center;"
              onsubmit="loading('正在导入，请稍等...');">
            <br />
            <input id="uploadFile" name="file" type="file"
                   style="width: 330px" />
            <br /> <br />
            <input id="btnImportSubmit"
                   class="btn btn-primary" type="submit" value="   导    入   " /> <a
                href="${ctx}/word/word/import/template">下载模板</a>
        </form>
    </div>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/word/word/">单词列表</a></li>
		<shiro:hasPermission name="word:word:edit"><li><a href="${ctx}/word/word/form">单词添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="word" action="${ctx}/word/word/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>英语单词：</label>
				<form:input path="english" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>中文释义：</label>
				<form:input path="chinese" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
            <li class="btns"><input id="btnImport" class="btn btn-primary" type="button" value="导入" /></li>
			<li class="btns"><input id="imgImport" class="btn btn-primary" type="button" value="图片" /></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>英语单词</th>
				<th>音标</th>
				<th>英式语音</th>
				<th>美式语音</th>
				<th>图片</th>
				<th>例句</th>
				<th>中文释义</th>
				<shiro:hasPermission name="word:word:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
            <c:forEach items="${page.list}" var="word">
			<tr>
				<td>${word.english}</td>
				<td>${word.phoneticTranscription}</td>
				<td>
					<audio controls>
						<source src="${word.engVoice}" type="audio/mpeg">
					</audio>
				</td>
				<td>
					<audio controls>
						<source src="${word.ameVoice}" type="audio/mpeg">
					</audio>
				</td>

				<td style="width: 100px">
					<img src="${word.img}" style="width:100px;height:75px" alt="">
				</td>
				<td>
                    <c:forEach items="${fns:getExamples(word.id)}" var="wordExample">
                        ${wordExample.example}
                        <br>
                    </c:forEach>
				</td>
				<td>${word.chinese}</td>
				<shiro:hasPermission name="word:word:edit"><td>
    				<a href="${ctx}/word/word/form?id=${word.id}">修改</a>
					<a href="${ctx}/word/word/delete?id=${word.id}" onclick="return confirmx('确认要删除该单词吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
<script>
	$('#imgImport').on('click',function () {
		$.post(
			'${ctx}/word/word/imgImport',
			{},
			function () {
				alert('图片地址录入完毕');
			}
		)
	})
</script>
</body>
</html>
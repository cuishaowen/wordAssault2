<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>章节单词管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/chapterword/chapterWord/">章节单词列表</a></li>
		<li class="active"><a href="${ctx}/chapterword/chapterWord/form?id=${chapterWord.id}">章节单词<shiro:hasPermission name="chapterword:chapterWord:edit">${not empty chapterWord.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="chapterword:chapterWord:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="chapterWord" action="${ctx}/chapterword/chapterWord/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
        <!-- 如果id不是空 则是修改操作，查询所有已选单词的信息-->
        <c:if test="${chapterWord.id != null && !chapterWord.id.equals('')}">
			<div class="control-group">
				<label class="control-label">课程：</label>
				<div class="controls">
					<div style="margin-top: 3px">
						<form:label path="courseId">
							<span style="margin-top: 2px">${fns:getCourseById(chapterWord.courseId).name}</span>
						</form:label>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">章节：</label>
				<div class="controls">
					<div style="margin-top: 3px">
						<form:label path="chapterId">
							<span style="margin-top: 2px">${fns:getChapterByChapterId(chapterWord.chapterId).name}</span>
						</form:label>
					</div>
				</div>
			</div>
            <div class="control-group">
                <label class="control-label">已选单词：</label>
                <div class="controls">
                    <c:forEach items="${fns:getWordByChapterId(chapterWord.chapterId)}" var="word">
                        <span hidden>${word.id}</span hidden>
                        <span>${word.english}</span>
                        <span>${word.chinese}</span>
                        <br>
                    </c:forEach>
                </div>
            </div>
			<div class="control-group">
				<label class="control-label">单词选择：</label>
				<div class="controls">
					<form:select path="wordIds" class="input-xlarge" multiple="true">
						<form:options items="${fns:getWordWithoutSelected(chapterWord.chapterId)}" itemLabel="english" itemValue="id" htmlEscape="false"/>
					</form:select>
				</div>
			</div>
        </c:if>
		<c:if test="${chapterWord.id == null || chapterWord.id.equals('')}">
			<div class="control-group">
				<label class="control-label">课程：</label>
				<div class="controls">
					<form:select path="courseId" class="input-xlarge ">
						<form:option value="" label=""/>
						<form:options items="${fns:getCourse()}" itemLabel="name" itemValue="id" htmlEscape="false"/>
					</form:select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">章节：</label>
				<div class="controls">
					<form:select path="chapterId" class="input-xlarge ">
						<form:option value="" label=""/>
						<form:options items="${fns:getChapter()}" itemLabel="name" itemValue="id" htmlEscape="false"/>
					</form:select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">单词选择：</label>
				<div class="controls">
					<form:select path="wordIds" class="input-xlarge" multiple="true">
						<form:options items="${fns:getWord()}" itemLabel="english" itemValue="id" htmlEscape="false"/>
					</form:select>
				</div>
			</div>
		</c:if>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:input path="remarks" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="chapterword:chapterWord:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>
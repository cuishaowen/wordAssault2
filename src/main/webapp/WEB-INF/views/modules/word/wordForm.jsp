<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>单词管理</title>
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

		// Excel 导入
		$(document).ready(function() {
			$("#btnImport").click(function(){
				$.jBox($("#importBox").html(), {title:"导入数据", buttons:{"关闭":true},
					bottomText:"导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"});
			});
		});
		function page(n, s) {
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
			return false;
		}
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
		<li><a href="${ctx}/word/word/">单词列表</a></li>
		<li class="active"><a href="${ctx}/word/word/form?id=${word.id}">单词<shiro:hasPermission name="word:word:edit">${not empty word.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="word:word:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="word" action="${ctx}/word/word/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">英语单词：</label>
			<div class="controls">
				<form:input path="english" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">音标：</label>
			<div class="controls">
				<form:input path="phoneticTranscription" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">英式语音：</label>
			<div class="controls">
				<form:hidden id="engVoice" path="engVoice" htmlEscape="false" maxlength="255" class="input-xlarge"/>
				<sys:ckfinder input="engVoice" type="files" uploadPath="/engVoice" selectMultiple="false"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">美式语音：</label>
			<div class="controls">
				<form:hidden id="ameVoice" path="ameVoice" htmlEscape="false" maxlength="255" class="input-xlarge"/>
				<sys:ckfinder input="ameVoice" type="files" uploadPath="/ameVoice" selectMultiple="false"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">图片：</label>
			<div class="controls">
				<form:hidden id="img" path="img" htmlEscape="false" maxlength="255" class="input-xlarge"/>
				<sys:ckfinder input="img" type="images" uploadPath="/img" selectMultiple="false"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">中文释义：</label>
			<div class="controls">
				<form:input path="chinese" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:input path="remarks" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="word:word:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>
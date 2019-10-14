<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#btnExport").click(function(){
				top.$.jBox.confirm("确认要导出用户数据吗？","系统提示",function(v,h,f){
					if(v=="ok"){
						$("#searchForm").attr("action","${ctx}/sys/user/export");
						$("#searchForm").submit();
					}
				},{buttonsFocus:1});
				top.$('.jbox-body .jbox-icon').css('top','55px');
			});
			$("#btnImport").click(function(){
				$.jBox($("#importBox").html(), {title:"导入数据", buttons:{"关闭":true}, 
					bottomText:"导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"});
			});
		});
		function page(n,s){
			if(n) $("#pageNo").val(n);
			if(s) $("#pageSize").val(s);
			$("#searchForm").attr("action","${ctx}/sys/user/list");
			$("#searchForm").submit();
	    	return false;
	    }
	</script>
	<style>
		/*.controls {*/
		/*	display: inline-block;*/
		/*}*/
	</style>
</head>
<body>
	<div id="importBox" class="hide">
		<form id="importForm" action="${ctx}/sys/user/import" method="post" enctype="multipart/form-data"
			class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
			<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
			<input id="btnImportSubmit" class="btn btn-primary" type="submit" value="   导    入   "/>
			<a href="${ctx}/sys/user/import/template">下载模板</a>
		</form>
	</div>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/sys/user/list">用户列表</a></li>
		<shiro:hasPermission name="sys:user:edit"><li><a href="${ctx}/sys/user/form">用户添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="user" action="${ctx}/sys/user/list" method="post" class="breadcrumb form-search ">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
		<ul class="ul-form">
			<li><label>归属公司：</label><sys:treeselect id="company" name="company.id" value="${user.company.id}" labelName="company.name" labelValue="${user.company.name}" 
				title="公司" url="/sys/office/treeData?type=1" cssClass="input-small" allowClear="true"/></li>
			<li><label>登录名：</label><form:input path="loginName" htmlEscape="false" maxlength="50" class="input-medium"/></li>
			<li class="clearfix"></li>
			<li><label>归属部门：</label><sys:treeselect id="office" name="office.id" value="${user.office.id}" labelName="office.name" labelValue="${user.office.name}" 
				title="部门" url="/sys/office/treeData?type=2" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/></li>
			<li><label>姓&nbsp;&nbsp;&nbsp;名：</label><form:input path="name" htmlEscape="false" maxlength="50" class="input-medium"/></li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询" onclick="return page();"/>
				<input id="btnExport" class="btn btn-primary" type="button" value="导出"/>
				<input id="btnImport" class="btn btn-primary" type="button" value="导入"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed" style="table-layout: fixed">
		<thead>
		<tr>
			<th>归属公司</th>
			<th>归属部门</th>
			<th class="sort-column login_name">登录名</th>
			<th class="sort-column name">姓名</th>
			<th>电话</th>
			<th>手机</th>
			<th>学生详情</th>
			<%--<th>角色</th> --%>
			<shiro:hasPermission name="sys:user:edit">
				<th>操作</th>
			</shiro:hasPermission></tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="user">
			<tr>
				<td >${user.company.name}</td>
				<td>${user.office.name}</td>
				<td><a href="${ctx}/sys/user/form?id=${user.id}">${user.loginName}</a></td>
				<td>${user.name}</td>
				<td>${user.phone}</td>
				<td>${user.mobile}</td>
<%--				<c:forEach items="${user.engUserJoinCourses}" var="engUserJoinCourse">--%>
<%--				<td>${engUserJoinCourse.enguser.loginName}</td>--%>
<%--				<td>${engUserJoinCourse.courseIsOpen.openCourseList.size()}</td>--%>
<%--				</c:forEach>--%>
				<td>
					<button value="${user.id}" class="btn btn-link door">打开/关闭</button>
				</td>
				<shiro:hasPermission name="sys:user:edit"><td>
					<a href="${ctx}/sys/user/form?id=${user.id}">修改</a>
					<a href="${ctx}/sys/user/delete?id=${user.id}" onclick="return confirmx('确认要删除该用户吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
			<tr id="${user.id}open" class="hide">
				<td>
					<div class="container" style="margin-top: 5px;background:rgba(0,0,0,0.2);width: 1140px">
						<label style="font-size: 20px;color: white">已开通课程</label>
						<table style="table-layout: fixed" class="table">
							<thead>
							<tr>
								<th>序号</th>
								<th>登陆名</th>
								<th>姓名</th>
								<th>开通课程</th>
								<th>开通时间</th>
								<th>结束时间</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${fns:getEngUserJoinCourses(user.id)}" var="engUserJoinCourse" varStatus="enguserOpenCourse">
								<tr>
									<td rowspan="${engUserJoinCourse.courseIsOpen.openCourseList.size() + 1}">${enguserOpenCourse.count}</td>
									<td rowspan="${engUserJoinCourse.courseIsOpen.openCourseList.size() + 1}">
										<button value="${engUserJoinCourse.enguser.id}" class="btn btn-link updateEnguser" data-toggle="modal" data-target="#myModal">
											${engUserJoinCourse.enguser.loginName}
										</button>
									</td>
									<td rowspan="${engUserJoinCourse.courseIsOpen.openCourseList.size() + 1}">${engUserJoinCourse.enguser.name}</td>
									<c:forEach items="${engUserJoinCourse.courseIsOpen.openCourseList}" var="openCourse">
										<tr>
											<td>${openCourse.course.name}</td>
											<td>${openCourse.userCourse.blankOne}</td>
											<td>${openCourse.userCourse.blankTwo}</td>
										</tr>
									</c:forEach>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	<div class="modal fade hide" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<form action="${ctx}/enguser/enguser/update" method="post">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">用户详情</h4>
					</div>
					<div class="modal-body">
						<div class="control-group hide">
							<label class="control-label">id：</label>
							<div class="controls hidden">
								<input name="id" type="text" maxlength="20" class="input-medium hidden"/>
							</div>
						</div>
						<div class="control-group">
							<label>用户名：</label>
							<div class="controls">
								<input name="loginName" type="text" readonly/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">密码：</label>
							<div class="controls">
								<input id="psd" name="password" type="password"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">确认密码：</label>
							<span id="msg"></span>
							<div class="controls">
								<input id="psd-again" type="password"/>
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">姓名：</label>
							<div class="controls">
								<input name="name" type="text" />
							</div>
						</div>

						<div class="control-group col-sm-6">
							<label class="control-label">性别:</label>
							<div class="controls">
								<input name="sex" type="text" />
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">年龄:</label>
							<div class="controls">
								<input name="age" type="text" />
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">手机号码:</label>
							<div class="controls">
								<input name="tel" type="text" />
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">微信号:</label>
							<div class="controls">
								<input name="weChat" type="text" />
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">学校:</label>
							<div class="controls">
								<input name="school" type="text" />
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">班级:</label>
							<div class="controls">
								<input name="classR" type="text" />
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">城市:</label>
							<div class="controls">
								<input name="city" type="text" />
							</div>
						</div>
						<div class="control-group col-sm-6">
							<label class="control-label">省份:</label>
							<div class="controls">
								<input name="province" type="text" />
							</div>
						</div>
					</div>
					<div class="form-actions modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<shiro:hasPermission name="enguser:enguser:edit">
							<input id="btnSubmit" class="btn btn-primary" type="submit" value="提交更改"/>&nbsp;
						</shiro:hasPermission>
					</div>
				</div><!-- /.modal-content -->
			</form>
		</div><!-- /.modal -->
	</div>
	<script>
		$('#psd-again,#psd').on('blur',function(){
			validatePsd()
		});

		$('#btnSubmit').on('click',function (e) {
			if(validatePsd()){
				$(this).submit();
			}else{
				e.preventDefault();
			}
		});

		function validatePsd(){
			var psd = $('#psd').val();
			var psdAgain = $('#psd-again').val();
			if (psd != null && psd.trim() != '' && psd != undefined){
				if (psdAgain == null || psdAgain.trim() == '' || psdAgain == undefined){
					$('#msg').html('<span style="color: red">*请输入确认密码*<span>');
					return false;
				}else{
					if (psd == psdAgain){
						$('#msg').html('<span style="color: green">*检测通过*</span>');
						return true;
					}else{
						$('#msg').html('<span style="color: red">*两次密码输入不一致*</span>');
						return false;
					}
				}
			}
		}

		// 显示、隐藏 已开通课程和未开通课程
		$('.door').on('click',function () {
			var enguserId = $(this).val();
			if ($('#' + enguserId + 'open').is(':visible')){
				$('#' + enguserId + 'open').hide(200);
				$('#' + enguserId + 'close').hide(100);
			}else{
				$('#' + enguserId + 'open').show(200);
				$('#'+ enguserId + 'close').show(300);
			}
		});
		$('.updateEnguser').on('click',function () {
			console.log('this', $(this).val());
			var id = $(this).val();
			$.get('${ctx}/enguser/enguser/getEnguser?id=' + id, function(res){
				$("input[name='id']").val(res.id);
				$("input[name='loginName']").val(res.loginName);
				$("input[name='name']").val(res.name);
				$("input[name='sex']").val(res.sex);
				$("input[name='age']").val(res.age);
				$("input[name='weChat']").val(res.weChat);
				$("input[name='tel']").val(res.tel);
				$("input[name='school']").val(res.school);
				$("input[name='classR']").val(res.classR);
				$("input[name='province']").val(res.province);
				$("input[name='city']").val(res.city);
			})
		});
	</script>
</body>
</html>
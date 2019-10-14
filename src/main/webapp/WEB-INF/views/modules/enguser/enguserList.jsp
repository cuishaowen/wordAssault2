<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>enguser管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        };
	</script>
	<style>
		input {
			width: 80%;
		}
	</style>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/enguser/enguser/">用户列表</a></li>
		<shiro:hasPermission name="enguser:enguser:edit"><li><a href="${ctx}/enguser/enguser/form">用户添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="enguser" action="${ctx}/enguser/enguser/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>姓名：</label>
				<form:input path="name" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li class="btns"><input id="search" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-condensed" style="table-layout: fixed" >
		<thead>
			<tr>
				<th>序号</th>
				<th>用户名</th>
				<th>姓名</th>
				<th>已开通课程数</th>
				<th>开课详情</th>
				<shiro:hasPermission name="enguser:enguser:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="enguser" varStatus="eng">
			<tr>
				<td>${eng.count}</td>
				<td>${enguser.loginName}</td>
				<td>${enguser.name}</td>
				<td>${enguser.courseIsOpen.openCourseList.size()}/15</td>
				<td>
					<button value="${enguser.id}" class="btn btn-link door">打开/关闭</button>
				</td>
				<td>
					<div>
						<button value="${enguser.id}" class="btn btn-link updateEnguser" data-toggle="modal" data-target="#myModal">
							修改信息
						</button>
					</div>
				</td>
			</tr>
			<tr id="${enguser.id}open" class="hide">
				<td>
					<div class="container" style="margin-top: 5px;background:rgba(0,0,0,0.2);">
						<label style="font-size: 20px;color: white">已开通课程</label>
						<table style="table-layout: fixed" class="table">
							<thead>
								<tr>
									<th >序号</th>
									<th >课程名称</th>
									<th >详情</th>
									<th >课程状态</th>
									<th>开通时间</th>
									<th>结束时间</th>
									<th >操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${enguser.courseIsOpen.openCourseList}" var="openCourse" varStatus="open">
								<tr>
									<td>${open.count}</td>
									<td>${openCourse.course.name}</td>
									<td>${openCourse.course.detail}</td>
									<td>${fns:getDictLabel(openCourse.course.status,'course_status','')}</td>
									<td>${openCourse.userCourse.blankOne}</td>
									<td>${openCourse.userCourse.blankTwo}</td>
									<td></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<div class="blank"></div>
					</div>
				</td>
			</tr>
			<tr id="${enguser.id}close" class="hide">
				<td>
					<div class="container" style="margin-top: 5px;background:rgba(0,0,0,0.2);">
						<label style="font-size: 20px;color: white">未开通课程</label>
						<table style="table-layout: fixed" class="table">
							<thead>
								<tr>
									<th>序号</th>
									<th>课程名称</th>
									<th>详情</th>
									<th>课程状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${enguser.courseIsOpen.notOpenCouseList}" varStatus="close" var="closeCourse">
								<tr>
									<td>${close.count}</td>
									<td>${closeCourse.name}</td>
									<td>${closeCourse.detail}</td>
									<td>${fns:getDictLabel(closeCourse.status,'course_status','')}</td>
									<td><a href="${ctx}/enguser/enguser/openCourse?engUserId=${enguser.id}&courseId=${closeCourse.id}&isOpen=1" onclick="return confirmx('确认为该用户开通此课程吗?', this.href)">开通</a></td>
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
							<input name="id" type="text" class="input-medium hidden"/>
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">用户名：</label>
						<div class="controls">
							<input name="loginName" type="text" readonly/>
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">密码：</label>
						<div class="controls">
							<input id="psd" name="password" type="password"/>
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">确认密码：</label>
						<span id="msg"></span>
						<div class="controls">
							<input id="psd-again" type="password"/>
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">姓名：</label>
						<div class="controls">
							<input name="name" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">性别:</label>
						<div class="controls">
							<input name="sex" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">年龄:</label>
						<div class="controls">
							<input name="age" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">手机号码:</label>
						<div class="controls">
							<input name="tel" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">微信号:</label>
						<div class="controls">
							<input name="weChat" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">学校:</label>
						<div class="controls">
							<input name="school" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">班级:</label>
						<div class="controls">
							<input name="classR" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">城市:</label>
						<div class="controls">
							<input name="city" type="text" />
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">省份:</label>
						<div class="controls">
							<input name="province" type="text"/>
						</div>
					</div>
				</div>
				<div class="form-actions modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<input id="btnSubmit" class="btn btn-primary" type="submit" value="提交更改"/>&nbsp;
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

		$('.updateEnguser').on('click',function () {
			console.log('this', $(this).val());
			var id = $(this).val();
			$.get('${ctx}/enguser/enguser/getEnguser?id='+ id, function(res){
				console.log('loginName:',res.loginName);
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

		// 开通课程
		function openCourse(o) {
			var id = $(o).val();
			var arr = id.split(',');
			var enguserId = arr[0];
			var courseId = arr[1];
			var data = {};
			data.engUserId = enguserId;
			data.courseId = courseId;
			data.isOpen = '1';
			console.log('data',data);
			$.post(
					'${ctx}/enguser/enguser/openCourse',
					data,
					function (res) {
						window.location.reload()
					}
			)
		}
	</script>
</body>
</html>
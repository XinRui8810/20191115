﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
<form action="${pageContext.servletContext.contextPath}/modifyPasswordById.action?id=${user.id}" method="post">
	<div class="main">
		<div class="optitle clearfix">
			<div class="title">密码修改&gt;&gt;</div>
		</div>
			<div class="content">
				<table class="box">
					<input  type="hidden" id="userId" value="${user.id}"/>
					<tr>
					<td class="field">旧密码：</td>
					<td><input type="password" name="oldPassword" class="text" id="oldPassword"  /> <font color="red">*</font><font color="red" id="password_span"></font></td>
					</tr>
				 <tr>
					<td class="field">新密码：</td>
					<td><input type="password" name="newPassword" class="text" id="newPassword"  /> <font color="red">*</font></td>
				</tr>
				</table>
			</div>
			<div class="buttons">
				<input type="submit" id="update" value="修改" class="input-button" />
			</div>
	</div>
</form>
	<script type="text/javascript" src="js/user/updatePwd.js"></script>
</body>
</html>

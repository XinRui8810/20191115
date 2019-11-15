<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统登录 - 图书管理系统</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script src="js/jquery-1.8.3.min.js"></script>
</head>
<body class="blue-style">
<div id="login">
	<div class="icon"></div>
	<div class="login-box">
		<form  action="${pageContext.servletContext.contextPath}/login.action"  name="actionForm" id="actionForm"  method="post" >
			<input type="hidden" name="id" id="id" value="<c:out value="${user.id}"></c:out>">
			<dl>
				<dt>用户名：</dt>
				<dd><input type="text" name="useraccount" class="input-text" /> <span id="loginNameSpan"></span></dd>
				<dt>密　码：</dt>
				<dd><input type="password" name="password"  class="input-text" /><span id="passwordSpan"></span></dd>
			</dl>
			<div class="buttons">
				<input type="submit"   value="登录系统" class="input-button"  />
				<input type="reset"  value="重　　填" class="input-button" />
			</div>
		</form>
	</div>
</div>
</body>
</html>

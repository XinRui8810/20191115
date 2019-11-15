<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<div class="main">
		<div class="optitle clearfix">
			<div class="title">用户管理&gt;&gt;</div>
		</div>
			<div class="content">
				<table class="box"> 
					<tbody>
					<tr>
						<td class="field">用户编号：</td>
						<td><c:out value="${user.id}"></c:out></td>
					</tr>
					<tr>
						<td class="field">用户名：</td>
						<td><c:out value="${user.username}"></c:out></td>
					</tr>
					<tr>
						<td class="field">用户账号：</td>
						<td><c:out value="${user.useraccount}"></c:out></td>
					</tr>

					<tr>
						<td class="field">用户性别：</td>
						<td><c:out value="${user.sex}"></c:out></td>
					</tr>
					<tr>
						<td class="field">出生日期：</td>
						<td><c:out value="${user.age}"></c:out></td>
					</tr>
					<tr>
						<td class="field">用户年龄：</td>
						<td><c:out value="${user.age}"></c:out></td>
					</tr>
					<tr>
						<td class="field">用户电话：</td>
						<td><c:out value="${user.tel}"></c:out></td>
					</tr>
					<tr>
						<td class="field">用户地址：</td>
						<td><c:out value="${user.address}"></c:out></td>
					</tr>
					<tr>
						<td class="field">用户权限：</td>
						<td><c:out value="${user.jurisdiction}"></c:out></td>
					</tr>
					<tr>
						<td class="field">头&nbsp;&nbsp;像：</td>
						<td><img src="/pic/${user.headpath}" height="50" width="50"></td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="buttons">
				<a href="${pageContext.servletContext.contextPath}/userUpdateList.action?id=${user.id}">
					<input type="button" id="update" value="修改" class="input-button"></a>
				<a href="${pageContext.servletContext.contextPath}/delUser.action?id=${user.id}">
					<input type="button" id="del" value="删除" class="input-button"></a>
				<input type="button" id="repassword" value="重置密码" class="input-button"> 
				<input type="button" id="backButton" onclick="history.back(-1)" value="返回" class="input-button">
			</div>
	</div>

</body>
</html>
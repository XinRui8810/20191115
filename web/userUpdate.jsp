<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div class="main">
	<div class="optitle clearfix">
		<div class="title">用户管理&gt;&gt;</div>


	</div>
	<form id="form1" name="form1" enctype="multipart/form-data" method="post" action="${pageContext.servletContext.contextPath}/userUpdate.action?id=${user.id}">
		<input type="hidden" name="method" value="update">
		<div class="content">
			<font color="red"></font><table class="box">
			<tbody><tr>
					<td class="field">用户编号：</td>
					<td><input type="text" readonly name="userId" value="<c:out value="${user.id}"></c:out>"></td>

				</tr>
			    <tr>
					<td class="field">用户名：</td>
				<td><input type="text" name="username" class="text" id="name" value="<c:out value="${user.username}"></c:out>"> <font color="red">*</font><font color="red" id="name_span"></font></td>
				</tr>
			<tr>
				<td class="field">用户账号：</td>
				<td><input type="text" name="useraccount" class="text" id="account" value="<c:out value="${user.useraccount}"></c:out>"> <font color="red">*</font><font color="red" id="span"></font></td>
			</tr>
			<tr>
				<td class="field">用户密码：</td>
				<td><input type="text" name="password" class="text" id="pwd" value="<c:out value="${user.password}"></c:out>"> <font color="red">*</font><font color="red" id="span"></font></td>
			</tr>
				<tr>
					<td class="field">用户性别：</td>
					<td><select name="sex" id="sex">
						<option value="男" checked="" <c:if test="${user.sex}"></c:if>>男</option>
						<option value="女" <c:if test="${user.sex}"></c:if>>女</option>
						 </select></td>
				</tr>
				<tr>
					<td class="field">出生日期：</td>
					<td><input type="text" name="age" class="text" id="birthDate"
							   value="<c:out value="${user.age}" default=""></c:out> "> <font color="red">*</font><font color="red" id="birthDate_span"></font></td>
				</tr>
				<tr>
					<td class="field">用户电话：</td>
					<td><input type="text" name="tel" class="text" id="phone"
							   value="<c:out value="${user.tel}" default=""></c:out>"> <font color="red">*</font><font color="red" id="phone_span"></font></td>
				</tr>
				<tr>
					<td class="field">用户地址：</td>
					<td><input name="address" id="address" class="text"
							   value="<c:out value="${user.address}" default=""></c:out>"></td>
				</tr>
				<tr>
					<td class="field">用户权限：</td>
					<td><input type="radio" name="jurisdiction" value="管理员" <c:if test="${user.jurisdiction=='管理员'}">checked</c:if>>管理员
						<input type="radio" name="jurisdiction" value="普通用户" checked="true" <c:if test="${user.jurisdiction=='普通用户'}">checked</c:if>>普通用户
					    <input type="radio" name="jurisdiction" value="经理" <c:if test="${user.jurisdiction=='经理'}">checked</c:if>>经理
					</td>
				</tr>
			    <tr>
					<td class="field">头&nbsp;&nbsp;像：</td>
				    <td><img src="/pic/${user.headpath}" height="50" width="50"><input type="file" name="pictureFile"></td>
				</tr>
			</tbody></table>
		</div>
		<div class="buttons">
			<input type="button" name="update" id="update" value="修改" class="input-button">
			<input type="button" name="button" id="button" onclick="history.back(-1)" value="返回" class="input-button"> 
		</div>

	</form>
</div>
<script type="text/javascript" src="js/user/update.js"></script>


</body></html>
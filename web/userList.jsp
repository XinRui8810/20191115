<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>超市账单管理系统-用户管理</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<script src="js/jquery-1.8.3.min.js"></script>
<body>

	<div class="menu">
		<form method="post" action="${pageContext.servletContext.contextPath}/userList.action?useraccount=${useraccount}">
		<input name="method" value="query" class="input-text" type="hidden">
		用户名：<input type="text" name="useraccount" value="${useraccount}"/>&nbsp;
					<input name="search" value="查 询" type="submit" />
		</form>
	</div>
	<div class="main">
		<div class="optitle clearfix">
			<em><input value="添加用户" class="input-button" onclick="window.location='userAdd.jsp'" type="button">
			</em>
			<div class="title">用户管理&gt;&gt;</div>
		</div>
		<div class="content">
			<table class="list">
				<thead>
						<th width="70" height="29"><div class="STYLE1" align="center">编号</div>
						</th>
						<th width="80"><div class="STYLE1" align="center">用户名</div>
						</th>
						<th width="80"><div class="STYLE1" align="center">用户账号</div>
						</th>
						<th width="100"><div class="STYLE1" align="center">性别</div>
						</th>
						<th width="100"><div class="STYLE1" align="center">年龄</div>
						</th>
						<th width="150"><div class="STYLE1" align="center">电话</div>
						</th>
						<th width="150"><div class="STYLE1" align="center">权限</div>
						</th>
				</thead>
				<tbody>
				<c:forEach var="user" items="${pageInfo.list}">
					<tr <c:if test="${user.id==-1}">
					        style="display:none"
				        </c:if>>
						<td><c:out value="${user.id}"></c:out></td>
						<td><c:out value="${user.username}"></c:out></td>
						<td><a href="${pageContext.servletContext.contextPath}/UserView.action?id=${user.id}" style="color:red"><c:out value="${user.useraccount}"></c:out></a></td>
						<td><c:out value="${user.sex}"></c:out></td>
						<td><c:out value="${user.age}"></c:out></td>
						<td><c:out value="${user.tel}"></c:out></td>
						<td><c:out value="${user.jurisdiction}"></c:out></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div align="center">当前是第<span>${pageInfo.pageNum}</span>页&nbsp;一共<span>${pageInfo.pages}</span>页
			    <c:if test="${pageInfo.isFirstPage==false}">
					<a href="<%=request.getContextPath()%>/userList.action?page=${pageInfo.prePage}">上一页</a>
				</c:if>
				<c:if test="${pageInfo.isFirstPage==true}">上一页</c:if>
				<c:if test="${pageInfo.isLastPage==false}">
					<a href="<%=request.getContextPath()%>/userList.action?page=${pageInfo.nextPage}">下一页</a>
				</c:if>
				<c:if test="${pageInfo.isLastPage==true}">下一页</c:if>
			</div>
		</div>
	</div>
<script>

	<%--$("input[name=search]").on("click",function () {--%>
		<%--location.href = "${pageContext.servletContext.contextPath}/searchByName.action?searchname=${searchname}";--%>
    <%--})--%>
</script>
</body>
</html>
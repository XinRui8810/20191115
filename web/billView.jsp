<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div class="main">
	<div class="optitle clearfix">
		<div class="title">圖書管理&gt;&gt;</div>
	</div>
		<div class="content">
			<table class="box">
			  <tbody><tr>
					<td class="field">圖書编号：</td>
					<td>${list.bookid}<input type="hidden" id="billId" value="<c:out value="${list.bookid}"></c:out>"></td>
				</tr>
			   <tr>
					<td class="field">书籍名称：</td>
					<td><c:out value="${list.bookname}"></c:out></td>
				</tr>
				 <tr>
					<td class="field" >作&#12288;&#12288;者：</td>
					<td><c:out value="${list.author}"></c:out></td>
				</tr>
				<tr>
					<td class="field">书籍数量：</td>
					<td><c:out value="${list.count}"></c:out></td>
				</tr>
				<tr>
					<td class="field">价&#12288;&#12288;格：</td>
					<td><c:out value="${list.price}"></c:out></td>
				</tr>
			   <tr>
					<td class="field">出 版 社：</td>
					<td><c:out value="${list.press}"></c:out></td>
				</tr>
				 <tr>
					<td class="field">是否借出：</td>
						<td>
							<c:out value="${list.state}"></c:out>
						</td>
				</tr>
			</tbody>
			</table>
		</div>
		<div class="buttons">
			<a href="${pageContext.servletContext.contextPath}/bookUpdateList.action?bookid=${list.bookid}" >
				<input type="button" name="update" id="update" value="修改" class="input-button"></a>
			<a href="${pageContext.servletContext.contextPath}/delBook.action?bookid=${list.bookid}" >
				<input type="button" name="del" id="del" value="删除" class="input-button"></a>
			<input type="button" name="button" id="button" onclick="history.back(-1)" value="返回" class="input-button"> 
		</div>

</div>

</body>
</html>
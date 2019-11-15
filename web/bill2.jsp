<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书管理</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
	<script src="js/jquery-1.8.3.min.js"></script>
</head>
<body>

	<div class="menu">

		<table>
			<tbody>
				<tr>
					<td>
							<input name="method" value="query" class="input-text" type="hidden">
						书籍名称：<input name="bookname" class="input-text" type="text"
									value="${bookname}">
						作者：<input name="author" class="input-text" type="text"
								  value="${author}">

						是否借出：
						<input type="radio" name="state" value="是" <c:if test="${state=='是'}"></c:if>>是
						<input type="radio" name="state" value="否" <c:if test="${state=='否'}"></c:if>>否
						<input name="search" value="查 询" type="button">
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="main">

		<div class="optitle clearfix">
			
			<div class="title">借阅管理&gt;&gt;</div>
		</div>
		<div class="content">
			<form method="post" action="${pageContext.servletContext.contextPath}/borrow.action">
			<table class="list">
				<thead>
						<th width="70" height="29"><div class="STYLE1" align="center">图书编号</div>
						</th>
						<th width="80"><div class="STYLE1" align="center">书籍名称</div>
						</th>
						<th width="80"><div class="STYLE1" align="center">作者</div>
						</th>
						<th width="100"><div class="STYLE1" align="center">出版社</div>
						</th>
						<th width="100"><div class="STYLE1" align="center">是否借出</div>
						</th>
						<th width="100"><div class="STYLE1" align="center">图书管理</div>
						</th>
				</thead>
				<tbody>
				<c:forEach var="book" items="${pageInfo.list}">
					<tr>
						<td height="23"><c:out value="${book.bookid}"></c:out></td>
						<td><a href="${pageContext.servletContext.contextPath}/borrowView.action?bookid=${book.bookid}" style="color:red" ><c:out value="${book.bookname}"></c:out></a></td>
						<td><c:out value="${book.author}"></c:out></td>
						<td><c:out value="${book.press}"></c:out></td>
						<td><c:out value="${book.state}"></c:out></td>
						<td ><em><input value="借阅" class="input-button" onclick="" type="submit"></em></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			</form>
			<div align="center">当前是第<span>${pageInfo.pageNum}</span>页&nbsp;一共<span>${pageInfo.pages}</span>页
				<c:if test="${pageInfo.isFirstPage==false}">
					<a href="<%=request.getContextPath()%>/bookList.action?page=${pageInfo.prePage}">上一页</a>
				</c:if>
				<c:if test="${pageInfo.isFirstPage==true}">上一页</c:if>
				<c:if test="${pageInfo.isLastPage==false}">
					<a href="<%=request.getContextPath()%>/bookList.action?page=${pageInfo.nextPage}">下一页</a>
				</c:if>
				<c:if test="${pageInfo.isLastPage==true}">下一页</c:if>
			</div>
		</div>
	</div>
	<script>
        $("input[name=search]").on("click", function () {
            var bookname = $("input[name=bookname]").val();
            var author = $("input[name=author]").val();
            var state = $("input[name=state]").val();
            location.href = "${pageContext.servletContext.contextPath}/borrowList.action?bookname=${bookname}"+bookname+"&author=${author}"+author+"&state=${state}"+state;
        })
	</script>
</body></html>
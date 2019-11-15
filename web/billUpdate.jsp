<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div class="main">
	<div class="optitle clearfix">
		<div class="title">图书管理&gt;&gt;</div>
	</div>
	<form id="form1" name="form1" method="post" action="${pageContext.servletContext.contextPath}/bookUpdate.action?bookid=${list.bookid}">
		<input type="hidden" name="method" value="update">
		<div class="content">
			<table class="box">
			   <tbody>
			   <tr>
				   <td class="field">书籍编号：</td>
				   <td><input type="text" readonly name="bookid" value="<c:out value="${list.bookid}"></c:out>"></td>
			   </tr>
			   <tr>
					<td class="field">书籍名称：</td>
					<td><input type="text" name="bookname" class="text" id="productName" value="<c:out value="${list.bookname}"></c:out>"> <font color="red">*</font><font color="red" id="productName_span"></font></td>
				</tr>
				 <tr>
					<td class="field">作者：</td>
					<td><input type="text" name="author" class="text" id="productUnit" value="<c:out value="${list.author}"></c:out>"> <font color="red">*</font><font color="red" id="productUnit_span"></font></td>
				</tr>
				<tr>
					<td class="field">书籍数量：</td>
					<td><input type="text" name="count" class="text" id="productCount" value="<c:out value="${list.count}"></c:out>"> <font color="red">*</font><font color="red" id="productCount_span"></font></td>
				</tr>
				<tr>
					<td class="field">金额：</td>
					<td><input name="price" id="billMoney" class="text" value="<c:out value="${list.price}"></c:out>"><font color="red">*</font><font color="red" id="billMoney_span"></font></td>
				</tr>
			   <tr>
					<td class="field">出版社：</td>
					<td>
						<select name="press" id="proId">
							
							<option selected="" value="中华出版社" <c:if test="${list.press}"></c:if>>中华出版社</option>
							
							<option value="清华出版社" <c:if test="${list.press}"></c:if>>清华出版社</option>
							
							<option value="成光出版社" <c:if test="${list.press}"></c:if>>成光出版社</option>
							
						</select>
						<font color="red">*</font><font color="red" id="proId_span"></font>
					</td>
				</tr>
				 <tr>
					<td class="field">是否借出：</td>
					<td>
						<input type="radio" name="state" value="是" <c:if test="${list.state=='是'}">checked</c:if>>是
						<input type="radio" name="state" value="否" <c:if test="${list.state=='否'}">checked</c:if>>否
					</td>
				</tr>
			</tbody></table>
		</div>
		<div class="buttons">
			<input type="button" name="update" id="update" value="保存" class="input-button">
			<input type="button" name="button" id="button" onclick="history.back(-1)" value="返回" class="input-button"> 
		</div>

	</form>
</div>
<script type="text/javascript" src="js/bill/update.js"></script>


</body></html>
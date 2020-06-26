<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import ="database.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>お客様検索結果ページ</title>
</head>
<body>

<h3>検索結果です</h3>
<table border="3">
	<tr>
		<th>口座番号</th>
		<th>お名前</th>
		<th>口座残高</th>
	</tr>

<c:forEach var="cbean" items="${customerList}">
	<tr>
		<td>${cbean.no }</td>
		<td>${cbean.name }</td>
		<td>${cbean.money }</td>
	</tr>
</c:forEach>
</table>
<a href="<%=request.getContextPath() %>/database/selecttop.jsp">お客様検索トップに戻る</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSPの式</title>
</head>
<body>

<h1>JSPの式</h1>
10+10=<%=10+10 %>
<br>
現在時刻は<%= new java.util.Date() %>
<br>
乱数は<%=Math.random() %>
</body>
</html>
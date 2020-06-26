<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>様々なリンクのページ</title>
</head>
<body>
<a href="/myweb/introduction/hello.html" >ハローページへ(通常パス指定)</a>
<br>
<a href="<%=request.getContextPath() %>/introduction/hello.html" >ハローページへ(JSP特有パス指定)</a>
<br>
<br>
<a href="/myweb/firstpage" >初めてのサーブレットへ(通常パス指定)</a>
<br>
<a href="<%=request.getContextPath() %>/firstpage" >初めてのサーブレットへ(JSP特有パス指定)</a>
<br>
<a href="../firstpage" >初めてのサーブレットへ(相対パス指定)</a>
<br>

</body>
</html>
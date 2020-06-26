<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新規口座作成画面</title>
</head>
<body>
<h2>新規口座の作成を行います</h2>

<form action="<%=request.getContextPath() %>/regist" method="post">
希望口座番号<input type="text" name="no"><br>
お名前：<input type="text" name="name">様<br>
初回預入金額：<input type="text" name="money">円<br><br>
<input type="submit" value="上記の内容で口座作成">
 </form>
</body>
</html>
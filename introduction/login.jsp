<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログインページ</title>
</head>
<body>
<h3>ID,パスワードを入力してログインしてください</h3>

<form action="<%=request.getContextPath() %>/login">
	ID:<input type="text" name="id"><br>
	PassWord:<input type="password" name="password"><br>
	<input type="submit" name="btn" value ="login">

</form>

</body>
</html>
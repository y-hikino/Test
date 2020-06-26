<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>入力ページ</title>
</head>
<body>
<h3>データを入力してください</h3>
<form action="<%=request.getContextPath() %>/input" method="POST">
	データ<input type="text" name="data">
	<input type="submit" value="次へ">
</form>

</body>
</html>
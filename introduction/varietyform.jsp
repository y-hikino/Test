<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>さまざまな入力フォームページ</title>
</head>
<body>
<h2>アンケートフォーム</h2>

<form action="<%=request.getContextPath() %>/quest">
	ニックネームを教えてください<br>
	<input type="text" name="nickname"><br><br>
	性別を教えてください。<br>
	<input type="radio" name ="gender" value="man" checked>男性
	<input type="radio" name ="gender" value="woman">女性
	<br><br>

	趣味を教えてください<br>
	<input type="checkbox" name="hobby" value="読書">読書
	<input type="checkbox" name="hobby" value="スポーツ">スポーツ
	<input type="checkbox" name="hobby" value="ゲーム">ゲーム
	<br><br>
	習得済みの言語は何ですか？<br>
	<select name ="language" multiple="true" >
		<option value="Java">Java
		<option value="C++">C++
		<option value ="VB">VB
	</select>
	<br><br>

	よろしければご意見、ご感想をお願いします<br>
	<textarea  name="message" rows="5" cols="30"></textarea>
	<input type="submit" value="送信">

</form>

</body>
</html>
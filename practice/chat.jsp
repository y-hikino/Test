<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ page import ="practice.MessageBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./NewFile.css">
<title>チャットページ</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/chat" method="POST">
	名前<input type="text" name="name"><br>
	メッセージ<input type="text" name="message" ><br>
	<input type="submit"value="送信">
	</form>
	<hr>
	<%
	List<MessageBean> messageList=(List<MessageBean>) session.getAttribute("messageList");
	if(messageList != null)
		for(MessageBean mb:messageList){
	%>
		名前：<%=mb.getName() %>
			メッセージ：<%=mb.getMessage() %><br>
		<% }


	%>
</body>
</html>
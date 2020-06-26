<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="practice.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>標準アクションサンプルページ</title>
<%
request.setAttribute("requestmbean", new MemberBean("田中","pass1234"));
%>
</head>
<body>

リクエストスコープに登録されているMemberBeanを取得、フィールドの値を表示<br>
<jsp:useBean id="requestmbean" type="practice.MemberBean" scope="request"/>
名前：<jsp:getProperty name="requestmbean" property="name"/><br>
パスワード：<jsp:getProperty name="requestmbean" property="password"/><br><br>

ページスコープに登録したMemberBeanに値をセット、表示<br>
<jsp:useBean id="pagembean" type="practice.MemberBean" class ="practice.MemberBean" scope="page"/>
<jsp:setProperty property="name" name="pagembean" value="横山"/>
<jsp:setProperty property="password" name="pagembean" value="pass9999"/>
名前：<jsp:getProperty name="pagembean" property="name"/><br>
パスワード：<jsp:getProperty name="pagembean" property="password"/><br><br>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>スクリプトレットのページ</title>
</head>
<body>
<h3>スクリプトレットで計算し、結果を表示</h3>
<%
	int x=50;
	int sum =0;
	if(x>0){
		for (int i=0;i<x;i++)sum+=x;
	}

%>
計算結果は<%=sum %>
</body>
</html>
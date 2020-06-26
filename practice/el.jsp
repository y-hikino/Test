<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="practice.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL式ページ</title>
<%
request.setAttribute("count", 15);
request.setAttribute("message", "おはようございます");
request.setAttribute("mbean1",new MemberBean("田中","pass1234") );
session.setAttribute("mbean2",new MemberBean("中田","pass5678") );

List<MemberBean> memberList = new ArrayList();
memberList.add(new MemberBean("太田","pass1234"));
memberList.add(new MemberBean("谷","pass1111"));
memberList.add(new MemberBean("森山","pass2222"));
request.setAttribute("memberList", memberList);

Map<String,MemberBean> memberMap = new HashMap();
memberMap.put("sasaki", new MemberBean("佐々木","pass5555"));
memberMap.put("nakajima", new MemberBean("中島","pass6666"));
memberMap.put("ihara", new MemberBean("井原","pass7777"));
session.setAttribute("memberMap", memberMap);
%>
</head>
<body>

リクエストスコープString<br>
${requestScope.message}<br><br>
${message}<br>
リクエストスコープのMemberBean<br>
名前:${mbean1.name}<br>
パスワード:${mbean1.password}<br>

セッションスコープのMemberBean<br>
名前:${mbean2.name}<br>
パスワード:${mbean2.password}<br>

<br>
リストのMemberBean<br>
一人目の名前：${memberList[0].name}<br>
二人目の名前：${requestScope.memberList[1].name}<br>
三人目の名前：${requestScope.memberList[2].name}<br>


マップのMemberBean<br>
一人目の名前：${sessionScope.memberMap["sasaki"].name}<br>
二人目の名前：${sessionScope.memberMap["nakajima"].name}<br>
三人目の名前：${sessionScope.memberMap["ihara"].name}<br><br>

10+5=${10+5 }
countは10以上かつ20未満？${count >=10 && count<20}<br>
リストの最初の人は太田さん？${memberList[0].name =="太田"? "そうです":"ちがいます" }<br>
リストは空ですか？${empty memberList}






</body>
</html>
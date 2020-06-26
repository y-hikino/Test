<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="practice.*" %>
<%@ page import ="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%

pageContext.setAttribute("pagembean", new MemberBean("山岡","pass9988"));

List<MemberBean> memberList = new ArrayList();
memberList.add(new MemberBean("太田","pass1234"));
memberList.add(new MemberBean("谷","pass1111"));
memberList.add(new MemberBean("森山","pass2222"));
memberList.add(new MemberBean("三井","pass3333"));
memberList.add(new MemberBean("高木","pass4444"));
request.setAttribute("memberList", memberList);

Map<String,MemberBean> memberMap = new HashMap();
memberMap.put("sasaki", new MemberBean("佐々木","pass5555"));
memberMap.put("nakajima", new MemberBean("中島","pass6666"));
memberMap.put("ihara", new MemberBean("井原","pass7777"));
session.setAttribute("memberMap", memberMap);



%>


</head>
<body>


setタグで文字列登録<br>
<c:set var="message" value="お疲れ様です。" scope="page"/>
文字列は${message}
<br><br>
setタグでMemberBean登録<br>
<c:set var="mbean1" value="${pagembean }" scope="request"/>
名前は：${mbean1.name}<br>
パスワードは：${mbean1.password }<br>

setタグでMemberBeanのフィールドに値をセット<br>
<c:set target="${mbean1}" property="name" value="東篠"/>
<c:set target="${mbean1}" property="password" value="pass7766"/>
名前は：${mbean1.name}<br>
パスワードは：${mbean1.password }<br>

ifタグで分岐<br>
<c:if test="${ not empty memberList}">リストは空ではない</c:if>
<br><br>

chooseタグで多分岐<br>
性格は
<c:set var ="bloodtype" value="O"/>
<c:choose>
	<c:when test ="${bloodtype== 'A'}">慎重です</c:when>
	<c:when test ="${bloodtype== 'B'}">マイペースです</c:when>
	<c:when test ="${bloodtype== 'O'}">おおらかです</c:when>
	<c:when test ="${bloodtype== 'AB'}">個性的です</c:when>
	<c:otherwise>慎重です</c:otherwise>
</c:choose>
<br><br>

forEachタグで繰り返し(リスト)
<ul>
<c:forEach var ="mbean" items="${memberList }" varStatus="status">
	<li>${status.count } 名前:${mbean.name } ；パスワード:${mbean.password}</li>
</c:forEach>
</ul>
<br>

forEachタグで繰り返し(マップ)
<ul>
<c:forEach var ="item" items="${memberMap }" varStatus="status">
	<li>登録キー:${item.key} 名前:${item.value.name } ；パスワード:${item.value.password}</li>
</c:forEach>
</ul>
<br>

forTokensタグで繰り返し
<c:set var="csvname" value="木田,中井,瀬戸,手塚,須田,渡辺"></c:set><br>
<ul>
<c:forTokens var ="name" items="${csvname }" delims=",">
	<li>${name }</li>
</c:forTokens>
</ul>
<br>

catchタグで例外キャッチ<br>
<c:catch var ="e">
	<%=Integer.parseInt("aaa") %>
</c:catch>

<c:if test="${not empty e }">例外をキャッチしました</c:if>
<br><br>
outタグで安全に出力<br>
<c:set var="htmltag" value="<hr>" scope="page"></c:set>
${htmltag }<br>
<c:out value="${htmltag }"></c:out>









</body>
</html>
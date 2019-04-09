<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 </title>
</head>
<body>

<%
if(session.getAttribute("id")==null){ 
%>201807025 최현정
<form action="Lab2_2_result.jsp" method="post">
아이디 <input type= "text" name="id">
<br>
비밀번호 <input type="password" name="pwd"> <br>
<input type="submit" value="로그인">
</form>

<% }else { //세션이 설정되지 않은 경우
%>
<form action="Lab2_2_result.jsp" method="post" >
<%= session.getAttribute("id") %>님 로그인하셨습니다. <br>
<input type="submit" value="로그아웃">
</form>

<!-- 좋아하는 계절 옵션  -->

<form action="includepage.jsp"> 
<h1>*좋아하는 계절은? </h1> <hr>
<input type="radio" name="grade" value="봄">봄
<input type="radio" name="grade" value="여름">여름
<input type="radio" name="grade" value="가을">가을
<input type="radio" name="grade" value="겨울">겨울
<input type="submit" value="결과 보기 ">

<br>

<%
Date d = new Date();
SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
long time =session.getLastAccessedTime();
out.println("마지막 접속 시간 : " + f.format(time)); 
%>

</form>



<%}%>




</body>
</html>
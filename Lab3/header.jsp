
<!--201807025 최현정, LAB3 ,제출일 : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>헤더</title>
</head>
<body>

<body>

<%
if(session.getAttribute("id")==null)
{ %>

<!-- 로그인 및 회원 가입 -->

<form action="login_ok.jsp" method="post">
	아이디<input type="text" name="id"> 
	비밀번호<input type="password" name="pwd"> 
	<input type="submit" value="로그인"> 
	<a href="./main.jsp?pagefile=join"><input type="button" value="회원가입"> </a>
</form>
<% } 

else 
{
%>

<!-- 로그아웃 -->

<form action="logout.jsp" method="post" >
<%= session.getAttribute("id") %>님 로그인하셨습니다. 
<input type="submit" value="로그아웃">


</form>
<%}%>


</body>

</body>
</html>
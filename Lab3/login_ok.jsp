
<!--201807025 최현정, LAB3 ,제출일 : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 4장 참고하여 만듦. 아이디 비밀번호 확인후 메인으로 전송한다.   -->

<% String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if (id.equals("test") && pwd.equals("1234"))
session.setAttribute("id",id);
response.sendRedirect("main.jsp");
%>


</body>
</html>
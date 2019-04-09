<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>


<!-- 성공 했을 경우  -->


<% request.setCharacterEncoding("euc-kr"); %>
<% String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if (id.equals("test") && pwd.equals("1234"))
session.setAttribute("id",id);
response.sendRedirect("Lab2_2.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 성공!</title>
</head>
<body>



</body>
</html>

<!--201807025 ������, LAB3 ,������ : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 4�� �����Ͽ� ����. ���̵� ��й�ȣ Ȯ���� �������� �����Ѵ�.   -->

<% String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if (id.equals("test") && pwd.equals("1234"))
session.setAttribute("id",id);
response.sendRedirect("main.jsp");
%>


</body>
</html>
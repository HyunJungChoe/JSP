
<!--201807025 ������, LAB3 ,������ : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���</title>
</head>
<body>

<body>

<%
if(session.getAttribute("id")==null)
{ %>

<!-- �α��� �� ȸ�� ���� -->

<form action="login_ok.jsp" method="post">
	���̵�<input type="text" name="id"> 
	��й�ȣ<input type="password" name="pwd"> 
	<input type="submit" value="�α���"> 
	<a href="./main.jsp?pagefile=join"><input type="button" value="ȸ������"> </a>
</form>
<% } 

else 
{
%>

<!-- �α׾ƿ� -->

<form action="logout.jsp" method="post" >
<%= session.getAttribute("id") %>�� �α����ϼ̽��ϴ�. 
<input type="submit" value="�α׾ƿ�">


</form>
<%}%>


</body>

</body>
</html>
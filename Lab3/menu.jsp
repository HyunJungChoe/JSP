
<!--201807025 ������, LAB3 ,������ : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div>

<a href="./main.jsp">Ȩ | </a>
<%
if(session.getAttribute("id")==null){ 
%>

<!-- �α����� �������� ����ϱ�  -->

<a href="./main.jsp?pagefile=list"> �������� </a>      
<% }
else { //������ �������� ���� ���
%> 

<!--�α��� ������  ������û ��� -->

<a href="./main.jsp?pagefile=list"> ������û </a>
<%}
%>

</div>



</body>
</html>



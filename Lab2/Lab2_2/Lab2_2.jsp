<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��� </title>
</head>
<body>

<%
if(session.getAttribute("id")==null){ 
%>201807025 ������
<form action="Lab2_2_result.jsp" method="post">
���̵� <input type= "text" name="id">
<br>
��й�ȣ <input type="password" name="pwd"> <br>
<input type="submit" value="�α���">
</form>

<% }else { //������ �������� ���� ���
%>
<form action="Lab2_2_result.jsp" method="post" >
<%= session.getAttribute("id") %>�� �α����ϼ̽��ϴ�. <br>
<input type="submit" value="�α׾ƿ�">
</form>

<!-- �����ϴ� ���� �ɼ�  -->

<form action="includepage.jsp"> 
<h1>*�����ϴ� ������? </h1> <hr>
<input type="radio" name="grade" value="��">��
<input type="radio" name="grade" value="����">����
<input type="radio" name="grade" value="����">����
<input type="radio" name="grade" value="�ܿ�">�ܿ�
<input type="submit" value="��� ���� ">

<br>

<%
Date d = new Date();
SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
long time =session.getLastAccessedTime();
out.println("������ ���� �ð� : " + f.format(time)); 
%>

</form>



<%}%>




</body>
</html>
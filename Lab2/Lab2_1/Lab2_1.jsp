<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

 <!-- Lab2 ���� ,  201807025 ������ , ������ 0327 , ����� : �� ���α׷���  -->




<%@include file ="header.jsp"%>  <!-- include�� ��� ���� �� �����ɴϴ�. -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_1 ������</title>
</head>
<body>
<form action="Lab2_1_result.jsp" method="post">
�̸� : <input type="text" name="name"> <br>
�й� : <input type="text" name="S_number"> <br>

while�� <input type="radio" name="aa" value="while"> 
for�� <input type="radio" name="aa" value="for"> <br>

�Է� Ƚ�� : <input type="text" name="time"  > <br>
�Է� ���� : <input type="text" name="whattext" > <br>

<input type="submit" value="����">
</body>
</html>


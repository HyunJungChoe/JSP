<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

 <!-- Lab2 과제 ,  201807025 최현정 , 제출일 0327 , 과목명 : 웹 프로그래밍  -->




<%@include file ="header.jsp"%>  <!-- include로 헤더 파일 을 가져옵니다. -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_1 최현정</title>
</head>
<body>
<form action="Lab2_1_result.jsp" method="post">
이름 : <input type="text" name="name"> <br>
학번 : <input type="text" name="S_number"> <br>

while문 <input type="radio" name="aa" value="while"> 
for문 <input type="radio" name="aa" value="for"> <br>

입력 횟수 : <input type="text" name="time"  > <br>
입력 글자 : <input type="text" name="whattext" > <br>

<input type="submit" value="전송">
</body>
</html>


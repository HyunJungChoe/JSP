
<!--201807025 최현정, LAB3 ,제출일 : 2019-0405 -->

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

<a href="./main.jsp">홈 | </a>
<%
if(session.getAttribute("id")==null){ 
%>

<!-- 로그인전 개설강좌 출력하기  -->

<a href="./main.jsp?pagefile=list"> 개설강좌 </a>      
<% }
else { //세션이 설정되지 않은 경우
%> 

<!--로그인 했으면  수강신청 출력 -->

<a href="./main.jsp?pagefile=list"> 수강신청 </a>
<%}
%>

</div>



</body>
</html>



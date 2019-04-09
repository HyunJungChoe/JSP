<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.Timestamp" %>
    
 <% request.setCharacterEncoding("euc-kr"); %>
 
 
 <!-- 201807025 최현정, LAB4  -->
 
<jsp:useBean id ="Lab4" class="Lab4.Lab4" scope="page">
<jsp:setProperty name="Lab4" property="*"/>


</jsp:useBean>
 
 <!-- 주문 시간 함수   -->
 <% Lab4.setDate(new Timestamp(System.currentTimeMillis())); %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
주문 번호:
<jsp:getProperty name="Lab4" property ="order_num"/>
<br>
커피:
<jsp:getProperty name="Lab4" property ="coffee"/>
<br>
옵션
<jsp:getProperty name="Lab4" property ="option"/>
<br>

사이즈
<jsp:getProperty name="Lab4" property ="size"/>
<br>

주문 시간
<jsp:getProperty name="Lab4" property ="date"/>
<br>

<br>

</body>
</html>
<!--201807025 최현정, LAB3 ,제출일 : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("euc-kr"); %>

<!--로그아웃 -->

<%
session.invalidate();
response.sendRedirect("main.jsp");
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("euc-kr"); %>


<%
session.invalidate();
response.sendRedirect("Lab2_2.jsp");
%>

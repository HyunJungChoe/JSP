<!--201807025 ������, LAB3 ,������ : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("euc-kr"); %>

<!--�α׾ƿ� -->

<%
session.invalidate();
response.sendRedirect("main.jsp");
%>
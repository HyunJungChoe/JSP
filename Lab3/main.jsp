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

<!--������ ���� �����̸� intro�� ����ϰ� �ƴϸ� elseif�� ���� ����Ѵ�. -->
<%
String pagefile=request.getParameter("pagefile");
if(pagefile==null)
{
pagefile="intro";
} 

else if (pagefile=="join") 
{
	pagefile="join";
}

else if (pagefile=="list")
{
	pagefile="list";
} 

else if (pagefile=="apply")
{
	pagefile="apply";
}

else if (page=="result") 
{
	pagefile="result";
}
%>

<jsp:include page="template.jsp" flush="false">
<jsp:param name="pagefile" value="<%=pagefile%>" />
</jsp:include>


</body>
</html>
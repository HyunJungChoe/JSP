
<!--201807025 최현정, LAB3 ,제출일 : 2019-0405 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("euc-kr"); %>

<% String pagefile=request.getParameter("pagefile"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<style>
#container {
	width: 940px;
	margin: 0px auto;
	padding: 20px;
	border: 1px solid #bcbcbc;
}

#header {
	padding: 20px;
	margin-bottom: 5px;
	width: 900px;
	height: 10px;
	border: 1px solid #bcbcbc;
	float: right;
	text-align: right;
}

#menu {
	padding: 20px;
	margin-bottom: 5px;
	width: 900px;
	height: 50px;
	float: left;
	border: 1px solid #bcbcbc;
}

#content {
	width: 900px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc;
}

#footer {
	clear: both;
	padding: 20px;
	border: 1px solid #bcbcbc;
}
</style>

<div id="container">
		<!-- header  -->
		<div id="header">
			<jsp:include page="header.jsp"/>
			
		</div>
		
		<div id="menu">
			<jsp:include page="menu.jsp"/>
		</div>

		
		<!--  content   -->
		<div id="content">
		
		<!-- pagefile 이동  -->
			<jsp:include page='<%=pagefile+".jsp"%>'  flush="false"/>

		</div>
		

		<!--  footer    -->
		<div id="footer">
			<jsp:include page ="footer.jsp"/>
		</div>
		

	</div>



</body>
</html>
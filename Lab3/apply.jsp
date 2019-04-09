
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


<h1>수강신청하기</h1>
<table border="1">
	<tr>
		<th>번호</th>
		<th>선택한 과목</th>
		<th>학점</th>
		<th>학년</th>
	</tr>
<%
//체크한 총 학점
int checkscore= 0 ; 
String[] subjects = request.getParameterValues("sub");

//과목이 비어 있지 않으면 
if(subjects != null)
{ 
    	for(int i = 0 ; i < subjects.length ; i ++)
    	{ 
    		//, 를 기준으로 split
    		String[] array = subjects[i].split(","); 
    		checkscore = checkscore + Integer.parseInt(array[2]); 
    		
    		%>
	<tr>
		<th><%=i+1 %></th>
		<th><%=array[0]%></th>
		<th><%=array[2] %></th>
		<th><%=array[1] %></th>
	</tr>
<% 
    		
        }
}
%>

	<tr>
		<th colspan="3" align="center">총 학점</th>
		<th align="center" style="color: red;"><%=checkscore %></th>
	</tr>

</table>
<a href="./main.jsp?pagefile=result"> <input type="submit" value="신청">
</a>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_1_결과</title>
</head>
<body>

<%
// 입력 횟수와 입력 숫자의 값을  초기화해 준다.
int time = 0;
String text= "0";

 //라디오 버튼을 선택하지 않았을 때
if(request.getParameter("aa")== null)
{
	out.print("선택 하지 않았습니다.");

}

// while문 버튼을 선택하였을 때 
else if (request.getParameter("aa").equals("while"))
{
	
	
	int time1 = Integer.parseInt(request.getParameter("time"));
	String text1= request.getParameter("whattext");

	out.print("이름 :" + request.getParameter("name"));
	out.print("<br>");
	out.print("학번 :" + request.getParameter("S_number"));
	out.print("<br>");
	out.print("while 문 선택!");
	out.print("<br>");


	for(int i = 0 ; i < time1; i++)
	{
		
		out.print(request.getParameter("whattext")); 
		
		
	}
	
}
//for문 버튼을 선택하였을 때 
else
{
	int time2 = Integer.parseInt(request.getParameter("time"));
	String text2= request.getParameter("whattext");

	out.print("이름 :" + request.getParameter("name"));
	out.print("<br>");
	out.print("학번 :" + request.getParameter("S_number"));
	out.print("<br>");
	out.print("for문 선택!");
	out.print("<br>");
	
	for(int i = 0 ; i < time2; i++)
{
	out.print(request.getParameter("whattext")); 
	out.print("<br>");
}
}
%>
<br>  
</body>
</html>
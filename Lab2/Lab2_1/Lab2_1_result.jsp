<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab2_1_���</title>
</head>
<body>

<%
// �Է� Ƚ���� �Է� ������ ����  �ʱ�ȭ�� �ش�.
int time = 0;
String text= "0";

 //���� ��ư�� �������� �ʾ��� ��
if(request.getParameter("aa")== null)
{
	out.print("���� ���� �ʾҽ��ϴ�.");

}

// while�� ��ư�� �����Ͽ��� �� 
else if (request.getParameter("aa").equals("while"))
{
	
	
	int time1 = Integer.parseInt(request.getParameter("time"));
	String text1= request.getParameter("whattext");

	out.print("�̸� :" + request.getParameter("name"));
	out.print("<br>");
	out.print("�й� :" + request.getParameter("S_number"));
	out.print("<br>");
	out.print("while �� ����!");
	out.print("<br>");


	for(int i = 0 ; i < time1; i++)
	{
		
		out.print(request.getParameter("whattext")); 
		
		
	}
	
}
//for�� ��ư�� �����Ͽ��� �� 
else
{
	int time2 = Integer.parseInt(request.getParameter("time"));
	String text2= request.getParameter("whattext");

	out.print("�̸� :" + request.getParameter("name"));
	out.print("<br>");
	out.print("�й� :" + request.getParameter("S_number"));
	out.print("<br>");
	out.print("for�� ����!");
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

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


<h1>������û�ϱ�</h1>
<table border="1">
	<tr>
		<th>��ȣ</th>
		<th>������ ����</th>
		<th>����</th>
		<th>�г�</th>
	</tr>
<%
//üũ�� �� ����
int checkscore= 0 ; 
String[] subjects = request.getParameterValues("sub");

//������ ��� ���� ������ 
if(subjects != null)
{ 
    	for(int i = 0 ; i < subjects.length ; i ++)
    	{ 
    		//, �� �������� split
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
		<th colspan="3" align="center">�� ����</th>
		<th align="center" style="color: red;"><%=checkscore %></th>
	</tr>

</table>
<a href="./main.jsp?pagefile=result"> <input type="submit" value="��û">
</a>

</body>
</html>

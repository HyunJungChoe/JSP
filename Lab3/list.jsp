
<!--201807025 ������, LAB3 ,������ : 2019-0405 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">

//üũ �ڽ� ���� �Լ� 
function Checkbox(){ 
	
	var checkboxes = document.querySelectorAll('input[name=sub]:checked'), values=[];
	Array.prototype.forEach.call(checkboxes, function(el){
		values.push(el.value);
	});
	
	//���̰� 0 �� �� 
	if(values.length == 0){ 
		alert('�ƹ��͵� �������� �ʾҽ��ϴ�. �ϳ� �̻��� ���������� üũ�� �ּ���.');
		return false;
	}
	return true;
}


</script>
</head>

<!--  �α��� �� �������¸� �����ش�.  -->
<%if(session.getAttribute("id")==null){ %> 
<h1>��������</h1>

<table border="1" width= "100%">
<tr>
	<th>�����ڵ�</th>
	<th>�����</th>
	<th>�г�</th>
	<th>����</th>
</tr>
<tr>
	<td>IC015-A</td>
	<td>�� �ý��� ���� �� ����</td>
	<td>3</td>
	<td>3</td>
</tr>
<tr>
	<td>IC147-A</td>
	<td>�ڹٱ���������α׷���</td>
	<td>2</td>
	<td>3</td>
</tr>
<tr>
	<td>IC136-A</td>
	<td>��ǻ�����α׷��ֱ���</td>
	<td>1</td>
	<td>3</td>
</tr>
<tr>
	<td>IC066-A</td>
	<td>�ü��</td>
	<td>3</td>
	<td>3</td>
</tr>
</table>
<% }

else { 
// �α��� �� ������û�� �� �� �� �ִ�. 
%>

<h1>������û�ϱ�</h1>

<form action="./main.jsp?pagefile=apply" method="POST">

<table border="1" width= "100%">
<tr>
	<th>�����ڵ�</th>
	<th>�����</th>
	<th>�г�</th>
	<th>����</th>
	<th>����</th>
</tr>
<tr>
	<td>IC015-A</td>
	<td>�� �ý��� ���� �� ����</td>
	<td>3</td>
	<td>3</td>
	<td><input type="checkbox" value="�� �ý��� ���� �� ����,3,3" name="sub"></td>
</tr>
<tr>
	<td>IC147-A</td>
	<td>�ڹٱ���������α׷���</td>
	<td>2</td>
	<td>3</td>
	<td><input type="checkbox" value="�ڹٱ���������α׷���,2,3" name="sub"></td>
</tr>
<tr>
	<td>IC136-A</td>
	<td>��ǻ�����α׷��ֱ���</td>
	<td>1</td>
	<td>3</td>
	<td><input type="checkbox" value="��ǻ�����α׷��ֱ���,1,3" name="sub"></td>
</tr>
<tr>
	<td>IC066-A</td>
	<td>�ü��</td>
	<td>3</td>
	<td>3</td>
	<td><input type="checkbox" value="�ü��,3,3" name="sub"></td>
</tr>
</table>


<p align="right"><input type="submit" onclick='return Checkbox();' value="������û" /></p>
</form>

<%}%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 201807025 ������, LAB4  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<script type="text/javascript">

// Ŀ�ǿ� ����� ���� ���� �ʾ��� �� �˸��� �ش�. 
function check(){
	var frm = document.getElementById("form");
 
	// Ŀ�� ���� ����
	if(frm.coffee.value==null || frm.coffee.value=="")
	{
		alert("Ŀ�Ǽ������ּ���");
		return false;
	}
	
	//������ ���� ���� 
	if (frm.size.value==null || frm.size.value=="�������ּ���")
	{
		alert("������ �������ּ���.");
		return false;
	}
	
	// �� ��������
	return true;
}

// ��� �Լ� 
function freset(){
	var answer = confirm("����Ͻðڽ��ϱ�?");
	if (answer==true)
		{
		alert('��ҵǾ����ϴ�.');
		return true;
		}
	
	else
	return false;
	
}


</script>



<form action ="Lab4_result.jsp" id = "form" method ="post" onsubmit="return check()" onreset="return freset()" >
201807025 ������ 
<h1>���� �ֹ��ϱ�</h1>
<hr>

Ŀ�� ���� <br>
<input type ="radio" name = "coffee" value="�Ƹ޸�ī��">�Ƹ޸�ī��
<input type ="radio" name = "coffee" value="ī���">ī���
<input type ="radio" name = "coffee" value="ī���ī">ī���ī 
<br>

�ɼ� <br>

<input type ="radio" name = "option" value="hot" checked>hot
<input type ="radio" name = "option" value="ice">ice
<br>

������ <br>

<select name="size">
<option>�������ּ���</option>

<option value="S">S</option>
<option value="M">M</option>
<option value="L">L</option>
</select>
<!-- �ֹ��ϱ�, ����ϱ� ��ư -->
<br>
<input type="submit" value="�ֹ��ϱ�" >
<input type ="reset" value="���" >
</form>
</body>
</html>
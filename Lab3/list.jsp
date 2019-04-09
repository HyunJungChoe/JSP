
<!--201807025 최현정, LAB3 ,제출일 : 2019-0405 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">

//체크 박스 조건 함수 
function Checkbox(){ 
	
	var checkboxes = document.querySelectorAll('input[name=sub]:checked'), values=[];
	Array.prototype.forEach.call(checkboxes, function(el){
		values.push(el.value);
	});
	
	//길이가 0 일 때 
	if(values.length == 0){ 
		alert('아무것도 선택하지 않았습니다. 하나 이상은 수강과목을 체크해 주세요.');
		return false;
	}
	return true;
}


</script>
</head>

<!--  로그인 전 개설강좌를 보여준다.  -->
<%if(session.getAttribute("id")==null){ %> 
<h1>개설강좌</h1>

<table border="1" width= "100%">
<tr>
	<th>강좌코드</th>
	<th>과목명</th>
	<th>학년</th>
	<th>학점</th>
</tr>
<tr>
	<td>IC015-A</td>
	<td>웹 시스템 설계 및 개발</td>
	<td>3</td>
	<td>3</td>
</tr>
<tr>
	<td>IC147-A</td>
	<td>자바기반응용프로그래밍</td>
	<td>2</td>
	<td>3</td>
</tr>
<tr>
	<td>IC136-A</td>
	<td>컴퓨터프로그래밍기초</td>
	<td>1</td>
	<td>3</td>
</tr>
<tr>
	<td>IC066-A</td>
	<td>운영체제</td>
	<td>3</td>
	<td>3</td>
</tr>
</table>
<% }

else { 
// 로그인 후 수강신청을 할 수 가 있다. 
%>

<h1>수강신청하기</h1>

<form action="./main.jsp?pagefile=apply" method="POST">

<table border="1" width= "100%">
<tr>
	<th>강좌코드</th>
	<th>과목명</th>
	<th>학년</th>
	<th>학점</th>
	<th>선택</th>
</tr>
<tr>
	<td>IC015-A</td>
	<td>웹 시스템 설계 및 개발</td>
	<td>3</td>
	<td>3</td>
	<td><input type="checkbox" value="웹 시스템 설계 및 개발,3,3" name="sub"></td>
</tr>
<tr>
	<td>IC147-A</td>
	<td>자바기반응용프로그래밍</td>
	<td>2</td>
	<td>3</td>
	<td><input type="checkbox" value="자바기반응용프로그래밍,2,3" name="sub"></td>
</tr>
<tr>
	<td>IC136-A</td>
	<td>컴퓨터프로그래밍기초</td>
	<td>1</td>
	<td>3</td>
	<td><input type="checkbox" value="컴퓨터프로그래밍기초,1,3" name="sub"></td>
</tr>
<tr>
	<td>IC066-A</td>
	<td>운영체제</td>
	<td>3</td>
	<td>3</td>
	<td><input type="checkbox" value="운영체제,3,3" name="sub"></td>
</tr>
</table>


<p align="right"><input type="submit" onclick='return Checkbox();' value="수강신청" /></p>
</form>

<%}%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 201807025 최현정, LAB4  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<script type="text/javascript">

// 커피와 사이즈를 선택 하지 않았을 때 알림을 준다. 
function check(){
	var frm = document.getElementById("form");
 
	// 커피 선택 안함
	if(frm.coffee.value==null || frm.coffee.value=="")
	{
		alert("커피선택해주세요");
		return false;
	}
	
	//사이즈 선택 안함 
	if (frm.size.value==null || frm.size.value=="선택해주세요")
	{
		alert("사이즈 선택해주세요.");
		return false;
	}
	
	// 다 선택했음
	return true;
}

// 취소 함수 
function freset(){
	var answer = confirm("취소하시겠습니까?");
	if (answer==true)
		{
		alert('취소되었습니다.');
		return true;
		}
	
	else
	return false;
	
}


</script>



<form action ="Lab4_result.jsp" id = "form" method ="post" onsubmit="return check()" onreset="return freset()" >
201807025 최현정 
<h1>음료 주문하기</h1>
<hr>

커피 종류 <br>
<input type ="radio" name = "coffee" value="아메리카노">아메리카노
<input type ="radio" name = "coffee" value="카페라떼">카페라떼
<input type ="radio" name = "coffee" value="카페모카">카페모카 
<br>

옵션 <br>

<input type ="radio" name = "option" value="hot" checked>hot
<input type ="radio" name = "option" value="ice">ice
<br>

사이즈 <br>

<select name="size">
<option>선택해주세요</option>

<option value="S">S</option>
<option value="M">M</option>
<option value="L">L</option>
</select>
<!-- 주문하기, 취소하기 버튼 -->
<br>
<input type="submit" value="주문하기" >
<input type ="reset" value="취소" >
</form>
</body>
</html>
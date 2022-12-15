<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function itemSelected() {
		// fruits3 셀렉트박스 항목에서 선택된 항목 값(value 속성) 출력하기
		alert(document.fr.fruits3.value);
	}
	
	function itemSelected2(value) {
		// 아무것도 선택하지 않았을 경우(= 과일을 선택하세요 항목이 선택되어 있을 경우)
		// => alert() 함수를 사용하여 "과일 선택 필수!" 문자열 출력
		// => 이 때, 아무것도 선택하지 않았다 = 널스트링("") 값이 value 로 전달되었다
// 		if(value == "") {
// 			alert("과일 선택 필수!");
// 		} else {
// 			alert(value + " : 선택됨!");
// 		}
		
		// 만약, value 값을 전달받지 않았을 경우
		// 1. document.fr.fruits4.value == "" 인지 판별
		// 2. document.fr.fruits4.options[0].selected 인지 판별
		//    => 셀렉트박스 객체의 options 배열에 접근하여 
		//       첫번째 OPTION 태그 항목의 selected 값이 true 인지 판별
		if(document.fr.fruits4.options[0].selected) { // == true 생략
			alert("과일 선택 필수!");
		}
	}
	
	function check() {
		if(document.fr.fruits4.options[0].selected) { // == true 생략
			alert("과일 선택 필수!");
			document.fr.fruits4.focus(); // 해당 셀렉트박스에 포커스 요청
		} else { // 과일이 선택되었을 경우
			document.fr.submit(); // 현재 폼에 대한 submit 동작 수행
		}
	}
</script>
</head>
<body>
	<h1>test24.jsp</h1>
	<form action="a.jsp" method="get" name="fr">
		<select name="fruits">
			<option value="Apple">사과</option>
			<option value="Banana">바나나</option>
			<option value="Lemon">레몬</option>
		</select>
		<hr>
		<select name="fruits2">
			<option value="Apple">사과</option>
			<option value="Banana" selected="selected">바나나</option> <!-- 기본 선택 -->
			<option value="Lemon" disabled="disabled">레몬</option>
		</select>
		<hr>
		<!-- 셀렉트박스 항목 변경을 감지하는 이벤트 : onchange -->
		<!-- 셀렉트박스 항목이 변경되면 선택된 항목값(value)을 itemSelected() 함수에서 출력하기 -->
		<select name="fruits3" onchange="itemSelected()">
			<option value="Apple">사과</option>
			<option value="Banana">바나나</option>
			<option value="Lemon">레몬</option>
		</select>
		<hr>
		<!-- 함수 호출 시 this.value 값 전달할 경우 선택된 항목의 value 값 전달 -->
		<select name="fruits4" onchange="itemSelected2(this.value)">
			<option value="">과일을 선택하세요</option>
			<option value="Apple">사과</option>
			<option value="Banana">바나나</option>
			<option value="Lemon">레몬</option>
		</select>
		<br>
		<input type="button" value="확인" onclick="check()">
	</form>
</body>
</html>















<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	/*
	css("속성명", "값") 형식으로 호출 시 해당 속성값을 변경할 수 있으며
	css("속성명") 형식으로 호출 시 해당 속성에 대한 속성값을 가져올 수 있다.
	=> 단, 해당 선택자 요소가 복수개일 경우 가장 첫번째 요소에 대한 값에만 접근
	
	< css() 함수 내에서 구현하는 익명 함수 >
	- 대상 선택자를 갖는 요소가 복수개 일 때 각각의 요소에 css() 함수를 각각 동작시킬 때 사용
	  (css() 함수가 아닌 다른 함수도 동일한 방법으로 적용 가능)
	- $("선택자").css("속성명", function() {}) 형식으로 구현
	  => 해당 선택자의 속성에 대한 반복 수행
	  => 이 때, 익명 함수 내의 파라미터 설정에 따라 각각 다른 값이 자동으로 전달됨
	  
	1. $("선택자").css("속성명", function(index) {})
	   - 해당 선택자에 대한 지정된 속성값에 차례대로 반복 접근
	   - 이 때, 익명 함수 파라미터인 index 에 해당 요소의 인덱스가 자동으로 전달됨
	
	2. $("선택자").css("속성명", function(index, value) {})
	   - 해당 선택자에 대한 지정된 속성값에 차례대로 반복 접근
	   - 이 때, 익명 함수 파라미터인 index 에 해당 요소의 인덱스가 자동으로 전달되고,
	     value 에 해당 요소의 속성값이 자동으로 전달됨
	*/
	
	$(function() {
		// h3 태그 중 마지막 요소의 color 속성값을 red 로 변경
		$("h3:last").css("color", "red");
		
		// 첫번째 h3 태그의 color 속성값을 가져와서 변수에 저장 후 출력하기
		var h3Color = $("h3").css("color"); // 복수개의 h3 태그가 있으므로 첫번째 태그만 접근됨
// 		alert(h3Color); // rgb(0, 0, 0) 출력됨(검정색 = BLACK 색상값)
		
		// 첫번째 h3 태그의 color 속성값을 blue 로 변경 후 색상값 출력
		$("h3:first").css("color", "blue"); // h3:first 대신 h3 만 지정 가능
// 		alert($("h3:first").css("color")); // rgb(0, 0, 255) 출력됨
		
		// =================================================================================================================
		// 복수개의 h3 태그에 차례대로 접근하여 해당 요소의 인덱스 가져와서 출력
// 		$("h3").css("color", function() { // h3 태그 3개에 대해 차례대로 접근
// 			alert("h3 태그 접근");
// 		});

// 		$("h3").css("color", function(index) { // h3 태그에 차례대로 접근하면서 해당 요소의 인덱스를 index 변수에 전달(저장)  
// 			alert("h3 태그 인덱스 : " + index); // 0, 1, 2 인덱스 값 차례대로 출력됨
// 		});

// 		$("h3").css("color", function(index, value) {
// 			// 첫번째 파라미터(index) : 해당 요소의 인덱스(0부터 시작) 차례대로 전달(= 1씩 증가 = 0 1 2)
// 			// 두번째 파라미터(value) : 인덱스에 해당하는 요소의 지정된 속성값 차례대로 전달(BLUE, BLACK, RED 의 RGB 값)
// 			alert("h3 태그 인덱스 : " + index + "\nh3 태그 color 속성값 : " + value);
// 		});
		
		// -------------------------------------------------------------------
		// 익명 함수를 구현한 css() 함수 활용법
		var colorValue = ["GREEN", "MAGENTA", "SKYBLUE"]; // 글자색을 저장하는 배열 생성
		var backgroundColorValue = ["YELLOW", "BLACK", "RED"]; // 배경색을 저장하는 배열 생성
		
		// h3 태그의 css 함수를 호출하여 color 속성에 차례대로 접근(파라미터로 인덱스값 지정)
// 		$("h3").css("color", function(index) {
// 			// 익명 함수 내에서 return 문을 사용하여 특정 값 리턴 시 해당 요소의 속성값 변경 가능
// // 			return "BLUE"; // 모든 h3 태그의 color 속성값을 "BLUE" 로 변경

// 			// colorValue 배열 내에 저장된 색상(속성값)을 익명 함수 파라미터인 index 를 활용하여 접근한 뒤
// 			// 각 요소의 color 속성값을 차례대로 변경 가능
// 			return colorValue[index]; // index 값이 0, 1, 2 가 전달되므로 배열의 인덱스로 활용 가능
// 			// => 즉, "GREEN", "MAGENTA", "SKYBLUE" 값이 차례대로 return 문을 통해 전달됨
// 		});
		
		// h3 태그의 css() 함수를 호출하여 background 속성에 차례대로 접근 후
		// backgroundColorValue 배열값을 활용하여 배경색 변경
// 		$("h3").css("background", function(index) {
// 			return backgroundColorValue[index];
// 		});
		
		// 동일한 대상에 복수개의 속성을 변경하는 경우 한 문장으로 결합 가능
		// $("선택자").css({속성1:function(index){}, 속성2:function(index){}});
		$("h3").css({
			// 변경할 속성명:function(){} 형태로 구현하며, 각 속성끼리는 콤마(,)로 구분
			color:function(index) {
				return colorValue[index];
			},
			background:function(index) {
				return backgroundColorValue[index];
			}
		});
		
	});
</script>
</head>
<body>
	<h1>jQuery/test4.jsp</h1>
	<h3>제목-1</h3>
	<h3>제목-2</h3>
	<h3>제목-3</h3>
</body>
</html>
















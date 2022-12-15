<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 외부 자바스크립트 파일인 test7.js 파일을 포함시키기 -->
<script type="text/javascript" src="test7.js"></script>
<script type="text/javascript">
	// 1. 파라미터도 없고, 리턴값도 없는 함수 연습
	// ------------------------------------------------------------------------
	// 함수가 호출되면 "함수 호출됨!" 문자열을 출력하는 showMessage() 함수 정의
	function showMessage() {
		alert("함수 호출됨!");
	}
	
	// 정의된 showMessage() 함수 호출 => 파라미터 없음(소괄호 내부에 아무 데이터도 전달하지 않음)
// 	showMessage();
	// ------------------------------------------------------------------------------------------
	// printNum() 함수 정의
	// => 1 ~ 10 까지의 정수를 반복문(for문)으로 출력
	function printNum() {
		for(var i = 1; i <= 10; i++) {
			document.write(i + " ");
		}
	}
	
// 	printNum();
	
	// sum() 함수 정의
	// => 1 ~ 10 까지의 합을 반복문(for문)으로 계산하여 결과값(55)을 출력
	function sum() {
		// 합계를 누적할 변수(= 누적 변수) 선언 및 초기화
		var total = 0;
		
		for(var i = 1; i <= 10; i++) {
			// 제어변수 i값(1 ~ 10 까지 1씩 증가하는 값)을 누적 변수 total 에 누적(+=)
			total += i;
// 			document.write("합계(total) = " + total + "<br>");
			// => for문 내에서 누적변수 출력 시 합계 계산 과정 볼 수 있음
		}
		
		// for문 종료 후 누적변수 출력 시 합계 계산 결과 볼 수 있음
		document.write("합계(total) = " + total + "<br>");
	}
	
	sum();
	
	// 외부 자바스크립트(test7.js) 내의 checkNumGame() 함수 호출
	checkNumGame();
	
	
</script>
</head>
<body>

</body>
</html>












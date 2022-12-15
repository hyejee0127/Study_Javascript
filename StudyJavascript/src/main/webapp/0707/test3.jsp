<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	if문
	- 자바에서의 if문과 동일
	- 특정 조건에 따라 문장을 실행하는 조건문
	- 조건식은 반드시 결과가 true 또는 false 인 식만 사용 가능하며, 변수도 사용 가능함
	
	1. 단일 if문
	- if문에 주어진 조건을 판별하여 true 일 경우 지정된 블럭 내의 문장들을 수행하는 if문
	
	< 기본 문법 >
	if(조건식) {
		// 조건식의 판별 결과가 true 일 때 실행할 문장들...
	}
	*/
	
	var num = -10;
	// 변수 num 의 값이 0보다 큰가?
	if(num > 0) { // num > 0 연산 수행 결과(true or false)를 if문을 통해 판별
		// num 이 0보다 클 경우에만 실행되는 문장을 기술
		document.write(num + " : 0 보다 크다!<br>");
		document.write("그러므로, 이 문장은 웹브라우저에 표시된다!<br>");
	}

	// if문의 조건식 판별 결과가 true 또는 false 모두 중괄호 밖의 문장은 무조건 실행됨 
	document.write("이 문장은 if문 판별 결과와 상관없이 실행된다!");
	document.write("<hr>");
	// -------------------------------------------------------------------------
	/*
	2. if ~ else 문
	- if문에 주어진 조건을 판별하여 true 일 경우 if 문의 블럭 내의 문장들을 수행하고,
	  false 일 경우 else 문의 블럭 내의 문장들을 수행하는 if문
	
	< 기본 문법 >
	if(조건식) {
		// 조건식의 판별 결과가 true 일 때 실행할 문장들...
	} else {
		// 조건식의 판별 결과가 false 일 때 실행할 문장들...		
	}
	*/
	var num2 = -10;
	
	if(num2 > 0) { // num2 가 0보다 클 경우
		// num 이 0보다 클 경우에만 실행되는 문장을 기술
		document.write(num2 + " : 0 보다 크다!<br>");
		document.write("그러므로, 0보다 클 경우 이 문장은 웹브라우저에 표시된다!<br>");
	} else { // num2 가 0보다 클 경우가 아닐 경우(0보다 크지 않을 경우 = 작거나 같다)
		// num 이 0보다 크지 않을 경우에만 실행되는 문장을 기술
		document.write(num2 + " : 0 보다 크지 않다!<br>");
		document.write("그러므로, 0보다 크지 않을 경우 이 문장은 웹브라우저에 표시된다!<br>");
	}
	
	// if문의 조건식 판별 결과가 true 또는 false 모두 중괄호 밖의 문장은 무조건 실행됨 
	document.write("이 문장은 if문 판별 결과와 상관없이 실행된다!");
	document.write("<hr>");
	// ----------------------------------------------------------------------------------------
	// 사용자의 나이를 입력받는 문장 작성(메세지 : "나이를 입력하세요")
	// => 입력되는 나이를 변수 age 에 리턴받아 저장 후 출력
// 	var age = prompt("나이를 입력하세요");
// 	document.write("나이 : " + age);
	
	// 입력받은 나이에 대해 정상 여부 판별(0 이상일 경우 "정상" 출력, 아니면 "잘못된 입력" 출력)
// 	if(age >= 0) {
// 		document.write(age + " : 정상<br>");
// 	} else {
// 		document.write(age + " : 잘못된 입력<br>");
// 	}
	// ----------------------------------------------------------------------------------------
	/*
	2. if ~ else if 문(= 다중 else if 문)
	- if문에 주어진 조건을 판별하여 true 일 경우 if 문의 블럭 내의 문장들을 수행하고,
	  false 일 경우 다음 if문의 조건을 판별하여 또 다시 true 일 경우 
	  else if 문의 블럭 내의 문장들을 수행하고,
	  모든 조건식 판별 결과가 false 이면 else 문의 블럭 내의 문장들을 수행하는 if문
	
	< 기본 문법 >
	if(조건식1) {
		// 조건식1 의 판별 결과가 true 일 때 실행할 문장들...
	} else if(조건식2) {
		// 조건식2 의 판별 결과가 true 일 때 실행할 문장들...
	} else if(조건식n) {
		// 조건식n 의 판별 결과가 true 일 때 실행할 문장들...
	} else {
		// 위의 모든 조건식의 판별 결과가 false 일 때 실행할 문장들...(else 문은 생략 가능함)		
	}
	*/
	var num3 = -10;
		
	if(num3 > 0) {
		document.write(num3 + " : 0 보다 크다!<br>");
	} else if(num3 < 0) {
		document.write(num3 + " : 0 보다 작다!<br>");
	} else {
		// num3 가 0보다 크지도 않고, 작지도 않을 경우 실행할 문장
		document.write(num3 + " : 0 이다!<br>");
	}
	
	document.write("<hr>");
	
	var age = 35;
	
	// 나이가 10대인지 판별(10대입니다! 출력)
	// + 나이가 20대인지 판별(20대입니다! 출력)
	// + 모두 아닐 경우(나머지입니다! 출력)
// 	if(age >= 10 && age <= 19) {
// 		document.write(age + " : 10대입니다!<br>");
// 	} else {
// 		document.write(age + " : 10대가 아닙니다!<br>");
// 	}
	
	if(age >= 10 && age <= 19) {
		document.write(age + " : 10대입니다!<br>");
	} else if(age >= 20 && age <= 29) {
		document.write(age + " : 20대입니다!<br>");
	} else { // 10대도 아니고, 20대도 아닐 경우
		document.write(age + " : 나머지입니다!<br>");
	}
	
</script>
</head>
<body>
	
</body>
</html>














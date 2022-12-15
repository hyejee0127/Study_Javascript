<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	2. while 문
	- for문과 달리 조건식만 기술하며, 나머지 초기식과 증감식은 개발자가 적절하게 설정하거나
	  필요에 따라서는 생략도 가능함
	
	[ 기본 문법 ]
	초기식; // 초기식의 위치는 while 문보다 앞쪽(윗쪽)에 위치해야한다! (생략 가능)
	while(조건식) {
		// 조건식 판별 결과가 true 일 때 반복 실행할 문장들...
		증감식; // 단, 증감식의 위치는 블럭 내에서 유동적일 수 있다! (생략 가능)
	}
	*/
	
	// for문을 사용하여 "Hello, World!" 3번 반복 출력하기
	for(var i = 1; i <= 3; i++) {
		document.write(i + " : Hello, World!<br>");
	}
	
	document.write("<hr>");
	// 위의 for문을 while문으로 변환
	// => 초기식(var i = 1) 은 while 문 위로 이동
	// => 조건식은 그대로
	// => 증감식은 while문 블럭 내로 이동(실행문 다음에 증감식이 실행됨)
	var i = 1; // 초기식
	while(i <= 3) { // 조건식
		document.write(i + " : Hello, World!<br>"); // 실행문
		i++; // 증감식
	}
	
	document.write("<hr>");
	
	// 정수 1개를 입력받아 변수 num 에 저장 후 while 문을 사용하여 1 ~ num 까지 숫자 차례대로 출력
	var num = prompt("정수를 입력하세요");
	var i = 1;
	while(i <= num) {
// 		document.write(i + " ");

		// if문을 활용하여 num 값이 홀수일 때 "x : 홀수!" 출력하고, 아니면 "x : 짝수!" 출력
		if(i % 2 == 1) {
			document.write(i + " : 홀수!<br>");
		} else { // else if(num % 2 == 0) 기술해도 동일함
			document.write(i + " : 짝수!<br>");
		}

		i++;
	}
	
</script>
</head>
<body>
	
</body>
</html>










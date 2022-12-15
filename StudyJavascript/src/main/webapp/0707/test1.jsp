<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 이 주석은 자바스크립트 한 줄 주석 처리
	/*
	이 주석은 자바스크립트에서
	여러 줄 주석 처리
	*/
	
	/*
	[ 자바스크립트 변수 사용법 ]
	- 기본 문법 : 데이터타입 변수명 = 값;
	- 자바의 데이터타입과 동일한 데이터타입을 사용하지 않음(동일한 타입도 존재함)
	- 문자(string), 숫자(number), 논리(boolean), 특수값 null 사용 가능
	  다만, 별도로 타입을 지정하지 않고 일반적인 공통 타입으로 변수 선언하여 사용하고
	  저장되는 데이터에 따라 각각의 변수의 타입이 자동으로 결정됨
	- 일반적으로 변수 선언 시 var 또는 let 또는 const 중 하나를 타입처럼 사용
	- 변수명 지정 시 자바 식별자 작성 규칙과 거의 동일한 규칙 적용됨
	ex) var num;
	    let num2;
	    const num3;
	*/
	
	// 변수 선언 및 다양한 데이터 저장
	var str = "자바스크립트"; // 문자열 저장 시 string 타입으로 취급됨
	var num = 100.5; // 숫자 저장 시 정수, 실수 구분 없이 number 타입으로 취급됨
	var b = true; // 논리값(true 또는 false) 저장 시 boolean 타입으로 취급됨
	
	// 주의! 특수한 타입
	var v1; // 변수 선언 시 아무 데이터도 지정하지 않을 경우 undefined 타입으로 취급됨
	var v2 = null; // 특수한 값인 null 값 저장도 가능
	
	// 특정 변수의 데이터타입을 확인하는 방법 : typeof 키워드 사용
	// => 기본 문법 : typeof 변수명 또는 typeof 데이터
	//                typeof(변수명) 또는 typeof(데이터)
// 	alert(str + " : " + typeof(str)); // 자바스크립트 : string
// 	alert(num + " : " + typeof(num)); // 100.5 : number(100 : number)
// 	alert(b + " : " + typeof(b)); // true : boolean
// 	alert(v1 + " : " + typeof(v1)); // undefined : undefined
// 	alert(v2 + " : " + typeof(v2)); // null : object
	// ==================================================================
	// 변수 사용 연습
	// document.write(출력할 데이터) 형식으로 함수 호출 시 웹페이지에 해당 내용 출력 가능
	var data = 100;
	document.write(data + " : " + typeof(data));
	
	// document.write() 함수로 HTML 태그도 그대로 사용 가능
	var data2 = "Hello, World!";
	document.write("<br>" + data2 + " : " + typeof(data2));
	
	// 변수 선언 시 var 대신 let 사용(기본 사용법은 var 과 동일함)
	let data3 = "Hello, World!";
	document.write("<br>" + data3 + " : " + typeof(data3));
	
	var data4; // 변수에 데이터가 저장되지 않았을 경우 undefined 값과 undefined 타입으로 설정됨
	document.write("<br>" + data4 + " : " + typeof(data4));
	// 변수에 다른 타입의 값을 저장하면 데이터타입이 변경됨
	data4 = 50; // number 타입으로 변경됨
	document.write("<br>" + data4 + " : " + typeof(data4));
	data4 = false;
	document.write("<br>" + data4 + " : " + typeof(data4));
	// ========================================================================================
	// var vs let
	// var 을 사용하여 변수 선언 시 동일한 이름의 변수를 다시 선언(중복)하더라도 사용 가능하며
	// 다른 타입의 데이터로 변경 시에도 아무런 문제 발생하지 않음
	var num1 = 10;
	document.write("<br>" + num1);
	// 기존에 선언된 num1 변수를 다시 선언하면서 다른 타입 데이터로 변경
	var num1 = "홍길동";
	document.write("<br>" + num1);
	// ------------------------------
	// let 를 사용하여 변수 선언 시 동일한 이름의 변수는 다시 선언 불가능(= 중복 불가)
	let num2 = 10;
	document.write("<br>" + num2);
	
	// 이 다음의 코드는 기존에 존재하는 num2 변수를 let 키워드로 다시 선언하는 코드이며
	// 변수 중복으로 인한 오류가 발생하므로 해당 코드를 실행할 경우 오류가 발생하여
	// 나머지 다른 코드도 모두 표시되지 못함
// 	let num2 = "홍길동"; // 오류 발생! 다른 스크립트도 동작하지 못함
// 	document.write("<br>" + num2);

	// num2 변수의 값 변경은 가능함
	num2 = 100;
	document.write("<br>" + num2);
	// ------------------------------
	// const 로 선언한 변수는 상수로 취급되어 저장된 값을 변경할 수 없음
	const num3 = 10;
	document.write("<br>" + num3);
	
	// num3 변수의 값 변경 시 오류 발생함
// 	num3 = 100; // 값 변경 불가능! => 현재 코드에서 오류 발생하며, 위의 다른 코드는 실행됨
// 	document.write("<br>" + num3);
</script>
<!-- 외부 자바스크립트 파일 불러오기 -->
<!-- <script> 태그 내에 src="불러올 자바스크립트 파일명" 속성을 사용하여 불러오기(포함하기) -->
<script type="text/javascript" src="test.js"></script>
<script src="../js/outter_test.js"></script>
</head>
<body>
	<hr>
	<!-- body 태그 내에서도 스크립트 사용 가능 -->
	<script type="text/javascript">
		document.write("이 곳은 body 영역 h1 태그 앞입니다.");
	</script>
	
	<h1>이 곳은 body 영역입니다.</h1>
	
	<script>
		document.write("이 곳은 body 영역 h1 태그 뒤입니다.");
	</script>
</body>
</html>











<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	- 함수와 연산자에 전달되는 값은 대부분 적절한 데이터타입(자료형)으로 자동 형변환 일어남
	  ex) prompt() 함수로 입력받은 숫자는 string 타입이며 number 타입과 연산 시 
	      number 타입으로 자동 형변환이 일어남(타입을 일치시킨 후 연산을 수행)
	- 상황에 따라 개발자가 의도한 타입으로 변환하는 것을 강제 형변환(= 명시적 형변환)이라고 함
	  => 자바스크립트에서 명시적 형변환을 수행하는 방법 : 타입(데이터)
	  => 주의! 자바에서 명시적 형변환과 소괄호 위치가 다름!
	  => 주의! 대표적인 타입 이름(string, number, boolean 등)의 첫글자를 대문자로 지정
	     ex) 변수 num 의 값을 string 타입으로 변환 시 : String(num)
	*/
	// 1. 문자열(string) 타입으로 변환
	// => 참고) alert() 함수 파라미터는 string 타입이며, 다른 타입 전달 시 자동으로 문자열로 변환됨
// 	alert(10); // 10은 number 타입이지만, alert() 함수에 전달 시 string 타입으로 자동 형변환 일어남
	// => 명시적 형변환 방법 : String(데이터)
	var value = 10; 
	document.write(value + " 의 변환 전 타입 : " + typeof(value) + "<br>"); // number 타입
	
	// number 타입인 value 변수의 타입을 문자열 타입(string) 으로 변환
	value = String(value);
	document.write(value + " 의 변환 후 타입 : " + typeof(value) + "<br>"); // string 타입
	
	// boolean 타입 변수 value2 에 데이터 저장 후 String 타입으로 변환
	var value2 = true; 
	document.write(value2 + " 의 변환 전 타입 : " + typeof(value2) + "<br>"); // boolean 타입
	
	// number 타입인 value 변수의 타입을 문자열 타입(string) 으로 변환
	value2 = String(value2);
	document.write(value2 + " 의 변환 후 타입 : " + typeof(value2) + "<br>"); // string 타입
	
	document.write("<hr>");
	// =====================================================================================
	// 2. 숫자(number) 타입으로 변환
	// - 수학과 관련된 함수 및 연산 과정 등에서 자동으로 number 타입으로 형변환 일어남
	//   ex) 문자열형숫자("10") / 문자열형숫자("2") = 두 수 모두 number 타입으로 변환 후 연산
	// - 명시적 형변환 방법 : Number(데이터)
	//   => 주로, prompt 함수 등을 사용하여 데이터 입력 시 문자로 취급되므로 숫자로 변환 시 사용
	document.write("10" / "2"); // string / string = number / number 로 변환 후 연산 수행
	document.write("<br>");
	
	var strNum = prompt("정수를 입력하세요");
	document.write(strNum + " 의 변환 전 타입 : " + typeof(strNum) + "<br>"); // string 타입
	
	// string 타입인 strNum 변수의 타입을 숫자 타입(number) 으로 변환
	var num = Number(strNum); // 변환 결과값(number 타입 값)을 새 변수 num 에 저장
	document.write(num + " 의 변환 후 타입 : " + typeof(num) + "<br>"); // number 타입
	
	// switch-case 문에서 case 문 사용 시 number 타입(숫자)을 비교하는 경우에
	// switch 문에 전달된 데이터가 string 타입일 경우 강제 형변환을 수행해야만 숫자로 비교 가능함
	switch (strNum) {
		// string 타입 strNum 을 전달 시 정수값이 저장되어 있어도 자동 형변환이 일어나지 않으므로
		// case 1 과 case 2 는 일치하지 않는다! 따라서, default 문이 실행된다!
		case 1 : document.write("1 입니다!<br>"); break;
		case 2 : document.write("2 입니다!<br>"); break;
		default : document.write("일치하는 데이터가 없습니다!<br>");
	}
	document.write("<hr>");
	switch (Number(strNum)) { // strNum 변수값을 number 타입으로 강제형변환하여 switch 문에 전달
		case 1 : document.write("1 입니다!<br>"); break;
		case 2 : document.write("2 입니다!<br>"); break;
		default : document.write("일치하는 데이터가 없습니다!<br>");
	}
	
	document.write("<hr>");
	// 주의! string 타입 데이터를 number 타입으로 변환 시
	// 숫자 데이터 외의 다른 데이터(문자 등)가 포함되어 있을 경우 변환 수행 시 NaN 값이 저장됨
	// => Nan = Not a Number 의 약자로 숫자가 아닌 데이터라는 의미로 사용됨
	//    즉, 변환 시 오류가 발생하는 것이 아니라 NaN 값이 저장됨
	var strNum2 = "1234a"; // 숫자만이 아닌 숫자와 문자가 섞여있는 데이터
	document.write(strNum2 + " 의 변환 전 타입 : " + typeof(strNum2) + "<br>");
	var num2 = Number(strNum2); // NaN 값 저장됨
	document.write(num2 + " 의 변환 후 타입 : " + typeof(num2) + "<br>");
</script>
</head>
<body>

</body>
</html>

















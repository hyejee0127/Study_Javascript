<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 2. 파라미터는 없고, 리턴값만 있는 함수 연습
	// ----------------------------------------------------------------------
	// 내장 함수 중 confirm() 또는 prompt() 함수 등이 리턴값이 있는 함수에 해당
// 	var inputData = prompt();
// 	document.write(inputData);

	// getMessage() 함수 정의 => "Hello, World!" 문자열을 리턴
	function getMessage() {
		return "Hello, World!";
// 		return 10;
	}
	
	// getMessage() 함수를 호출하여 리턴값을 전달받아 변수 result 에 저장 후 출력
	var result = getMessage(); // var result = "Hello, World!"; 와 동일
	document.write("리턴값 = " + result + ", 데이터타입 : " + typeof(result) + "<br>");
	
	document.write("<hr>");
	
	// --------------------------------------------------------------------------------
	// 1 ~ 10 까지의 합을 계산후 리턴하는 함수 getTotal() 정의
	// => 함수를 호출한 곳에서 리턴되는 결과값(55)을 전달받아 변수에 저장 후 출력
	function getTotal() {
		var total = 0; // 누적 변수
		
		for(var i = 1; i <= 10; i++) {
			total += i;
		}
		
		// 결과 출력 대신 결과값을 리턴
		return total;
	}
	
	// getTotal() 함수 호출 및 리턴값을 변수에 저장 후 출력
	var result = getTotal();
	document.write("1 ~ 10 까지의 합 = " + result + "<br>");
	
// 	document.write("1 ~ 10 까지의 합 = " + getTotal() + "<br>");
	
</script>
</head>
<body>

</body>
</html>











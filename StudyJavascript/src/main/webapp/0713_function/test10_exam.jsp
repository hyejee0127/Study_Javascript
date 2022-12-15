<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="test10.js"></script>
<script type="text/javascript">
	// 정수 1개(num)를 입력받아 1 ~ num 까지의 합을 계산하여 리턴하는 sum() 함수 정의
	function sum(num) {
		var total = 0;
		
		for(var i = 1; i <= num; i++) {
			total += i;
		}
		
		// 계산이 완료된 합계(total)를 리턴
		return total;
	}
	
	// sum() 함수를 호출하여 정수 1개를 전달하고, 리턴값을 받아 출력하기
	var result = sum(100);
	document.write("합계 = " + result);
	
	document.write("<hr>");
	// ==========================================================================
	// test10.js 파일의 파일의 login() 함수를 호출하여 전달인자로 아이디와 패스워드 전달
	// => login() 함수에서는 아이디와 패스워드를 저장된 변수의 아이디와 패스워드와 비교 후
	//    (이 때, 비교할 아이디는 "admin", 패스워드는 "1234" 로 가정)
	//    둘 다 일치할 경우 true, 아니면 false 리턴
	// => 함수 호출한 곳에서 리턴되는 값(true/false) 을 전달받아 변수(isSuccess)에 저장한 후
	//    isSuccess 값이 true 이면 "로그인 성공!" 을 출력하고, 아니면(false) "로그인 실패!" 출력
// 	var result = login("hong", "1111"); // 아이디, 패스워드 모두 틀렸으므로 false 값 리턴 예상
// 	var result = login("admin", "1111"); // 패스워드 틀렸으므로 false 값 리턴 예상
	var result = login("admin", "1234"); // 모두 일치하므로 true 값 리턴 예상

	// 로그인 수행 결과를 리턴받은 result 변수에 저장된 값에 대한 판별 작업 수행
	// => true 일 경우 "로그인 성공!" 출력, 아니면(false) "로그인 실패!" 출력
	if(result) { // result == true 와 동일
		document.write("로그인 성공!");
	} else {
		document.write("로그인 실패!");
	}
</script>
</head>
<body>

</body>
</html>
























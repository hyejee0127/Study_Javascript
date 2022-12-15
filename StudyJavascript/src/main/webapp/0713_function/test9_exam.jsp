<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="test9.js"></script>
<script type="text/javascript">
	// 3. 매개변수가 있는 함수 연습
	// 외부에서 문자열을 전달받아 출력하는 showMessage() 함수 정의
	function showMessage(data) {
		document.write(data + " : " + typeof(data) + "<br>");
	}
	
	// showMessage() 함수 호출 시 함수의 소괄호() 부분에 전달인자(전달할 데이터)를 명시
	showMessage("Hello, World!"); // Hello, World! : string
	showMessage(500); // 500 : number
	showMessage(true); // true : boolean
	showMessage(); // undefined : undefined
	
	document.write("<hr>");
	// --------------------------------------------------------------------------------
	// showMessage2() 함수 정의 => 매개변수 data 의 기본값을 "전달받은 데이터 없음" 으로 설정
	function showMessage2(data = "전달받은 데이터 없음") {
		document.write(data + " : " + typeof(data) + "<br>");
	}
	
	showMessage2(); // 전달받은 데이터 없음 : string
	showMessage2(20); // 20 : number  =>  전달인자를 전달할 경우 기본값은 무시됨
	// ================================================================================
	document.write("<hr>");
	// count() 함수 정의 => 매개변수 num 에 정수 1개를 전달받아 1 ~ num 까지 1씩 증가하면서 출력
	// ex) 10 전달 시 1 2 3 4 5 6 7 8 9 10 출력
	function count(num) {
		// for문을 사용하여 1 ~ num 까지 1씩 증가하면서 반복 => 값 출력
		for(var i = 1; i <= num; i++) {
			document.write(i + " ");
		}
	}
	
	// count 함수 호출
	count(5);
	// ================================================================================
	document.write("<hr>");
	// sum() 함수 정의 => 매개변수 num 에 정수 1개를 전달받아 1 ~ num 까지 합계를 계산하여 출력
	// ex) 10 전달 시 1 ~ 10 까지의 합 계산하여 결과 55 출력
	function sum(num) {
		var total = 0; // 누적변수
		
		for(var i = 1; i <= num; i++) {
			total += i; // 값 누적
		}
		
		document.write("1 ~ " + num + " 까지의 합 = " + total + "<br>");
	}
	
	sum(100);
	document.write("<hr>");
	// ================================================================================
	// 매개변수가 2개 이상인 함수
	// 이름(name)과 나이(age)를 전달받아 출력하는 함수 showMessage3() 함수 정의	
	function showMessage3(name, age) {
		document.write("이름 : " + name + ", 나이 : " + age + "<br>");
	}
	
	showMessage3("이연태", 20); // 이름(name)과 나이(age)를 전달하여 출력
	showMessage3("홍길동", 20);
	showMessage3("이순신", 44);
	document.write("<hr>");
	// ================================================================================
	// test9.js 파일의 login() 함수를 호출하여 전달인자로 아이디와 패스워드 전달
	// => login() 함수에서는 아이디와 패스워드를 저장된 변수의 아이디와 패스워드와 비교 후
	//    "로그인 성공!" 또는 "로그인 실패!" 출력하기
	//    이 때, 비교할 아이디는 "admin", 패스워드는 "1234" 로 가정
	login("hong", "1111"); // 아이디와 패스워드 모두 틀렸으므로 "로그인 실패!" 출력 예상
	login("admin", "1111"); // 패스워드가 틀렸으므로 "로그인 실패!" 출력 예상
	login("admin", "1234"); // 아이디와 패스워드가 일치하므로 "로그인 성공!" 출력 예상
</script>
</head>
<body>

</body>
</html>











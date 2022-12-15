<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	history 객체
	- window 객체의 하위객체이며, window 객체명은 주로 생략
	- 웹브라우저의 주소에 대한 방문 기록을 관리하는 객체
	- 브라우저를 통해 접속했던 웹사이트 주소 정보를 차례대로 저장하고 관리
	- 속성 : history.length
	  함수 : history.back(), history.forward(), history.go()
	*/
	function func1() {
		// 현재 웹브라우저에 저장된 방문기록 갯수(길이) 확인
		alert("현재 방문기록 갯수 : " + history.length);
	}

	function func2() {
		// 현재 웹페이지에서 이전페이지로 이동(= 뒤로 가기) => 1단계(중요!!!!)
		history.back(); // 많이 사용하는 함수
		// ex) 로그인 화면에서 아이디, 패스워드 입력 후 로그인 수행 시 실패했을 경우
		//     다시 이전페이지로 돌아가서 로그인 화면을 표시해야할 경우
	}

	function func3() {
		// 현재 웹페이지에서 다음페이지로 이동(= 앞으로 가기) => 1단계(중요!!!!)
		history.forward();
	}

	function func4() {
		// 현재 웹페이지에서 x번째 이전페이지로 이동 => x단계
		// => history.go() 함수에 음수값 x를 전달하여 x단계만큼 뒤로 
// 		history.go(-1); // history.back() 과 동일
		history.go(-2);
	}

	function func5() {
		// 현재 웹페이지에서 x번째 다음페이지로 이동 => x단계
		// => history.go() 함수에 양수값 x를 전달하여 x단계만큼 앞으로
// 		history.go(1); // history.forward() 와 동일
		history.go(2);
	}
	
</script>
</head>
<body>
	<h1>test15.jsp - history 객체</h1>
	<input type="button" value="방문기록 갯수 확인" onclick="func1()">
	<input type="button" value="이전페이지" onclick="func2()">
	<input type="button" value="다음페이지" onclick="func3()">
	<input type="button" value="2단계 이전페이지" onclick="func4()">
	<input type="button" value="2단계 다음페이지" onclick="func5()">
</body>
</html>
















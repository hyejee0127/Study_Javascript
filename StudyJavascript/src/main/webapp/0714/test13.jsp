<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	window 객체의 구성 요소
	1) 변수(window.변수명) - window.status, window.opener 등
	2) 함수(window.함수명()) - window.open(), window.close() 등
	*/
	function func1() {
		// window 객체의 open() 함수를 호출하여 새 창 열기
		// 기본 문법 - window.open("새창에서 표시할 페이지 URL", "창 이름", "창 옵션(크기, 위치 등)");
		//             => 새창에서 표시할 페이지는 필수, 나머지는 옵션("" 문자열 형태는 유지)
// 		window.open(); // 빈 페이지로 된 새 탭 열림(창 크기 미지정 시 새 탭으로 열림)
		window.open("", "", "width=300,height=300");
	}

	function func2() {
		// 특정 웹사이트를 새 창에서 열기(www.itwillbs.co.kr 페이지, 가로 600, 세로 600 픽셀)
// 		window.open("http://www.itwillbs.co.kr", "창이름", "width=600,height=600,scrollbars=yes");
		
		// test12.jsp 페이지를 새 창에서 열기
		window.open("test12.jsp", "창이름", "width=600,height=600,scrollbars=yes");
	}

	function func3() {
		// 현재 창 닫기
		window.close();
	}

	function func4() {
		// 새 창에서 test13_sub.jsp 페이지 표시하기
		window.open("test13_sub.jsp", "창이름", "width=600,height=600,scrollbars=yes");
	}
</script>
</head>
<body>
	<h1>test13.jsp - window 객체</h1>
	<input type="button" value="창 열기1" onclick="func1()">
	<input type="button" value="창 열기2" onclick="func2()">
	<input type="button" value="창 닫기" onclick="func3()">
	<input type="button" value="test13_sub.jsp 열기" onclick="func4()">
</body>
</html>












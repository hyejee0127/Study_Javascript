<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>document 객체</title>
<script type="text/javascript">
	/*
	document 객체
	- window 객체의 하위객체이며, window 객체명은 주로 생략
	- HTML 문서 정보(내용)를 관리하는 객체
	- 문서 정보 확인, 내용 변경 등의 작업 수행 가능
	- 속성 : title, bgColor, fgColor 등
	  함수 : write(), writeln(), getElementById() 등
	*/
	function func1() {
		// HTML 문서 제목(title 태그) 내용 확인
		alert(document.title);
	}

	function func2() {
		// HTML 문서 제목(title 태그) 내용 변경
		document.title = "title 변경함";
	}

	function func3() {
		// HTML 문서 색상 정보 출력(bgColor, fgColor 속성 활용)
		// => bgColor(background color = 배경색) : 주로, 화면의 바탕색
		// => fgColor(foreground color = 전경색) : 주로, 화면 위에 있는 글자색
		alert("bgColor : " + document.bgColor + ", fgColor : " + document.fgColor);
	}

	function func4() {
		/*
		HTML 문서 색상 정보 변경(bgColor, fgColor 속성값 변경)
		- 속성값으로 "색상명" 또는 "#RGB코드값" 등으로 지정
		- 색상명의 경우 "RED", "BLUE", "CYAN" 등의 실제 영문 색상명을 사용(대소문자 무관)
		  RGB 코드값의 경우 #RRGGBB 형태로 지정하며
		  각 자리마다 16진수(0 ~ 9 와 A ~ F 까지 16개의 숫자)를 사용하며
		  RED 2자리, GREEN 2자리, BLUE 2자리를 각각 00 ~ FF 까지의 범위를 사용하여 나타내고
		  각 색상은 빛의 3원색 원리로 취급되어 색상이 표현됨
		  즉, 모든 값을 최대치(FFFFFF)로 설정하면 흰색, 최소치(000000)로 설정하면 검정색
		*/
// 		document.bgColor = "RED"; // 배경색을 빨간색으로 지정
// 		document.fgColor = "YELLOW"; // 전경색(주로 텍스트)을 노란색으로 변경
// 		document.bgColor = "#FF0000"; // 배경색을 빨간색으로 지정
// 		document.fgColor = "#FFFF00"; // 전경색(주로 텍스트)을 노란색으로 변경

		// 배경색을 색상명을 사용하여 "SKYBLUE" 로 변경
		// 전경색을 코드값을 사용하여 파란색으로 변경
		document.bgColor = "skyblue";
		document.fgColor = "#0000FF";
	}
	
	// document.write() 함수를 사용하여 현재 문서 내용에 원하는 내용 추가 가능
	// => HTML 태그 형식으로 출력 가능
	document.write("<h1>test16.jsp - document 객체의 write() 함수</h1>");
	document.write("<h3>자바스크립트 로딩 시의 document.write() 함수</h3>");
	
	function func5() {
		// 함수 내에서 document.write() 함수 호출하면 이전 출력 내용은 모두 지워짐
		document.write("<h3>func5() 함수 내의 document.write() 함수</h3>");
	}
	
	function func6(color) {
		document.bgColor = color;
	}
</script>
</head>
<body>
<!-- 	<h1>test16.jsp - document 객체</h1> -->
	<input type="button" value="문서 제목 출력" onclick="func1()">
	<input type="button" value="문서 제목 변경" onclick="func2()">
	<input type="button" value="문서 배경색 출력" onclick="func3()">
	<input type="button" value="문서 배경색 변경" onclick="func4()">
	<input type="button" value="write() 함수" onclick="func5()">
	<hr>
	<input type="radio" name="bgColor" value="CYAN" onclick="func6('CYAN')">CYAN
	<input type="radio" name="bgColor" value="SKYBLUE" onclick="func6('SKYBLUE')">SKYBLUE
	<input type="radio" name="bgColor" value="MAGENTA" onclick="func6('MAGENTA')">MAGENTA
	<input type="radio" name="bgColor" value="GRAY" onclick="func6('GRAY')">GRAY
	<hr>
	<!-- 자바스크립트 함수 호출하여 파라미터값 전달 시 this.value 를 명시하면 value 속성값 전달 가능 -->
	<input type="radio" name="bgColor" value="CYAN" onclick="func6(this.value)">CYAN
	<input type="radio" name="bgColor" value="SKYBLUE" onclick="func6(this.value)">SKYBLUE
	<input type="radio" name="bgColor" value="MAGENTA" onclick="func6(this.value)">MAGENTA
	<input type="radio" name="bgColor" value="GRAY" onclick="func6(this.value)">GRAY
	
</body>
</html>
















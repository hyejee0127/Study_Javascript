<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	document 객체의 getElementById() 함수
	- id 선택자(태그 내의 id 속성)가 지정된 특정 태그에 접근하기 위해
	  해당 태그의 객체를 얻어오는 역할의 함수
	  => 지정된 id 선택자와 일치하는 태그의 요소를 객체 형태로 리턴
	- 함수 전달인자로 태그에 지정된 id 선택자의 속성값을 문자열로 전달
	ex) document.getElementById("header"); => "header" 라는 id 선택자를 갖는 태그를 객체로 리턴
	*/
	
	// body 내의 요소들을 제어하기 위해 window.onload 속성을 통해 body 영역 로딩 후 실행되도록 하기
	window.onload = function() { // body 태그 내의 요소가 로딩 완료된 시점에 호출되는 함수
		// h1 태그에 지정된 "header1" 이라는 id 선택자를 지정하여 해당 <h1> 태그 가져오기
		var header1 = document.getElementById("header1");
// 		alert(header1); // object HTMLHeadingElement
		
		// 리턴받은 HTMLHeadingElement 객체의 각 속성 제어 시 "header1" 선택자의 h1 태그만 제어 가능
		header1.style.background = "SKYBLUE";
		header1.innerHTML = "getElementById() 에 의한 접근";
		
		// ------------------------------------------------------------------
		var header2 = document.getElementById("header2");
		// 배경색 변경 => 색상코드값
		header2.style.background = "#FFCCCC";
		header2.innerHTML = "innerHTML 속성으로 텍스트 변경했습니다";
	}
	
	function func1() {
		// id 선택자가 "status" 인 태그(객체) 가져와서
		// 해당 객체의 HTML 태그를 "JSP 수업 시작!" 으로 변경
		var spanElement = document.getElementById("status");
// 		alert(spanElement); // HTMLSpanElement
		spanElement.innerHTML = "JSP 수업 시작!";
		spanElement.style.color = "BLUE";
	}
	
	function func2() {
		// id 선택자가 "status" 인 태그(객체) 가져와서
		// 해당 객체의 HTML 태그를 "JSP 수업 종료!" 로 변경
		var spanElement = document.getElementById("status");
// 		alert(spanElement); // HTMLSpanElement
		spanElement.innerHTML = "JSP 수업 종료!";
		spanElement.style.color = "RED";
	}
	
	function changeImage() {
		var imgElement = document.getElementById("img");
// 		alert(imgElement); // HTMLImageElement
// 		alert("이미지 가로 사이즈 : " + imgElement.width);
		imgElement.src = "dog.png";
	}
</script>
</head>
<body>
	<h1 id="header">test19.jsp</h1>
	<h1 id="header1">header-1</h1>
	<h1 id="header2">header-2</h1>
	<hr>
	<h3>JSP 수업 상태 : <span id="status"></span></h3>
	<input type="button" value="수업시작" onclick="func1()">
	<input type="button" value="수업종료" onclick="func2()">
	<hr>
	<img src="cat.png" width="150" height="150" id="img"><br>
	<input type="button" value="사진변경" onclick="changeImage()">
</body>
</html>
















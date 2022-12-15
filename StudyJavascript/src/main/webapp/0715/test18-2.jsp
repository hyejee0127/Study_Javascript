<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	document.title = "document 객체2";
	
// 	alert(document.head.childNodes.length);
	
	// 현재 위치에서는 body 영역 로딩 전이므로 document.body(HTMLBodyElement) 객체가 존재하지 않음
	// 따라서, body 영역에 대한 제어는 수행이 불가능하다!
// 	document.body.style.background = "GRAY"; // 실행되지 못하는 코드!

	// window 객체의 onload 속성에 함수선언문(익명함수)을 지정할 경우
	// 문서 내의 body 영역 로딩 완료 후 자동으로 함수가 호출됨
	window.onload = function() {
		alert("작업 - 1");
	}

	function func1() {
// 		alert("작업 - 1");
		// 이 함수는 body 태그의 onload 속성(이벤트)에 의해 호출되므로
		// body 태그 내의 모든 요소가 로딩된 후 자동으로 호출됨
		// 따라서, 작업-2 와 작업-3 스크립트가 실행된 후 작업-1 스크립트가 실행됨
		
		// 이 함수가 실행되는 시점에서는 body 태그 로딩이 끝난 후이므로
		// document.body 객체 접근이 가능한 시점이다!
		// 따라서, body 태그 내의 다양한 조작을 수행할 수 있다!
		document.body.style.background = "GRAY"; // 실행되지 못하는 코드!
		
		// document 객체의 getElementById() 함수를 사용하여 id 선택자를 지정하면
		// 해당 id 선택자를 갖는 태그 요소에 접근할 수 있다!
		// 가져온 객체(요소)의 innerHTML 속성을 활용하면 해당 요소에 HTML 태그 적용시킬 수 있음
		document.getElementById("insertPoint").innerHTML = "<h5>이 텍스트는 나중에 삽입된 텍스트 입니다.</h5>";
	}
</script>
</head>
<body>
	<h1>test18-2.jsp</h1>
	<div id="insertPoint"></div>
	<script>alert("작업 - 2");</script>
	<script>alert("작업 - 3");</script>
	<!-- body 영역의 로딩 완료 후 body 태그의 onload 속성에 대한 func1() 함수가 자동으로 호출됨 -->
	<h1>body 태그 내의 모든 요소 로딩 완료!</h1>
</body>
</html>










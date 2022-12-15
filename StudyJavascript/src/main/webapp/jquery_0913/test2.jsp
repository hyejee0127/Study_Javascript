<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery-3.6.1.js 라이브러리 등록 -->
<script src="../js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	/*
	[ jQuery 기본 사용법 ]
	- jQuery 라이브러리를 사용하기 위한 시작 문법 3가지
	  1) window.jQuery
	  2) jQuery
	  3) $             => 가장 많이 사용
	- jQuery 에서 문서 로딩 관련 이벤트 처리 시 load 또는 ready 이벤트 사용
	  => 주로, ready 이벤트를 더 많이 사용함
	- jQuery 에서 document 객체(HTML 문서 전체 관리 객체)에 대한 ready 이벤트 처리 방법 3가지
	  1) $(선택자).ready(함수) 형식으로 작성하는 방법
	  2) $(선택자).ready(function() { 함수 내에서 실행할 코드들...}) 형식으로 작성하는 방법
	  3) $(function() { 함수 내에서 실행할 코드들...}}) 형식으로 작성하는 방법
	  => 상황에 따라 2번 또는 3번 방법을 가장 많이 사용
	*/
	
	// 1. $(선택자).ready(함수) 형식으로 작성하는 방법
	// => 별도의 함수를 정의하고 jQuery 의 ready() 함수 호출하여 실행할 함수를 파라미터로 전달
	function print() {
		alert("ready 이벤트 - print() 함수");
	}
	// 별도로 정의된 함수명을 ready() 함수 파라미터로 전달
// 	$(document).ready(print); // 주의! 함수 호출코드(함수명())를 지정하는 것이 아닌 함수명만 전달
	
	// ---------------------------------------------------------------------------------------------
	// 2. $(선택자).ready(function() { 함수 내에서 실행할 코드들...}) 형식으로 작성하는 방법
	// => 함수를 별도로 정의하여 호출하는 방식에서 한 번만 사용하고 더 이상 사용되지 않는 함수를 위해
	//    별도의 함수 정의 없이 익명 함수(Anonymous function) 형태로 ready() 함수 내에 
	//    이름이 없는 함수를 직접 정의하는 방법 사용 가능
	//    (단, 익명 함수는 이름이 없으므로 외부에서 호출할 방법이 없음 = 1회용 함수)
	// => 주로, jQuery 를 통해 각종 이벤트를 처리하는 용도의 코드로 사용하는 방법
	
	// 기본적으로 jQuery 객체를 사용하는 방법
	jQuery(document).ready(function() {
		alert("ready 이벤트 - 익명 함수 1");
	});
	
	// jQuery 대신 $ 기호를 사용하는 방법(많이 사용)
	$(document).ready(function() {
		alert("ready 이벤트 - 익명 함수 2");
	});
	
	// ---------------------------------------------------------------------------------------------
	// 3. $(function() { 함수 내에서 실행할 코드들...}}) 형식으로 작성하는 방법
	// => document 객체의 ready 이벤트 실행 시 가장 많이 사용하는 형태
	$(function() {
		alert("ready 이벤트 - 익명 함수 3");
	});
</script>
</head>
<body>
	<h1>test2.jsp</h1>
</body>
</html>












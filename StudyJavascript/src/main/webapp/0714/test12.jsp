<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	[ 자바스크립트 구성요소 ]
	1. 변수(var, let, const)
	2. 함수(내장함수, 사용자정의함수)
	3. 객체(내장객체, 사용자정의객체)
	----------------------------------------------------------------
	[ 자바스크립트 내장객체 ]
	- 자바스크립트에서 미리 만들어 제공하는 객체
	- 별도의 선언없이 객체명만으로 사용 가능
	
	[ window 객체 ]
	- 자바스크립트의 최상위(루트) 객체
	- 자바스크립트 전역에서 사용(접근) 가능한 객체
	- 웹브라우저의 창(browser window)을 가리키는(관리하는) 용도로 사용되며
	  창(window)에 대한 다양한 작업을 수행할 수 있는 여러 함수 제공
	  ex) window.open() 함수를 호출하여 새 창 열기 가능
	- window 객체명은 생략이 가능함
	
	[ window 객체의 하위 객체들 ]
	1. document
	   - DOM(Document Object Model = 문서 객체 모델)
	   - 웹 페이지 내의 모든 컨텐츠(= 문서 내용)를 document 객체로 관리(= 수정 가능함)
	   - 특정 웹페이지의 시작점 역할을 수행하므로 document 객체를 사용하면
	     웹페이지 내의 모든 요소들을 변경 가능하며, 생성도 가능
	2. navigator, location, history 등
	   - BOM(Browser Object Model = 브라우저 객체 모델)
	   - 웹 페이지 내의 문서 내용(컨텐츠)을 제외한 나머지 요소를 모두 관리
	     ex) 웹브라우저 정보, 운영체제 정보, 페이지 정보
	3. object, array, function 등
	*/
	
	function showWindowInfo() {
    	// window 객체를 활용하여 현재 창(브라우저)에 대한 정보 확인 및 제어 가능
		// 현재 열려있는 웹브라우저(창)의 높이(height)와 너비(width) 확인
		document.write("창 높이 : " + window.innerHeight + ", 창 너비 : " + window.innerWidth);
	}

	function changeBackgroundColor() {
		// document 객체를 활용하여 문서 내의 요소에 대한 확인 및 제어 가능
		// 현재 문서(페이지)의 배경색을 빨간색("RED") 으로 변경
		document.body.style.background = "RED";
	}

	function connectUrl() {
		// location 객체를 활용하여 페이지 이동(위치)에 대한 확인 및 제어 가능
		// URL 를 입력받아 해당 페이지로 이동
		// => 단, "XXX 주소로 이동하시겠습니까?" 확인창을 통해 확인 버튼을 클릭 시에만 이동
		var url = prompt("이동할 페이지 URL 입력!", "http://"); // 기본값으로 http:// 입력되도록
		
		// "XXX 주소로 이동하시겠습니까?" 확인창을 통해 사용자로부터 YES or NO 입력
		// => 이 때, YES(true) 일 경우 주어진 URL 로 이동하는 작업 수행 
		// 1. confirm() 함수를 사용하여 사용자로부터 선택받은 후 결과를 변수 result 에 저장
		//    => 이 때, 팝업창(모달창) 메세지로 "XXX 주소로 이동하시겠습니까?" 표시
		// 2. if문을 사용하여 result 값이 true 일 경우 해당 주소(url)로 이동하고
		//    아니면, "취소되었습니다." 출력
		var result = confirm(url + " 주소로 이동하시겠습니까?");
		
		if(result) { // result == true 와 동일
			location.href = url; // 입력받은 URL 을 사용하여 페이지 이동
		} else { // 취소버튼 클릭 시
			alert("취소되었습니다!"); // 취소 메세지 출력 
		}
			
	}

	function showBrowserInfo() {
		// navigator 객체는 웹브라우저 자체에 대한 정보 제공
		alert("브라우저 정보 : " + navigator.userAgent + ", 브라우저 OS 정보 : " + navigator.platform);
	}
</script>
</head>
<body>
	<h1>test12.jsp - window 객체</h1>
	<input type="button" value="창 크기 확인" onclick="showWindowInfo()">
	<input type="button" value="배경색 변경" onclick="changeBackgroundColor()">
	<input type="button" value="URL 입력" onclick="connectUrl()">
	<input type="button" value="브라우저 정보 확인" onclick="showBrowserInfo()">
</body>
</html>










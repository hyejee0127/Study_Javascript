<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// btnClick() 함수 정의 => alert() 함수를 사용하여 "버튼 클릭됨!" 메세지 출력
	// => 이 함수는 버튼5 클릭 시 호출될 함수
	function btnClick() {
		alert("버튼 클릭됨!");
	}
	
	// btnClick2() 함수 정의 => 파라미터로 문자열 1개를 전달받아 변수 text 에 저장
	// => 저장된 텍스트를 alert() 함수를 통해 출력하기!
	function btnClick2(text) {
		alert(text + " 클릭됨!");
	}
	
	// btnClick3() 함수 정의 => "리턴값" 이라는 문자열을 리턴
	function btnClick3() {
		return "리턴값";
	}
	
	// 정답을 입력받아 비교 결과를 출력하는 inputAnswer() 함수 정의
	function inputAnswer() {
		// 사용자로부터 정답을 입력받아 변수 answer 에 저장 후 document.write() 로 정답 출력
		var answer = prompt("정답을 입력하세요");
// 		document.write("입력하신 정답은 " + answer + " 입니다.");
		
		// 입력받은 정답이 "자바" 일 경우 "정답입니다!" 출력하고, 아니면 "오답입니다!" 출력
		if(answer == "자바") {
			alert("정답입니다!");
		} else {
			alert("오답입니다!");
		}
	}
	
	function goInputUrl() {
		// 이동할 페이지 URL 을 사용자로부터 입력받아 변수 url 에 저장
		var url = prompt("이동할 페이지 URL 입력!");
// 		alert(url);

		// 입력받은 URL 을 사용하여 해당 웹사이트로 이동
		location.href = url;
	}
</script>
</head>
<body>
	<!-- 
	[ 이벤트(Event) ]
	- 어떤 대상에 어떤 일이 발생하는 것
	- 웹에서의 이벤트란? 어떤 대상에 사용자가 특정 액션을 취하는 것
	  ex) 버튼 클릭, 텍스트 입력, 마우스 이동 등
	- 이벤트가 발생하면 해당 이벤트에 대한 동작을 처리하도록 하는 것을 
	  이벤트 처리(Event Handling)라고 한다.
	
	[ 이벤트 처리(Event Handling) ]
	- 이벤트가 발생했을 때 특정 작업을 수행하도록 하는 것
	  ex) 버튼 클릭 이벤트 발생 시 alert() 함수를 통해 메세지를 표시
	      텍스트 입력 이벤트 발생 시 숫자가 입력됐는지 판별
	      이미지에 마우스 오버 이벤트 발생 시 다른 이미지로 전환
	- 이벤트가 등록될 대상 컴포넌트(버튼, 텍스트상자 등) onXXX 속성을 사용하여 이벤트 종류를 지정하고
	  해당 속성의 값으로 자바스크립트 코드를 통해 이벤트 처리 수행 가능
	  ex) 버튼 등을 클릭 시 동작할 이벤트 : onclick
	      마우스를 특정 대상 위에 가져다 대는 이벤트 : onmouseover
	  => onXXX 속성의 값으로 자바스크립트 함수(내장함수 포함) 를 직접 호출하여 작업 수행 가능
	     ex) onclick="alert('버튼클릭됨!')" 
	         => 주의! 함수 호출 코드를 큰따옴표 내부에 지정할 경우
	            문자열 데이터 등을 표현할 때는 작은따옴표를 사용하여 표현하면 된다!
	
	< 특정 태그에 대한 이벤트 등록 기본 문법 >
	<XXX태그  onXXX="자바스크립트함수호출()">     
	
	-->
	<h1>test11.jsp</h1>
	<!-- 
	HTML 태그에서 버튼을 부착하는 방법
	1) <input> 태그의 type="button" 속성 사용(value 속성을 사용하여 버튼 텍스트 지정)
	2) <button> 태그 사용 => 태그 사이에 버튼 텍스트 지정
	-->
	<input type="button"> <!-- 일반 버튼 생성(텍스트가 없는 버튼) -->
	<input type="button" value="버튼"> <!-- 일반 버튼 생성("버튼" 이라는 텍스트가 표시됨) -->
	<button>버튼2</button>
	<hr>
	<!-- 버튼 클릭 시 특정 동작을 수행하려면 버튼 클릭 이벤트에 대한 처리 필요 -->
	<!-- onclick 속성을 사용하여 버튼 이벤트 처리 => onclick 속성 내부에 큰따옴표를 사용하여 함수 호출 -->
	<input type="button" value="버튼1" onclick="alert('버튼1 클릭됨!')">
	<button onclick="alert('버튼2 클릭됨!')">버튼2</button>
	<input type="button" value="버튼3" ondblclick="alert('버튼3 더블클릭됨!')">
	<input type="button" value="버튼4" onmouseover="alert('버튼4 마우스 오버!')" onmouseout="alert('버튼4 마우스 아웃!')">
	<!-- 버튼5 클릭 시 사용자 정의 함수 btnClick() 호출 -->
	<input type="button" value="버튼5" onclick="btnClick()">
	<!-- 버튼6 클릭 시 사용자 정의 함수 btnClick2() 호출하면서 '버튼6' 이라는 문자열을 전달 -->
	<input type="button" value="버튼6" onclick="btnClick2('버튼6')">
	<!-- 버튼7 클릭 시 사용자 정의 함수 btnClick3() 호출하고, 리턴값을 받아 alert() 함수로 출력 -->
	<input type="button" value="버튼7" onclick="alert(btnClick3())">
	<hr>
	<!-- 정답입력 버튼 클릭 시 inputAnswer() 함수 호출 -->
	<input type="button" value="정답입력" onclick="inputAnswer()">
	<hr>
	
	<!-- "아이티윌 부산교육센터" 버튼 클릭 시 "http://www.itwillbs.co.kr" 로 이동 -->
	<!-- 1. 하이퍼 링크(a 태그)를 사용하여 이동 -->
	<a href="http://www.itwillbs.co.kr"><button>아이티윌 부산교육센터(하이퍼링크)</button></a>
	<!-- 2. 자바스크립트를 사용하여 이동(location.href="이동할 페이지의 URL") -->
	<button onclick="location.href='http://www.itwillbs.co.kr'">아이티윌 부산교육센터(자바스크립트)</button>
	
	<!-- "URL 입력" 버튼 클릭 시 goInputUrl() 함수 호출 -->
	<button onclick="goInputUrl()">URL 입력</button>
</body>
</html>






















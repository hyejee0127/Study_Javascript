<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	/*
	[ 선택자(Selector) ]
	- 문서 객체 내의 요소를 선택하는 용도로 사용되는 구성 요소
	- 자바스크립트에서 선택자를 사용하여 요소 선택 시
	  document.getElementByXXX("선택자") 또는 document.querySelector("선택자") 형태로 선택
	- jQuery 에서 요소 선택 시
	  $("선택자") 형태로 지정하므로 훨씬 편리하게 지정 가능
	
	< 선택자 활용 기본 문법 >
	$("선택자명 또는 *").함수명("속성명", "속성값");
	
	< 선택자 종류 >
	1. 직접 선택자
	   1) 아이디(#) - 페이지 내에서 유일한 요소 => $("#id선택자명")
	   2) 클래스(.) - 페이지 내에서 중복될 수 있는 요소 => $(".class선택자명")
	   3) 태그 - 동일한 태그(복수개의 요소) 요소 => $("태그명")
	   4) 태그속성 - 동일한 태그 중 특정 속성 지정 => $("태그명[속성명]")
	   5) 태그속성값 - 동일한 태그 중 특정 속성의 값 지정 => $("태그명[속성명=값]")
	*/
	
	// jQuery 를 활용하여 document 객체의 ready 이벤트를 통해 HTML 문서 내의 각종 속성 변경
	$(document).ready(function() {
		// HTML 문서 내의 전체 요소에 대해 CSS 속성 변경
		// => 전체 요소 선택을 위한 선택자로 * 기호 사용
		// => CSS 속성 변경을 위해 css() 함수 호출하여 css("속성명", "속성값") 문법 사용
		// 1. 전체 요소에 대한 글자색(color 속성)을 RED 로 변경
		$("*").css("color", "RED");
		
		// 2. id 선택자(#) 중 "idSelector" 선택자명을 가진 요소의 글자색을 BLUE 로 변경
		$("#idSelector").css("color", "BLUE");
		
		// 3. class 선택자(.) 중 "classSelector" 선택자명을 가진 요소의 글자색을 ORANGE 로 변경
		$(".classSelector").css("color", "ORANGE");
		
		// 4. table 태그의 테두리 변경, 배경색 변경
// 		$("table").css("border", "1px solid blue"); // 테투리 파란색 실선
// 		$("table").css("background", "yellow"); // 배경색 노란색
		
		// 동일한 대상(선택자)에 복수개의 속성을 지정할 때 메서드를 연쇄적으로 호출 가능
// 		$("table").css("border", "1px solid blue").css("background", "pink");
		
		// 동일한 대상(선택자)에 복수개의 속성을 지정할 때 블록 지정을 통해 CSS 문법과 동일하게 지정도 가능
		// => 속성끼리의 구분은 콤마(,) 사용
		$("table").css({
			border: "3px solid blue",
			background: "gray"
		});
		
	});
	
	   
	/*
	< 선택자 종류 >
	1. 직접 선택자
	2. 인접관계 선택자
	   1) 자식 선택자(>) 
	      - 특정 선택자의 바로 하위에 있는 자식 요소 선택
	      - $("부모선택자 > 자식선택자")
	   2) 자식 또는 후손 선택자(공백)
	      - 특정 선택자의 모든 하위 요소 선택(자식 또는 자식의 자식 등)
	      - $("부모선택자 자식선택자")
	   3) 순서 선택자
	      - 특정 선택자를 기준으로 지정된 순서에 해당하는 요소 선택
	      - $("선택자명:순서옵션")
	        ex) 첫번째 태그 요소 - 선택자명:first    마지막 태그 요소 - 선택자명:last
	            홀수번째 태그 요소 - 선택자명:odd    짝수번째 태그 요소 - 선택자명:even 등
	   
	      
	*/
	// $(document).ready(function() {}) 이벤트 코드를 압축한 $(function() {}) 코드 사용
	$(function() {
		// table 태그의 하위 tr 태그 배경색을 green 으로 변경
// 		$("table tr").css("background", "green");
		
		// tr 태그들 중 첫번째 tr 태그 배경색만 yellow 로 변경하고, 정렬(text-align) 방식을 가운데(center)로 지정
// 		$("table tr:first").css("background", "yellow");
// 		$("table tr:first").css("text-align", "center"); // 주의! 한 문장으로 결합 시 textalign 속성 사용해야함(- 기호 제외)
		$("table tr:first").css({
			background: "yellow",
			textalign: "center"
		});
		
		// tr 태그들 중 홀수번째 태그 배경색을 skyblue 로 변경
		$("tr:odd").css("background", "skyblue"); // 1, 3 행 색상 변경
		
		// tr 태그들 중 짝수번째 태그 배경색을 pink 로 변경
		$("tr:even").css("background", "pink"); // 2, 4 행 뿐만 아니라 제목행(0번 행) 색상까지 변경
		
		// -----------------------------------------------------------------------------------------
		// id 선택자 inputBox 의 배경색을 yellow 로 변경
		$("#inputBox").css("background", "yellow");
		
		// id 선택자 inputBox 의 하위요소 변경
		// inputBox 하위의 input 태그 배경색을 lightgray 로 변경
		$("#inputBox > input").css("background", "lightgray"); // text, password, button 요소 3개 색상 변경됨
		// input 태그 중 type 속성값이 text 인 요소의 글자색(color)을 black 으로 변경
		$("#inputBox > input[type=text]").css("color", "black"); // input type="text" 인 요소의 글자색만 black 으로 변경됨
		
		// id 선택자 inputBox 의 자식들 중 type 속성이 text 인 요소의 값에 접근하기
		// => $("선택자").val() 함수 호출
		// => 함수 호출 시 전달인자가 없으면 해당 value 속성값 리턴, 전달인자가 있으면 해당 속성값으로 설정
		var id = $("#inputBox > input[type=text]").val();
// 		alert("아이디 : " + id);
		
		// 가져온 아이디 값을 textarea 요소 중 readonly 속성이 적용된 요소에 출력하기
// 		$("#inputBox > textarea[readonly]").val(id);
		
		// id 선택자 divBox 의 자식 div 태그 글자색을 blue 로 변경
		$("#divBox > div").css("color", "blue");
		
		// id 선택자 divBox2 의 자식 및 후손 div 태그 글자색을 blue 로 변경
		$("#divBox2 div").css("color", "blue");
		
	}); // ready 이벤트 끝
	        
	// 외부로부터 함수를 호출하여 jQuery 기능을 동작시키는 경우
	// => 주의! 외부에서 함수를 호출하므로 ready 이벤트를 통해 함수를 정의하지 않도록 해야한다!
	function showInputData() {
		// inputBox 의 하위 input 태그 입력값을 id 와 passwd 변수에 각각 저장한 후
		// textarea 에 각각 출력(textarea 속성 중 readonly 속성이 적용된 곳에 id 출력, id 선택자가 textarea 인 곳에 passwd 출력)
		var id = $("#inputBox > input[type=text]").val();
		var passwd = $("#inputBox > input[type=password]").val();
		
		$("#inputBox > textarea[readonly]").val(id);
		$("#textarea").val(passwd);
	}
	
</script>
</head>
<body>
	<h1>jQuery/test3.jsp</h1>
	
	<h1 id="idSelector">id 선택자</h1>
	<h1 class="classSelector">class 선택자</h1>
	<table>
		<tr><td>번호</td><td>제목</td></tr>
		<tr><td>1</td><td>제목1</td></tr>
		<tr><td>2</td><td>제목2</td></tr>
		<tr><td>3</td><td>제목3</td></tr>
		<tr><td>4</td><td>제목4</td></tr>
	</table>
	<div id="inputBox">
		<input type="text" value="admin">
		<input type="password" value="1234">
		<input type="button" value="확인" onclick="showInputData()"><br>
		<textarea readonly="readonly"></textarea>
		<textarea id="textarea"></textarea>
	</div>
	<hr>
	<div id="divBox">
		<div>
			1번 div 태그
			<div>1-1번 div 태그</div>
			<div>1-2번 div 태그</div>
		</div>
		<span>span 태그</span>
		<div>2번 div 태그</div>
		<div>
			3번 div 태그
			<div>3-1번 div 태그</div>
			<div>3-2번 div 태그</div>
		</div>
	</div>
	<hr>
	<div id="divBox2">
		<div>
			1번 div 태그
			<div>1-1번 div 태그</div>
			<div>1-2번 div 태그</div>
		</div>
		<span>span 태그</span>
		<div>2번 div 태그</div>
		<div>
			3번 div 태그
			<div>3-1번 div 태그</div>
			<div>3-2번 div 태그</div>
		</div>
	</div>
	<hr>
	
</body>
</html>
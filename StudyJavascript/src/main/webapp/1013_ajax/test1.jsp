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
	AJAX(Asynchronous Javascript And XML, 비동기식 자바스크립트&XML)
	- 웹페이지(브라우저)의 갱신 없이도 화면 상의 요소를 다룰 수 있는 자바스크립트 라이브러리
	- 데이터베이스 등의 작업 요청 시에도 요청된 응답이 돌아올 때까지 기다리지 않고
	  다른 작업을 수행하면서 요청에 대한 응답이 돌아오면 해당 응답 처리
	- 주로, 아이디 검증, 무한스크롤 등의 작업에 활용
	
	< 기본 문법 >
	$.ajax();
	*/
	
	$(function() {
		// id 선택자 btnOk 버튼 클릭 시 동작하는 이벤트에 대해 익명 함수 정의
		$("#btnOk").on("click", function() { // $("#btnOk").click(function() {}); 과 동일
			// AJAX 를 사용하여 GET 방식 요청으로 test1_result.jsp 페이지를 요청
			// 이 때, 요청 페이지로 전달할 파라미터 : 입력받은 아이디, 패스워드
			// 리턴되는 응답데이터를 id 선택자 resultArea 영역에 출력
			
			// 폼 내부의 파라미터를 모두 요청 페이지로 전송하기 위해서
			// 폼을 지정하여 serialize() 함수 호출 시 해당 폼의 데이터 직렬화(= 모두 내보내기)
			let sendData = $("form").serialize();
			
			$.ajax({
				// AJAX 에서 사용할 데이터를 속성명:"값" 형태로 지정
				type: "POST", // 요청 방식(Method)
				url: "test1_result.jsp", // 요청 URL
// 				data: {
// 					// 복수개의 파라미터를 직접 전달할 경우 파라미터명:데이터 형식으로 전달
// // 					id: "admin",
// // 					passwd: "1234"

// 					// 특정 대상의 입력값을 가져올 경우 $("선택자").val() 함수로 가져옴
// 					id: $("#id").val(),
// 					passwd: $("#passwd").val()
// 				},
				// serialize() 함수를 통해 가져온 폼 데이터를 전송할 데이터로 지정(중괄호 불필요)
				data: sendData, // $("form").serialize() 와 동일
				dataType: "text", // 응답받는 데이터 타입
				success: function(msg) { // 요청 성공 시 수행할 작업 정의
					// 요청 성공 시 응답 페이지의 응답 내용이 익명 함수의 파라미터(msg)로 전달되며
					// 해당 파라미터 내의 데이터를 사용하여 응답 페이지에 접근 가능
					$("#resultArea").html(msg);
				}
			});
		});
	});
</script>
</head>
<body>
	<h1>test1.jsp - AJAX</h1>
	<form action="">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="passwd" id="passwd"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" id="btnOk" value="확인"></td>
			</tr>
		</table>
	</form>
	<div id="resultArea"></div>
</body>
</html>











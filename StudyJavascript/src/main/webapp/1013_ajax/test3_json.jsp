<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function() {
		// 버튼 클릭 시 AJAX 요청 수행
		$("#btnOk").on("click", function() {
			// =============================================================================
			// json_data_test3.txt 파일을 AJAX 를 통해 요청 => text 형식으로 요청
			// AJAX 요청 성공 시 자동으로 호출되는 콜백 함수를 success: 에 기술할 수도 있지만
			// success: 과 유사한 done() 으로 동일한 처리도 가능함(기술하는 위치가 달라짐)
// 			$.ajax({
// 				type: "GET",
// 				url: "json_data_test3.txt",
// 				dataType: "text", // 응답 데이터가 일반 텍스트 형식으로 전달되도록 "text" 타입 지정 
// 			})
// 			.done(function(msg) { // 요청 성공 시(success 와 동일하지만 호출 우선순위가 낮음)
// 				$("#resultArea").html(msg); // 텍스트 파일의 데이터가 그대로 출력됨
// 				$("#resultArea").append("<h3>타입 : " + typeof(msg) + "</h3>"); // string
// 			})
// 			.fail(function() { // 요청 실패 시
// 				$("#resultArea").html("요청 실패!");
// 			});
			// ==============================================================================
			// json_data_test3.txt 파일을 AJAX 를 통해 요청 => JSON 객체 형식으로 요청
			$.ajax({
				type: "GET",
				url: "json_data_test3.txt",
				dataType: "json", // 응답 데이터가 JSON 형식으로 전달되도록 "json" 타입 지정 
			})
			.done(function(data) { // 요청 성공 시
// 				$("#resultArea").html(data); // JSON 객체로 전달받으므로 그대로 사용 불가능(출력X)
// 				$("#resultArea").append("<h3>타입 : " + typeof(data) + "</h3>"); // object
				// --------------------------------------------------------
				// 만약, 전달받은 JSON 객체를 문자열 형식으로 변환할 경우
// 				let strData = JSON.stringify(data);
// 				$("#resultArea").html(strData);
// 				$("#resultArea").append("<h3>타입 : " + typeof(strData) + "</h3>"); // object
				// --------------------------------------------------------
				// JSON 데이터를 표시할 테이블 생성
				$("#resultArea").html("<table border='1'><tr><th colspan='4'>JSON 데이터 파싱 결과</th></tr></table>");
				// table 태그 내의 가장 마지막 요소 추가를 위해 append() 사용
				$("#resultArea > table").append("<tr><th>아이디</th><th>이름</th><th>나이</th><th>정보수신동의</th></tr>");
				
				// JSON 데이터가 대괄호[] 로 감싸져 있을 경우 배열 데이터로 취급되고
				// 해당 배열 내에서 중괄호{} 로 감싸져 있는 객체에 접근하여 객체의 속성 지정
				// => 배열명[인덱스].속성명 형태로 접근(ex. data[0].name)
// 				$("#resultArea").html(data[0].id); // 첫번째 배열에 저장된 객체의 id 속성값 출력

				// 파싱된 JSON 객체의 배열 크기만큼 for문을 통해 반복 작업 수행
				for(let i = 0; i < data.length; i++) {
					// JSON 객체 내의 배열 i번 인덱스에서 객체를 통해 속성값에 접근하여 변수에 저장
					let id = data[i].id;
					let name = data[i].name;
					let age = data[i].age;
					let agreeRcvSpam = data[i].agreeRcvSpam;
					
					$("#resultArea > table").append(
							"<tr><td>" + id + "</td>"
							+ "<td>" + name + "</td>"
							+ "<td>" + age + "</td>"
							+ "<td>" + agreeRcvSpam + "</td></tr>"
					);
				}
			})
			.fail(function() { // 요청 실패 시
				$("#resultArea").html("요청 실패!");
			});
			
		});
		
	});
</script>
</head>
<body>
	<h1>test3_json.jsp</h1>
	<input type="button" value="JSON 데이터 파싱" id="btnOk">
	<hr>
	<div id="resultArea"></div>
</body>
</html>













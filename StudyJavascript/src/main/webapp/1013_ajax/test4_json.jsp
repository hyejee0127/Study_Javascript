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
			// json_data_test4.txt 파일을 AJAX 를 통해 요청 => JSON 객체 형식으로 요청
			$.ajax({
				type: "GET",
				url: "json_data_test4.txt",
				dataType: "json", // 응답 데이터가 JSON 형식으로 전달되도록 "json" 타입 지정 
			})
			.done(function(data) { // 요청 성공 시
				// JSON 데이터를 표시할 테이블 생성
				$("#resultArea").html("<table border='1'><tr><th colspan='5'>JSON 데이터 파싱 결과</th></tr></table>");
				// table 태그 내의 가장 마지막 요소 추가를 위해 append() 사용
				$("#resultArea > table").append("<tr><th>아이디</th><th>이름</th><th>나이</th><th>정보수신동의</th><th>주소</th></tr>");
				
				// 파싱된 JSON 객체의 배열 크기만큼 for문을 통해 반복 작업 수행
				for(let i = 0; i < data.length; i++) {
					// JSON 객체 내의 배열 i번 인덱스에서 객체를 통해 속성값에 접근하여 변수에 저장
					let id = data[i].id;
					let name = data[i].name;
					let age = data[i].age;
					let agreeRcvSpam = data[i].agreeRcvSpam;
					// 배열 인덱스를 통해 접근하는 데이터 중 "address" 는 또 다른 객체가 되어
					// "address" 객체 내의 "address1", "address2" 속성에 각각 접근해야함
// 					let address = data[i].address.address1 + " " + data[i].address.address2;
					
// 					$("#resultArea > table").append(
// 							"<tr><td>" + id + "</td>"
// 							+ "<td>" + name + "</td>"
// 							+ "<td>" + age + "</td>"
// 							+ "<td>" + agreeRcvSpam + "</td>"
// 							+ "<td>" + address + "</td></tr>"
// 					);

					// 실제 데이터 대신 객체를 변수에 보관 후 해당 변수를 통해 객체 접근도 가능
					let addr = data[i].address;
					$("#resultArea > table").append(
							"<tr><td>" + id + "</td>"
							+ "<td>" + name + "</td>"
							+ "<td>" + age + "</td>"
							+ "<td>" + agreeRcvSpam + "</td>"
							+ "<td>" + (addr.address1 + " " + addr.address2) + "</td></tr>"
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













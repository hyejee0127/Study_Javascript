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
		$("#btnOk").on("click", function() {
			// 캘린더에서 입력(선택)한 날짜 가져오기
			let selectedDate = $("#date").val();
// 			alert("선택된 날짜 : " + selectedDate);

			// 만약, 날짜(연, 월, 일)가 선택되지 않은 경우
			// "날짜 선택 필수!" 메세지 출력 후 캘린더에 포커스 요청 및 함수 실행 중단
			if(selectedDate == "") { // selectedDate.length == 0 동일
				alert("날짜 선택 필수!");
				$("#date").focus();
				return;
			}
			// -----------------------------------------------------------------------------
			// 조회 대상 일자에 맞는 날짜 형식으로 selectedDate 값을 변환(- 기호 제거) 
			// ex) 2022-10-13 날짜 형식을 20221013 형식으로 변환해야함
			// 1) split() 함수를 통해 기준 문자열 "-" 를 기준으로 문자열 분리
// 			let splitDate = selectedDate.split("-"); // "-" 기호 기준 분리 후 배열로 관리됨
// 			let targetDt = splitDate[0] + splitDate[1] + splitDate[2]; // 3개의 문자열 연결
// 			alert(targetDt);
			
			// 2) replace() 함수를 통해 - 기호를 ""(널스트링) 으로 치환
// 			let targetDt = selectedDate.replace("-", ""); // 처음 만나는 대상 문자열만 치환됨
			// 2022-10-13 의 첫 - 기호만 치환되므로 202210-06 문자열이 됨
			
			// 따라서, 정규표현식의 플래그 중 전체에 모든 대상 문자열을 탐색 필요
			// 플래그(flag) 종류
			// 1) /g(global) : 대상 문자열 내의 모든 패턴 검색
			// 2) /i(ignore case) : 대상 문자열을 대소문자 무시하고 검색
			// 3) /m(multi line) : 대상 문자열이 복수개의 라인일 경우 전체 라인에 걸쳐 검색
			// => 만약, 복수개의 라인에서 각 라인별로 전체 패턴 검색할 경우 /g/m 지정
			//    (/m 만 지정 시 각 라인의 첫 번째 패턴만 검색)
			let targetDt = selectedDate.replace(/-/g, ""); // 모든 - 기호를 치환
// 			alert(targetDt);
			// =============================================================================
			// 영화진흥위원회의 오픈API 를 사용하여 영화 정보 JSON 데이터 처리
			// => 파라미터 중 조회 대상 일자(targetDt)는 선택된 날짜 사용
			$.ajax({
				type: "GET",
				url: "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=" + targetDt,
				dataType: "json", // 응답 데이터가 JSON 형식으로 전달되도록 "json" 타입 지정 
			})
			.done(function(data) { // 요청 성공 시
// 				$("#resultArea").html(JSON.stringify(data)); // JSON 데이터를 문자열로 변환
				// 박스오피스 목록이 저장된 JSON 객체(data) 로부터 영화 목록 정보 추출하기
				// 1. 일별 박스오피스 목록(10개)이 저장된 "boxOfficeResult" 객체 추출
				let boxOfficeResult = data.boxOfficeResult;
// 				$("#resultArea").html(JSON.stringify(boxOfficeResult));
				
				// 2. 박스오피스 타입(boxofficeType)과 조회날짜(showRange) 추출
				// => boxOfficeResult 객체를 통해 접근
				let boxOfficeType = boxOfficeResult.boxofficeType;
				let showRange = boxOfficeResult.showRange;
// 				$("#resultArea").html(JSON.stringify(boxOfficeType) + "(" + JSON.stringify(showRange) + ")");
				
				// 3. 일별 박스오피스 목록(dailyBoxOfficeList) 추출
				// => 복수개의 영화 정보 객체{}가 dailyBoxOfficeList 라는 이름의 배열[]로 관리됨
				let dailyBoxOfficeList = boxOfficeResult.dailyBoxOfficeList;
				
				// 4. 추출된 박스오피스 목록(배열)을 반복문을 통해 반복하면서
				//    순위(rank), 제목(movieNm), 개봉일(openDt), 누적관객수(audiAcc) 추출 및 출력
				// => 단, 영화제목(movieNm)에 하이퍼링크 설정하여 영화 상세정보 조회 페이지로 이동
				//    (이동할 페이지 : test6_json_movie_detail.jsp, 파라미터 : 영화코드(movieCd))
				for(let i = 0; i < dailyBoxOfficeList.length; i++) {
					$("#resultArea > table").append(
						"<tr>" + 
						"<td>" + dailyBoxOfficeList[i].rank + "</td>" + 
						"<td>" + "<a href='test6_json_movie_detail.jsp?movieCd=" + dailyBoxOfficeList[i].movieCd + "'>" + dailyBoxOfficeList[i].movieNm + "</a></td>" + 
						"<td>" + dailyBoxOfficeList[i].openDt + "</td>" + 
						"<td>" + dailyBoxOfficeList[i].audiAcc + "</td>" + 
						"</tr>"
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
	<h1>test6_json.jsp - 영화 목록</h1>
	<input type="date" id="date">
	<input type="button" value="일자별 박스오피스 검색" id="btnOk">
	<hr>
	<div id="resultArea">
		<table border="1">
			<tr>
				<th width="80">현재순위</th>
				<th width="400">영화명</th>
				<th width="150">개봉일</th>
				<th width="100">누적관객수</th>
			</tr>
		</table>
	</div>
</body>
</html>













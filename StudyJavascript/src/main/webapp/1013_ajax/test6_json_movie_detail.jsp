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
		// URL 파라미터로 전달받은 영화코드(movieCd) 가져오기 
		let movieCd = ${param.movieCd};
// 		alert(movieCd);
		
		// 영화 상세정보 요청에 사용될 요청 URL 생성
		let movieDetailUrl = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?"
							+ "key=f5eef3421c602c6cb7ea224104795888&movieCd=" + movieCd;
		
		$.ajax({
			type: "GET",
			url: movieDetailUrl,
			dataType: "json", // 응답 데이터가 JSON 형식으로 전달되도록 "json" 타입 지정 
		})
		.done(function(data) { // 요청 성공 시
				// movieInfoResult 객체 내의 movieInfo 객체 내에서 각 항목 파싱
			// 영화제목(국문(movieNm), 영문(movieNmEn))
			// 개봉일(openDt)
			// 상영시간(showTm)
			// 감독(directors 배열의 peopleNm) => 복수개의 감독 존재할 수 있음
			// 출연진(actors 배열의 peopleNm) => 복수개의 출연진 존재할 수 있음
			let movieInfo = data.movieInfoResult.movieInfo;
			
			$("#resultArea > table").append(
				"<tr>" + 
				"<td>" + movieInfo.movieNm + "<br>(" + movieInfo.movieNmEn + ")" + "</td>" +
				"<td>" + movieInfo.openDt + "</td>" + 
				"<td>" + movieInfo.showTm + " 분</td>" + 
				"</tr>"
			);
			
			// 마지막 tr 태그 내부 요소의 마지막에 새로운 td 태그 추가하기
			$("#resultArea > table tr:last").append("<td id='directors'>");
			for(let director of movieInfo.directors) {
				$("#directors").append(director.peopleNm + " ");
			}
			$("#resultArea > table tr:last").append("</td>");
			
			$("#resultArea > table tr:last").append("<td id='actors'>");
			for(let actor of movieInfo.actors) {
				$("#actors").append(actor.peopleNm + " ");
			}
			$("#resultArea > table tr:last").append("</td>");
			
		})
		.fail(function() { // 요청 실패 시
			$("#resultArea").html("요청 실패!");
		});
		
	});
</script>
</head>
<body>
	<h1>test6_json.jsp - 영화 상세정보</h1>
	<hr>
	<div id="resultArea">
		<table border="1">
			<tr>
				<th width="400">영화명</th>
				<th width="150">개봉일</th>
				<th width="80">상영시간</th>
				<th width="150">감독</th>
				<th width="250">출연진</th>
			</tr>
		</table>
	</div>
</body>
</html>













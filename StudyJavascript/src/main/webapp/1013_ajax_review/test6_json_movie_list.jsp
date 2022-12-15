<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function(){
		let movieCd = ${param.movieCd};
		
		let movieDetailUrl = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?"
			+ "key=f5eef3421c602c6cb7ea224104795888&movieCd=" + movieCd;
		
		$.ajax({
			type: "GET",
			url: movieDetailUrl,
			dataType: "json",
		})
		.done(function(data){
			let movieInfo = data.movieInfoResult.movieInfo;
			
			$("#resultArea > table").append(
				"<tr>" + 
				"<td>" + movieInfo.movieNm + "<br>(" + movieInfo.movieNmEn + ")" + "</td>" +
				"<td>" + movieInfo.openDt + "</td>" + 
				"<td>" + movieInfo.showTm + " 분</td>" + 
				"</tr>"	
			);
			$("resultArea > table tr:last").append("<td id='directors'>");
			for(let direction of movieInfo.directors) {
				$("#directors").append(director.peopleNm + " ");
			}
			$("#resultArea > table tr:last").append("</td>");		
			
			$("#resultArea > table tr:last").append("<tr id='actors'>");
			for(let actor of movieInfo.actors) {
				$("#actors").append(actor.peopleNm + " ");
			}
			$("#resultArea").html("요청실패!");
			
			
			
			
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
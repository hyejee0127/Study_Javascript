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
		$('#btnOk').on("click",function(){
			let selectedDate = $("#date").val();
			if(selectedDate == "") {
				alert("날짜 선택 필수!");
				$("#date").focus();
				return;
			}
			let targetDt = seletedDate.replace(/-/g,"");
			$.ajax({
				types: "GET",
				url: "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=" + targetDt,
				dataType: "json",
			})
			.done(function(data){
				// 1. 일별 박스오피스 목록(10개)이 저장된 "boxOfficeResult" 객체 추출
				let boxOfficeResult = data.boxOfficeResult;
				
				// 2. 박스오피스 타입(boxofficeType)과 조회날짜(showRange) 추출
				let boxofficeType = data.boxOfficeResult.boxofficeType;
				let showRange = data.boxOfficeResult.showRange;
				
				// 3. 일별 박스오피스 목록(dailyBoxOfficeList) 추출
				let dailyBoxOfficeList = boxOfficeResult.dailyBoxOfficeList;				
				
				// 4. 추출된 박스오피스 목록(배열)을 반복문을 통해 반복하면서
				//    순위(rank), 제목(movieNm), 개봉일(openDt), 누적관객수(audiAcc) 추출 및 출력				
				for(let i = 0; i < dailyBoxOfficeLsit.length; i++){
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
				.fail(function(){
					$("#resultArea").html("요청실패!");
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

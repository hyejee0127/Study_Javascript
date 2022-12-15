<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	문서 내에서 이미지(img 태그)에 접근하는 방법
	1. document.getElementById() 함수 또는 document.getElementByTag() 함수 사용
	2. img 태그에서 이벤트 처리 시 함수에 this 값 전달
	3. img 태그에 지정된 name 속성명으로 접근하는 방법
	   - document.name속성값.속성명 : 지정된 name 속성값에 해당하는 이미지의 속성에 접근
	   ex) document.img1.src : img1 이라는 name 속성을 갖는 이미지의 src 속성값에 접근
	4. 이미지 전체(복수개)를 배열 형태로 접근하는 방법
	   - document.images[인덱스번호].속성명 : 복수개의 이미지 중 인덱스번호에 해당하는 이미지 접근
	     (이 때, 이미지 번호는 가장 첫번째 이미지를 0번으로 시작하여 차례대로 번호가 자동 부여됨)
	   ex) document.images[0].src : 첫번째 img 태그의 src 속성값에 접근
	*/
	function func1() {
		// "1.jpg" 이미지의 img 태그에 접근하여 파일명(src 속성값) 출력 = name 속성값이 "img1"
// 		alert(document.img1.src); // name 속성으로 접근하는 방법
// 	    alert(document.images[0].src); // 배열 인덱스로 접근하는 방법
		var imgInfo = "src : " + document.img1.src + "\nwidth : " + document.img1.width
						+ "\nheight : " + document.img1.height + "\nborder : " + document.img1.border;
		alert(imgInfo);
	}
	
	function func2() {
		// "1.jpg" 이미지의 크기(가로 300, 세로 300) 및 테두리(10) 및 이미지 파일("2.jpg") 변경
		document.img1.width = "300";
		document.img1.height = "300";
		document.img1.border = "10";
		document.img1.src = "2.jpg";
	}
	
	function changeImg(imgName) {
		document.img3.src = imgName;
	}
</script>
</head>
<body>
	<h1>test21.jsp</h1>
	<!-- 
	img 태그 : 이미지 표시
	- src="이미지경로" : 대상 이미지의 위치 및 파일명 지정
	- width="" height="" : 대상 이미지 가로, 세로 픽셀(크기)
	- border="" : 대상 이미지 테두리 굵기
	- title="" : 대상 이미지에 마우스 오버 시 표시할 툴팁(Tooltip) 텍스트
	- alt="" : 대상 이미지 로딩 실패 시 표시할 대체 텍스트
	-->
	<img src="1.jpg" width="200" height="200" border="2" name="img1" title="펭수" alt="펭수없음"><br>
	<input type="button" value="이미지속성정보출력" onclick="func1()">
	<input type="button" value="이미지속성정보변경" onclick="func2()"><br>
	<!-- 3.jpg 이미지 위에 마우스 올리면 "4.jpg" 로 변경, 마우스 빼면 "5.jpg" 로 변경 -->
	<img src="3.jpg" width="200" height="200" border="2" name="img3"
		onmouseover="changeImg('4.jpg')" onmouseout="changeImg('5.jpg')">
</body>
</html>

















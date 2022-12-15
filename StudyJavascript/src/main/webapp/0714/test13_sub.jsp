<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function windowClose() {
		// 현재 자식창을 열어 준 부모창에 알림(alert()) 표시
		// => 자신의 부모창에 접근하려면 window 객체의 opener 변수를 통해 접근해야함
		window.opener.alert("새 창(자식)을 닫았습니다!"); // 부모창에 alert() 창 표시
		
		// 부모창의 페이지 변경
// 		window.opener.location.href = "http://www.itwillbs.co.kr";
		
		// 현재 새 창(자식) 닫기
		window.close();
	}
</script>
</head>
<body>
	<h1>test13_sub.jsp - 자식창</h1>
	<input type="button" value="창 닫기" onclick="window.close()"> <!-- 현재 자식창 즉시 닫기 -->
	<input type="button" value="창 닫기 및 알림 표시" onclick="windowClose()">
</body>
</html>
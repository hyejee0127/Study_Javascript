<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function load() {
		alert("load 이벤트");
	}
</script>
</head>
<body onload="load()"> <!-- body 영역 로딩 완료 시 onload 이벤트가 동작되어 load() 함수 호출됨 -->
	<script type="text/javascript">
		alert("1");
	</script>
	
	<h1>test1.jsp</h1>
	
	<script type="text/javascript">
		alert("2");
	</script>
</body>
</html>










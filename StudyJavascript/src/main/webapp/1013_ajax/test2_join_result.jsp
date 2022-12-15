<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	// 회원 가입 완료 시 인증 메일 발송을 AJAX 로 처리하여
	// 메일 발송 도중에도 다른 페이지로 이동하는 등의 작업을 수행 가능하도록 처리
	$(function() {
		$.ajax({
			type: "GET",
			url: "MemberSendAuthMail.me", // 인증 메일 발송을 위한 서블릿 주소 요청
			data: {
				// 인증 메일 발송에 필요한 정보를 URL 파라미터로부터 추출하여 전송
				id: "${param.id}",
				email: "${param.email}"
			},
			dataType: "text",
			success: function(msg) {}
		});
	});
</script>
</head>
<body>
	<h1>회원 가입 완료</h1>
	<input type="button" value="홈으로" onclick="location.href='./'">
	<input type="button" value="로그인" onclick="location.href='MemberLoginForm.me'">
</body>
</html>















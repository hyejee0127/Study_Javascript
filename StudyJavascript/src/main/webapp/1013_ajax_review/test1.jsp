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
	$("#btnOk").on("click",function(){
		let sendDate = $("form").serialize();
		
		$.ajax({
			type: "POST",
			url: "test1_result.jsp",
			data: snedData,
			dataType: "text",
			success: function(msg) {
				$("#resultArea").html(msg);
			}
		});
	});
});





</script>
</head>
<body>
	<h1>test1.jsp - AJAX</h1>
	<form action="">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="passwd" id="passwd"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" id="btnOk" value="확인"></td>
			</tr>
		</table>
	</form>
	<div id="resultArea"></div>
</body>
</html>
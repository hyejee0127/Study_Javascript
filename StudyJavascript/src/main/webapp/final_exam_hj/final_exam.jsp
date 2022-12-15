<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
	
	
	function func1() {
		history.back();
	}
	
	function checkId(id) {
		var spancheckIdResult = document.getElementById("checkIdResult");
		if(id.lenth >= 4 && id.lenth <= 8) {
// 			<a href='check_id.jsp'>
			spancheckIdResult.innerHTML = "중복확인완료";
		} else {
			alert("4~8글자만 사용가능합니다");
		}
		
	}
	

	function checkPasswd(passwd) {
		var spancheckPasswdResult = document.getElementById("checkPasswdResult");
		if(passwd.length >= 8 && passwd.length <= 16) {
			spancheckPasswdResult.innerHTML = "사용 가능한 패스워드";
			spancheckPasswdResult.style.color = "blue";
		} else {
			spancheckPasswdResult.innerHTML = "사용 불가능한 패스워드";
			spancheckPasswdResult.style.color = "red";
		}
	}

	
// 	function checkAll(document.fr.check_all.checked) {
// 		if(isChecked) {
// 			document.fr.hobby[0].checked = true;
// 			document.fr.hobby[1].checked = true;
// 			document.fr.hobby[2].checked = true;
// 		} else {
// 			document.fr.hobby[0].checked = false;
// 			document.fr.hobby[1].checked = false;
// 			document.fr.hobby[2].checked = false;
// 		}
// 	}	
	
	</script>
</head>
<body>
<!-- 	<h1>final_exam의 회원가입 페이지</h1> -->
	<h1>회원가입</h1>
		<form action="">
			<table border="1">
			
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>	
				<tr>
					<td>ID</td> 
				<td>
					<input type="text" id="id" placeholder="4~8글자 사이 입력">
					<button onclick="checkId(this.value)">ID 중복확인</button>
					<span id="checkIdResult"></span>
				
					
					
					
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" id="passwd" placeholder="8~16글자 사이 입력" onblur="checkPasswd(this.value)">
					<span id="checkPasswdResult"></span>

					
				</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td>
					<input type="password" name="passwd">
					<span id="checkPasswd2Result"></span>
				</td>
			</tr>	
			<tr>
				<td>주민번호</td>
				<td><input type="text" name="name">-<input type="text" name="name"></td>
			</tr>		
			<tr>
				<td>E-Mail</td>
				<td><input type="text" name="name">@<input type="text" name="name">
					<select name="E-Mail">
						<option value="">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
					</select></td>
						
			</tr>
			<tr>
				<td>직업</td>
					<td><select name="job">
						<option value="">항목을 선택하세요</option>
						<option value="개발자">개발자</option>
						<option value="DB엔지니어">DB엔지니어</option>
						<option value="관리자">관리자</option>
						<option value="기타">기타</option>
					</select></td>				
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="남">남
					<input type="radio" name="gender" value="여">여
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<input type="checkbox" name="hobby" value="여행">여행
					<input type="checkbox" name="hobby" value="독서">독서
					<input type="checkbox" name="hobby" value="게임">게임
					<input type="checkbox" name="check_all" value="전체선택" onclick="checkAll()">전체선택
				</td>
			</tr>
			<tr>
				<td>가입동기</td>
				<td><textarea rows="5" cols="45"></textarea></td>			
			</tr>
			<tr>
				<td>
					<input type="submit" value="가입" >
					<input type="reset" value="초기화" >
					<input type="button" value="돌아가기" onclick="func1()">
				</td>
			</tr>
			
	
		
			
	
		</table>	
	</form>
	
	
	

</body>
</html>
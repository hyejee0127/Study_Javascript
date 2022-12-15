<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	대표적인 이벤트(Event) 종류
	- click : 마우스 클릭   dblclick : 마우스 더블클릭
	  mouseover : 마우스가 대상 위에 진입(= mouseenter 와 유사) 
	  mouseout : 마우스가 영역에서 빠져나감(= mouseleave 와 유사)
	  focus : 대상이 선택됨(= 포커스가 위치함)  blur : 대상 선택이 해제됨(= 포커스가 빠져나감)
	  keydown : 키보드 키 누름   keyup : 키보드 키 뗌
	  load : 대상 로딩이 완료
	  submit : 폼 데이터 전송    reset : 폼 데이터 초기화	  
	*/
	function bodyOnLoad() {
// 		alert("body 로딩 완료!");	  
	}
	  
	function clickButton() {
		alert('버튼 클릭됨!');
	}
	
	function changeBtnTxt(msg) {
		// id 선택자가 "btn" 인 버튼 객체 가져오기
		var btn = document.getElementById("btn");
		// 버튼 객체의 텍스트(value 속성값)를 변경(파라미터에 저장된 텍스트 활용)
		btn.value = msg;
	}
	
	function changeImgCat() {
		// getElementById() 함수 리턴값을 변수에 저장하지 않고 직접 속성에 접근 가능
		document.getElementById("img").src = "cat.png";
	}
	
	function changeImgDog() {
		document.getElementById("img").src = "dog.png";
	}
	
	function changeColor(color) {
		// 아이디 입력창에 커서 위치하면 배경색을 "SKYBLUE" 로 변경하고
		// 커서가 빠져나가면 배경색을 "WHITE" 로 변경
		document.getElementById("id").style.background = color;
	}
	
	function checkId(id) {
		var spanIdResult = document.getElementById("idResult");
		
		// 임시로 DB 에 저장된 아이디가 "admin" 이라고 가정하고, 입력받은 아이디와 비교
		if(id == "admin") { // 입력받은 아이디가 "admin" 일 경우 아이디 중복 처리
			spanIdResult.innerHTML = "이미 사용중인 아이디";
			spanIdResult.style.color = "RED";
		} else if(id == "") { // 입력받은 아이디를 모두 삭제했을 경우
			spanIdResult.innerHTML = "";
		} else { // 입력받은 아이디가 "admin" 이외의 아이디일 경우 사용 가능한 아이디 처리
			spanIdResult.innerHTML = "사용 가능한 아이디";
			spanIdResult.style.color = "GREEN";
		}
	}
	
	function checkPasswd(passwd) {
		var spanPasswdResult = document.getElementById("passwdResult");
		
		// 입력받은 패스워드 문자열의 길이(length 속성값)를 체크하여
		// 8글자 이상일 경우 "사용 가능한 패스워드", 아니면 "8글자 이상 필수!" 출력
		if(passwd.length >= 8) {
			spanPasswdResult.innerHTML = "사용 가능한 패스워드";
			spanPasswdResult.style.color = "GREEN";
		} else {
			spanPasswdResult.innerHTML = "8글자 이상 필수!";
			spanPasswdResult.style.color = "RED";
		}
	}
	
	function changeColor2(elem, color) {
// 		alert(elem); // HTMLTableRowElement(테이블의 행을 관리하는 객체)
		// tr 태그가 elem 변수에 저장되므로 tr 태그의 배경색 스타일을 변경하면 한 줄 색상 변경
		// => 테이블의 어떤 행에 마우스를 가져다 댔는지 식별이 용이하도록 배경색 변경
		elem.style.background = color;
	}
</script>
</head>
<body onload="bodyOnLoad()">
	<h1>test20.jsp</h1>
	<!-- "클릭" 버튼 클릭 시 alert() 함수를 사용하여 "버튼 클릭됨!" 출력 -->
	<input type="button" value="버튼" onclick="alert('버튼 클릭됨!')">
	<button onclick="clickButton()">버튼</button><br>
	<input type="button" value="마우스를 가져다 대세요" id="btn"
		onmouseover="changeBtnTxt('마우스를 밖으로 빼세요')" 
		onmouseout="changeBtnTxt('마우스를 가져다 대세요')"><br>
	<img src="dog.png" id="img" onmouseover="changeImgCat()" onmouseout="changeImgDog()">	
	<hr>
	아이디 <input type="text" id="id" 
				onfocus="changeColor('SKYBLUE')" onblur="changeColor('WHITE')" onkeyup="checkId(this.value)">
	<span id="idResult"></span><br>
	패스워드 <input type="password" id="passwd" onblur="checkPasswd(this.value)"><span id="passwdResult"></span><br>
	<hr>
	
	<table border="1">
		<tr><th colspan="4">테이블 연습</th></tr>
		<tr onmouseover="changeColor2(this, '#FFCCCC')" onmouseout="changeColor2(this, 'WHITE')">
			<td width="100">1-1</td><td width="100">1-2</td><td width="100">1-3</td><td width="100">1-4</td>
		</tr>
		<tr onmouseover="changeColor2(this, '#FFCCCC')" onmouseout="changeColor2(this, 'WHITE')">
			<td width="100">2-1</td><td width="100">2-2</td><td width="100">2-3</td><td width="100">2-4</td>
		</tr>
		<tr onmouseover="changeColor2(this, '#FFCCCC')" onmouseout="changeColor2(this, 'WHITE')">
			<td width="100">3-1</td><td width="100">3-2</td><td width="100">3-3</td><td width="100">3-4</td>
		</tr>
	</table>	
</body>
</html>












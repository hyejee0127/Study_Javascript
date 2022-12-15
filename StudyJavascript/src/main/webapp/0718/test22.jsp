<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function print() {
		// 주로 폼에서 입력을 받는 태그들은 name 속성값으로 직접 접근 불가능(ex. document.name속성.속성명)
		// getElementById() 함수를 사용하여 document.폼이름.name속성명 으로 접근해야함 
// 		var id = document.id.value; // 사용 불가능한 문법(value 속성값을 찾을 수 없음)

		// < form 태그 내의 각 요소 접근 기본 문법 >
		// => document.폼name속성값.요소name속성값.속성명
// 		var id = document.fr.id.value;
// 		alert(id);

		// 아이디, 패스워드, 자기소개 입력값 출력
		alert(document.fr.id.value + "\n" + document.fr.passwd.value + "\n" + document.fr.ta.value);
	}
	
	function check() {
		// 아이디, 자기소개 항목 중에서 입력되지 않은 항목이 존재할 경우
		// 경고창(alert())을 통해 오류 메세지를 출력한 후 해당 항목에 커서 요청하고 작업 중단
		// => HTML 입력 태그 내에서 required 속성을 지정해도 동일한 기능 구현할 수 있음
		// => 입력값이 비어있지 않은지 확인하는 방법
		//    1) 해당 입력태그 value 속성값이 널스트링("")과 같은지 판별
		//    2)              ""           의 길이(length)가 0과 같은지 판별
		
		// if문을 사용하여 아이디 입력값이 널스트링("")과 같은지 판별
		if(document.fr.id.value == "") {
			alert("아이디 입력 필수!"); // 경고메세지 출력
			document.fr.id.focus(); // 아이디 입력창에 커서(포커스) 요청
			// 현재 수행중인 함수(check()) 를 종료하고 빠져나감
			return;
		} else if(document.fr.passwd.value.length == 0) { // 패스워드 입력 체크(길이로 체크)
			alert("패스워드 입력 필수!"); // 경고메세지 출력
			document.fr.passwd.focus(); // 패스워드 입력창에 커서(포커스) 요청
			// 현재 수행중인 함수(check()) 를 종료하고 빠져나감
			return;
		} else if(document.fr.ta.value == "") { // 자기소개 입력 체크
			alert("자기소개 입력 필수!"); // 경고메세지 출력
			document.fr.ta.focus(); // 자기소개 입력창에 커서(포커스) 요청
			// 현재 수행중인 함수(check()) 를 종료하고 빠져나감
			return;
		} 
		
		// if문 내에서 return 문을 만나면 실행되지 못하는 코드
		alert("모든 항목 입력 체크 완료!");
		// 아이디, 패스워드, 자기소개가 모두 입력되었을 경우
		// submit 버튼과 동일한 동작을 자바스크립트 내에서 수행하려면
		// document.폼name속성명.submit() 함수를 호출하면 된다!
		document.fr.submit();
	}
	
	function check2() {
		// form 태그의 onsubmit 속성에 return 함수명() 형식으로 함수를 호출하는 경우
		// submit 동작으로 페이지를 이동하기 전 함수를 자동으로 호출하게 되며
		// 함수 내에서 true 값을 리턴하면 submit 동작 수행, false 값을 리턴하면 submit 동작 취소
		if(document.fr.id.value == "") {
			alert("아이디 입력 필수!"); // 경고메세지 출력
			document.fr.id.focus(); // 아이디 입력창에 커서(포커스) 요청
			return false; // 현재 함수에서 submit 동작을 취소하기 위해 false 값 리턴
		} else if(document.fr.passwd.value.length == 0) { // 패스워드 입력 체크(길이로 체크)
			alert("패스워드 입력 필수!"); // 경고메세지 출력
			document.fr.passwd.focus(); // 패스워드 입력창에 커서(포커스) 요청
			return false; // 현재 함수에서 submit 동작을 취소하기 위해 false 값 리턴
		} else if(document.fr.ta.value == "") { // 자기소개 입력 체크
			alert("자기소개 입력 필수!"); // 경고메세지 출력
			document.fr.ta.focus(); // 자기소개 입력창에 커서(포커스) 요청
			return false; // 현재 함수에서 submit 동작을 취소하기 위해 false 값 리턴
		} 
		
		// 체크를 완료하고 submit 동작을 수행하려면 true 값 리턴
		return true; // submit 동작이 수행되므로 파라미터 전송과 함께 페이지 이동
	}
</script>
</head>
<body>
	<h1>test22.jsp - form 태그</h1>
	<!-- 
	[ form 태그 ]
	- 입력 데이터들(텍스트박스, 라디오버튼, 체크박스 등)을 하나의 묶음으로 관리하여
	  특정 페이지로 이동(포워딩) 시 파라미터 형태로 전달하는 역할의 태그
	  ex) 회원가입 폼, 로그인 폼, 상품주문 폼 등
	- 주로, <input type="submit"> 버튼을 생성하면 해당 버튼 클릭 시
	  form 태그의 action 속성에 지정된 페이지로 이동하면서 
	  form 태그 내에서 입력받은 데이터 모두를 파라미터로 전달함
	  => 또는, 자바스크립트 상에서 form 태그 객체의 submit() 함수를 호출해도 동일한 기능 수행
	- form 태그의 onsubmit 속성에 함수를 지정하면 폼의 submit 동작(이동)이 수행되기 전
	  해당 함수를 자동으로 호출하게 됨 
	  
	< 기본 문법 >
	<form action="이동할 페이지" method="이동할 방식" name="폼이름">
		// 폼 파라미터로 사용될 입력 폼 위치
		<input type="xxx">
		<input type="submit value="XXX">
	</form>
	-->
	<form action="test22-2.jsp" method="get" name="fr" onsubmit="return check2()">
		아이디 <input type="text" name="id">
		<!-- document.폼의name속성.요소의name속성.함수() 를 호출하여 해당 요소에 함수 적용 가능 -->
		<input type="button" value="focus()" onclick="document.fr.id.focus()"> <!-- 요소에 포커스 주기 -->
		<input type="button" value="blur()" onclick="document.fr.id.blur()"> <!-- 요소에서 포커스 빼기 -->
		<input type="button" value="select()" onclick="document.fr.id.select()"> <!-- 요소에 포커스 주기(값 선택) -->
		<br>
		<!-- 
		폼 태그 내의 입력 항목에 required 속성 설정할 경우 
		submit 버튼 클릭 시 입력되지 않은 항목이 있으면 submit 동작이 취소되고
		해당 입력 항목에 대한 포커스 요청하여 입력 요청 수행 
		-->
		패스워드 <input type="password" name="passwd" required="required">
		<br>
		자기소개 <textarea rows="5" cols="20" name="ta"></textarea>
		<br>
		<input type="button" value="입력값 출력" onclick="print()">
		<input type="button" value="입력값 체크" onclick="check()">
		<input type="reset" value="초기화"> <!-- reset 버튼 소속된 form 태그 입력항목 초기화 -->
		<input type="submit" value="전송"> <!-- submit 버튼 소속된 form 태그 입력항목 전송 -->
	</form>
</body>
</html>

















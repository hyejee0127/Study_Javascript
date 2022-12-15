<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function printHobby() {
		// document.fr.체크박스명[인덱스].속성
		// 체크박스에서 name 속성이 같은 체크박스끼리는 모두 하나의 배열로 관리됨
		// => 이 때, 배열의 이름은 체크박스 name 속성의 이름이 사용됨
		// => 배열에 저장된 실제 데이터 접근 시 배열의 value 속성에 접근
		// => 체크박스 체크 여부는 checked 속성에 접근(true : 체크, false : 미체크)
		// 첫번째 체크박스(프로그래밍)의 value 속성과 checked 속성 확인
// 		alert(document.fr.hobby[0].value + " : " + document.fr.hobby[0].checked);
		
		// 체크박스 3개(프로그래밍, 등산, 요리) 중 하나도 체크되지 않았을 경우
		// "취미를 최소 하나 이상 선택하세요!" 메세지 출력
// 		if(!document.fr.hobby[0].checked && 
// 				!document.fr.hobby[1].checked && !document.fr.hobby[2].checked) {
// 			alert("취미를 최소 하나 이상 선택하세요!");
// 		}
		
		// document.fr.hobby[] 부분이 반복되므로 반복되는 부분의 폼 객체의 요소를 변수에 저장도 가능
		var hobbyArr = document.fr.hobby; // 배열 접근 코드를 hobbyArr 로 압축 가능
		if(!hobbyArr[0].checked && !hobbyArr[1].checked && !hobbyArr[2].checked) {
			alert("취미를 최소 하나 이상 선택하세요!");
		}
	}
	
	function printGender() {
		// 남, 여 둘 중 하나도 선택되지 않았을 경우 "성별 선택 필수!" 출력(체크박스와 동일)
		var genderArr = document.fr.gender;
		if(!genderArr[0].checked && !genderArr[1].checked) {
			alert("성별 선택 필수!");
		} else {
			if(genderArr[0].checked) { // "남" 선택 시 "성별 : 남" 출력
				alert("성별 : 남");
			} else { // 아니면("여" 선택 시) "성별 : 여" 출력(else if(genderArr[1].checked) 와 동일)
				alert("성별 : 여");
			}
		}
		
	}
	
	function checkAll() {
		// 전체선택 체크박스의 체크 상태 출력
// 		alert(document.fr.check_all.checked);
		
		// 전체선택 체크박스의 체크 상태가 체크일 경우
		// => 프로그래밍, 등산, 요리의 체크박스 체크 상태를 체크로 변경
		// 아니면(체크 상태가 체크해제일 경우)
		// => 프로그래밍, 등산, 요리의 체크박스 체크 상태를 체크해제로 변경
		if(document.fr.check_all.checked) { // 체크 상태
			document.fr.hobby[0].checked = true; // 프로그래밍 항목 체크
			document.fr.hobby[1].checked = true; // 등산 항목 체크
			document.fr.hobby[2].checked = true; // 요리 항목 체크
		} else { // 체크 해제 상태
			document.fr.hobby[0].checked = false; // 프로그래밍 항목 체크 해제
			document.fr.hobby[1].checked = false; // 등산 항목 체크 해제
			document.fr.hobby[2].checked = false; // 요리 항목 체크 해제
		}
	}
	
	function checkAll2(isChecked) { // true or false 값 전달됨
		if(isChecked) { // 체크 상태
			document.fr.hobby[0].checked = true; // 프로그래밍 항목 체크
			document.fr.hobby[1].checked = true; // 등산 항목 체크
			document.fr.hobby[2].checked = true; // 요리 항목 체크
		} else { // 체크 해제 상태
			document.fr.hobby[0].checked = false; // 프로그래밍 항목 체크 해제
			document.fr.hobby[1].checked = false; // 등산 항목 체크 해제
			document.fr.hobby[2].checked = false; // 요리 항목 체크 해제
		}
	}
	
</script>
</head>
<body>
	<h1>test23.jsp</h1>
	<form action="test23-2.jsp" method="get" name="fr">
		<!-- 
		체크박스, 라디오버튼 등 묶음으로 관리되어야 하는 요소는
		name 속성값을 동일하게 설정할 경우 자동으로 그룹화 이루어짐
		=> 체크박스의 경우 복수개의 체크박스가 하나의 배열로 관리되도록 변함
		=> 라디오버튼의 경우 복수개의 항목 중 하나만 선택(단일 선택)되도록 변함
		-->	
		취미 : 
		<input type="checkbox" name="hobby" value="programming" checked="checked">프로그래밍
		<!-- onclick 이벤트 대신 onchange 이벤트도 체크박스에 동일한 동작 -->
		<input type="checkbox" name="hobby" value="등산" onchange="alert(this.checked)">등산
		<input type="checkbox" name="hobby" value="요리">요리
		<input type="checkbox" name="check_all" value="전체선택" onclick="checkAll()">전체선택
		<!-- 체크박스 체크 상태를 함수에 전달할 때 함수 파라미터에 this.checked 전달 가능 -->
		<input type="checkbox" name="check_all" value="전체선택2" onclick="checkAll2(this.checked)">전체선택2
		<input type="button" value="취미 체크완료" onclick="printHobby()">
		<br>
		성별 : 
		<input type="radio" name="gender" value="남">남
		<input type="radio" name="gender" value="여">여
		<input type="button" value="성별 선택완료" onclick="printGender()">
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>














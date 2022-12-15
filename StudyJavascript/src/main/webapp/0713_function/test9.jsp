<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	3. 매개변수가 있는 함수 정의
	- 외부에서 함수 호출 시 함수에 전달할 데이터를 전달인자(Argument)라고 함
	- 이 때, 전달인자를 전달받아 함수에서 사용하기 위해서는 매개변수(Parameter)가 필요함
	  => 자바스크립트에서 매개변수는 변수명만 지정하면 된다.
	- 외부에서 전달하는 데이터(전달인자)의 갯수와 동일한 갯수의 매개변수 선언 필수
	- 외부에서 전달받은 데이터의 타입에 따라 변수 data 의 타입이 결정
	  => 만약, 전달받은 데이터가 없을 경우 undefined 값이 저장됨
	- undefined 값이 아닌 특정 데이터를 기본값으로 지정하는 방법
	  => 함수 선언부에 "함수명(매개변수명 = 기본값)" 의 형태로 지정하거나  
	     함수 내에서 if문을 통해 undefined 값일 경우 기본값을 저장하는 코드를 추가
	  ex) function a(data = 0) {} // data 매개변수의 기본값이 0으로 설정됨
	  ex2) function a(data) {
		  		if(data == undefined) {
		  			data = 0;
		  		}
	       }
	  
	< 기본 문법 >
	function 함수명(매개변수...) {
		// 함수 내에서 매개변수에 저장된 값 자유롭게 접근 가능
		
	}
	*/
	
	// 외부로부터 전달인자를 받아 저장할 money 파라미터(매개변수)를 갖는 sister3() 메서드 정의
	function sister3(money) {
		document.write("동생 : 오빠가 과자 사먹으라고 " + money + "원을 줬다!<br>");
		money -= 200;
		document.write("동생 : 새우깡 사먹고 " + money + "원이 남았다!<br>");
	}
	
	document.write("동생아! 200원 줄테니 과자 사먹어라!<br>");
	// sister3() 함수 호출 => 전달인자로 200 이라는 정수 지정
	sister3(200);
	
</script>
</head>
<body>

</body>
</html>














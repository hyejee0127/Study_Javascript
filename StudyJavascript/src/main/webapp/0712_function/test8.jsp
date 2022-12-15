<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	2. 리턴값이 있는 함수 정의
	- 함수 실행 후 원래 위치로 돌아갈 때 어떤 값(데이터)를 호출한 곳으로 전달하는 형태
	- 함수 선언 시 자바의 메서드와 달리 별도의 리턴타입은 명시하지 않고
	  함수 내부에서 return 문을 사용하여 리턴할 데이터를 명시
	  => return 문에 지정된 데이터의 타입에 따라 리턴되는 데이터 타입이 자동으로 결정됨
	- 함수를 호출한 곳에서 함수로부터 리턴되는 데이터를 전달받아 사용 가능
	  => 변수에 저장하거나 출력문 등의 함수 또는 연산에 즉시 사용도 가능함
	- 리턴값은 동시에 하나의 값만 지정할 수 있음
	  
	function 함수이름([매개변수...]) {
		// 외부로부터 함수가 호출될 경우 실행할 코드들...
		return 리턴값;
	}
	*/
	
	function sister2() {
		document.write("동생 : 오빠가 물 떠오라고 시켜서 물을 떠왔다!<br>");
		
// 		var cup = "물"; // 리턴할 데이터를 변수에 저장
		// return 문을 사용하여 변수 cup 의 데이터를 호출한 곳으로 리턴(되돌려줌)
// 		return cup;

		// 변수에 저장하지 않고 값(리터럴)을 직접 리턴도 가능함
		return "물";
	} // sister2() 함수 끝
	
	document.write("동생아! 물 좀 떠온나!<br>");
	// sister2() 함수를 호출하면 코드 흐름이 이동하여 함수 내의 코드를 실행하고
	// return 문에 의해 리턴되는 리턴값을 함수 호출 코드 위치에서 전달받으므로
	// 리턴값을 변수에 저장하거나 바로 사용할 수 있음 
// 	var result = sister2(); // 리턴값을 변수 result 에 저장(var result = "물"; 과 동일한 코드가 됨)
// 	document.write("동생이 떠다 준 것 : " + result + "<br>");
	
	// 리턴값을 변수에 저장하지 않고 바로 사용하는 경우
	document.write("동생이 떠다 준 것 : " + sister2() + "<br>");
	
// 	var x = confirm();
// 	document.write(x);
// 	document.write(confirm());
</script>
</head>
<body>

</body>
</html>

















/**
 * 
 */
 function login(id, passwd) {
	// id 가 "admin" 이고 passwd 가 "1234" 일 경우 로그인 성공이므로 true 리턴하고
	// 아니면(하나라도 다를 경우) 로그인 실패이므로 false 리턴
//	if(id == "admin" && passwd == "1234") {
//		return true;
//	} else {
//		return false;
//	}

	var result;
	
	if(id == "admin" && passwd == "1234") {
		result = true;
	} else {
		result = false;
	}
	
	return result;
	
}









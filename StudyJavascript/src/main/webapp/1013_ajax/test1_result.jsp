<%@page import="java.sql.Connection"%>
<%@page import="ajax.JdbcUtil"%>
<%@page import="ajax.MemberBean"%>
<%@page import="ajax.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- AJAX 로 요청받은 id, passwd 파라미터 접근 시 일반적인 접근 방법 그대로 사용 -->
	<!-- request.getParameter() 또는 EL 의 param 사용 -->
<%-- 	${param.id } 님 반갑습니다.<br> --%>
<%-- 	입력하신 패스워드는 ${param.passwd } 입니다. --%>

	<!-- JSTL 와 EL 을 조합하여 아이디가 "admin" 이면 "관리자로 로그인 했습니다." 출력하기 -->
<%-- 	<c:if test="${param.id eq 'admin'}"> --%>
<!-- 		<h3>관리자로 로그인 했습니다.</h3> -->
<%-- 	</c:if> --%>

	<!-- 전달받은 아이디, 패스워드 파라미터를 사용하여 로그인 작업 수행 -->
	<!-- MemberDAO 객체의 memberLogin() 메서드를 호출 -->
	<!-- 파라미터 : MemberBean 객체   리턴타입 : boolean(isLoginSuccess) -->
	<!-- 로그인 성공 시 "로그인 성공", 실패 시 "로그인 실패" 출력 -->
	<%
	MemberBean member = new MemberBean();
	member.setId(request.getParameter("id"));
	member.setPasswd(request.getParameter("passwd"));
	
	Connection con = JdbcUtil.getConnection();
	System.out.println(con);
	MemberDAO dao = MemberDAO.getInstance();
	dao.setConnection(con);
	
	boolean isLoginSuccess = dao.memberLogin(member);
	
	if(isLoginSuccess) {
		out.println("<h3>로그인 성공!<br>" + member.getId() + " 님, 환영합니다!</h3>");
	} else {
		out.println("<h3>로그인 실패!</h3>");
	}
	
	JdbcUtil.close(con);
	%>
</body>
</html>











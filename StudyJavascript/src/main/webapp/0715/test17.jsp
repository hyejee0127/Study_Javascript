<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// document 객체 기초 => document 객체가 HTML 문서의 시작을 가리킴(= DOM 객체의 진입점)
	//	alert(document); // object HTMLDocument 출력됨 => HTML 문서 자체를 관리하는 객체
	
// 	alert("document.documentElement : " + document.documentElement);
	// object HTMLHtmlElement 출력됨 => HTML 문서 내의 <html> 태그 정보를 관리하는 객체
	
// 	alert("document.head : " + document.head);
	// object HTMLHeadElement 출력됨 => HTML 문서 내의 <head> 태그 정보를 관리하는 객체
	
	alert("document.body : " + document.body);
	// object HtmlBodyElement 출력되어야 함 => HTML 문서 내의 <body> 태그 정보를 관리하는 객체
	// 단, body 태그 내의 문서 내용이 존재하지 않을 경우 null 값이 출력됨
	// body 태그가 로딩되기 전에 접근하면 null 값이 출력됨 = body 를 관리하는 객체가 없다!
</script>
</head>
<body>
	<script>
		alert("body 태그 내 - document.body : " + document.body);
		// object HTMLBodyElement 출력됨
		// 이 alert() 함수가 호출되는 시점에서는 <body> 태그가 로딩된 후이므로
		// <body> 태그를 관리하는 HTMLBodyElement 객체가 존재하기 때문
	</script>
	
	<h1>test17.jsp</h1>
</body>
</html>














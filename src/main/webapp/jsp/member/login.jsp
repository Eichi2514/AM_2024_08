<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String loginId = "";
%>
<%
String loginPw = "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<button><a href="../home/main">처음으로</a></button>

	<h2>로그인</h2>

	<form method="POST" action="doLogin">
		<div>
			<div>ID</div>
			<div>
				<input type="text" placeholder="ID 입력" name="loginId" />
			</div>
		</div>
		<div>
			<div>PassWord</div>
			<div>
				<input type="text" placeholder="PassWord 입력" name="loginPw" />
			</div>
		</div>
		<br />
		<button type="submit">로그인</button>
		<button type="button">
			<a href="../home/main">취소</a>
		</button>
	</form>
	
	<style type="text/css">
a {
	color: black;
	text-decoration: none;
}
</style>

</body>
</html>
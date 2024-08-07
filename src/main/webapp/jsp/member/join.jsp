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
<title>회원가입</title>
</head>
<body>

	<button><a href="../home/main">처음으로</a></button>

	<h2>회원가입</h2>

	<form method="POST" action="doJoin">
		<div>
			<div>ID</div>
			<div>
				<input type="text" placeholder="ID 입력" name="loginId" />
				<button type="submit">중복확인</button>
			</div>
		</div>
		<div>
			<div>PassWord</div>
			<div>
				<input type="text" placeholder="PassWord 입력" name="loginPw" />
			</div>
		</div>
		<div>
			<div>PassWord 확인</div>
			<div>
				<input type="text" placeholder="PassWord 입력" name="loginPw2" />
				<button type="submit">중복확인</button>
			</div>
		</div>
		<div>
			<div>이름</div>
			<div>
				<input type="text" placeholder="이름 입력" name="name" />
			</div>
		</div>
		<br />
		<button type="submit">회원가입</button>
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
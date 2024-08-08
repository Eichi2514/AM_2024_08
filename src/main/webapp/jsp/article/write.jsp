<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>

	<button><a href="../home/main">메인</a></button>

	<h2>글쓰기</h2>

	<form method="POST" action="doWrite">
		<div>
			제목 : <input type="text" placeholder="제목 입력" name="title" />
		</div>
		<div>
			내용 :
			<textarea type="text" placeholder="내용 입력" name="body"></textarea>
		</div>
		<br />
		<button type="submit">저장</button>
		<button type="button"><a href="../home/main">취소</a></button>
	</form>
	<style type="text/css">
a {
	color: black;
	text-decoration: none;
}
</style>
</body>
</html>
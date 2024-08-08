<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세페이지</title>
</head>
<body>

	<button type="button"><a href="../home/main">메인</a></button>

	<h2>게시물 상세페이지</h2>

	<div>
		작성자 :
		<%=articleRow.get("memberId")%></div>
	<div>
		날짜 :
		<%=articleRow.get("regDate")%></div>
	<div>
		제목 :
		<%=articleRow.get("title")%></div>
	<div>
		내용 :
		<%=articleRow.get("body")%></div>

	<button type="button">
		<a href="list">리스트</a>
	</button>
	<style type="text/css">
a {
	color: black;
	text-decoration: none;
}
</body>
</html>
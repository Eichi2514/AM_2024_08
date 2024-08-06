<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>

	<h2>게시물 목록 v2</h2>
	<ul>
    <%
	for (int i = 0; i < articleRows.size(); i++) {
	%>
		<li>
		<%=articleRows.get(i).get("id")%>번, 
		<%=articleRows.get(i).get("regDate")%>, 
		<%=articleRows.get(i).get("title")%>, 
		<%=articleRows.get(i).get("body")%>
		</li>
	<%
	}
	%>
	</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int dan = Integer.parseInt(request.getParameter("dan"));
int limite = Integer.parseInt(request.getParameter("limite"));
String color = request.getParameter("color");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
	<h1>
		==<%=dan%>단==
	</h1>
	<%
	for (int i = 1; i <= limite; i++) {
	%>
	<div style="color:<%=color%>"><%=dan%>
		*
		<%=i%>
		=
		<%=dan * i%></div>
	<%
	}
	%>
</body>
</html>
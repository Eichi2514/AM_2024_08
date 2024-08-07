<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
boolean isLogined = (boolean) request.getAttribute("isLogined");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<h1>MAIN</h1>
	<ul>
		<li><button>
				<a href="../member/join">회원가입</a>
			</button></li>
		<br />
		<%
		if (isLogined == false) {
		%>
		<li><button>
				<a href="../member/login">로그인</a>
			</button></li>
		<%
		} else {
		%>
		<li><button>
				<a href="../member/doLogout">로그아웃</a>
			</button></li>
		<%
		}
		%>

		<br />

		<li><button>
				<a href="../article/list">리스트</a>
			</button></li>
		<br />
	</ul>

	<style type="text/css">
li {
	list-style: none;
}

a {
	color: black;
	text-decoration: none;
}

li.log_H {
	display: none;
}
</style>

</body>
</html>
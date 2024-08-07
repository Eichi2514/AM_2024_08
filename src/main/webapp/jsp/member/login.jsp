<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<button><a href="../home/main">처음으로</a></button>

	<h2>로그인</h2>

	<script type="text/javascript">
		function LoginForm__submit(form) {

			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();

			if (loginId.length == 0) {
				alert('아이디를 입력해주세요');
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 입력해주세요');
				return;
			}
			
			form.submit();

		}
	</script>


	<form method="POST" action="doLogin"
		onsubmit="LoginForm__submit(this); return false;">
		<div>
			아이디 <br /> <input autocomplete="off" type="text"
				placeholder="아이디 입력" name="loginId" />
		</div>
		<div>
			비밀번호 <br /> <input autocomplete="off" type="text"
				placeholder="비밀번호 입력" name="loginPw" />
		</div>
		
		<br />
		<button type="submit">확인</button>
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
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<button type="button">
		<a href="../home/main">처음으로</a>
	</button>

	<h2>회원가입</h2>

	<script type="text/javascript">
		function JoinForm__submit(form) {

			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();
			let loginPwConfirm = form.loginPwConfirm.value.trim();
			let name = form.name.value.trim();

			if (loginId.length == 0) {
				alert('아이디를 입력해주세요');
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 입력해주세요');
				return;
			}
			if (loginPw != loginPwConfirm) {
				alert('비번가 일치하지 않습니다');
				form.loginPw.focus();
				return;
			}

			if (name.length == 0) {
				alert('이름을 입력해주세요');
				return;
			}

			form.submit();

		}
	</script>


	<form method="POST" action="doJoin"
		onsubmit="JoinForm__submit(this); return false;">
		<div>
			아이디 <br /> <input autocomplete="off" type="text"
				placeholder="아이디 입력" name="loginId" />
			<button type="submit">중복확인</button>
		</div>
		<div>
			비밀번호 <br /> <input autocomplete="off" type="text"
				placeholder="비밀번호 입력" name="loginPw" />
		</div>
		<div>
			비밀번호 확인<br /> <input autocomplete="off" type="text"
				placeholder="비밀번호 입력" name="loginPwConfirm" />
			<button type="submit">확인</button>
		</div>
		<div>
			이름<br /> <input autocomplete="off" type="text" placeholder="이름 입력"
				name="name" />
		</div>
		<br />
		<button type="submit">가입</button>
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
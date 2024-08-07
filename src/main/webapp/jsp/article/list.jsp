<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");

int cPage = (int) request.getAttribute("page");
int totalPage = (int) request.getAttribute("totalPage");
int totalCnt = (int) request.getAttribute("totalCnt");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>

	<h2>게시물 목록</h2>

	<button>
		<a href="../home/main">처음으로</a>
	</button>
	<br />
	<button>
		<a href="../article/write">글 작성</a>
	</button>
	<div>
		총 게시글 수 :
		<%=totalCnt%>
		개
	</div>
	<%
	int cPage_N = cPage - 1;
	if (cPage_N == 0)
		cPage_N = 1;
	int cPage_D = cPage + 1;
	if (cPage_D >= totalPage)
		cPage_D = totalPage;
	%>
	<button>
		<a href="list?page=<%=cPage_N%>">이전</a>
	</button>
	<button>
		<a href="list?page=<%=cPage_D%>">다음</a>
	</button>

	<table style="border-collapse: collapse; border-color: green;"
		border="1px">
		<thead>
			<tr>
				<th>번호</th>
				<th>날짜</th>
				<th>제목</th>
				<th>내용</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Map<String, Object> articleRow : articleRows) {
			%>
			<tr style="text-align: center;">
				<td><%=articleRow.get("id")%></td>
				<td><%=articleRow.get("regDate")%></td>
				<td><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("title")%></a></td>
				<td><%=articleRow.get("body")%></td>
				<td><button>
						<a href="modify?id=<%=articleRow.get("id")%>">수정</a>
					</button></td>
				<td><button>
						<a href="doDelete?id=<%=articleRow.get("id")%>">삭제</a>
					</button></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<style type="text/css">
.page {
	font-size: 1.4rem;
}

a {
	color: black;
	text-decoration: none;
}

.page>a.cPage {
	color: red;
	text-decoration: underline;
}
</style>
	<div class="page">
		<%
		if (cPage < 6) {
			for (int i = 1; i <= 10; i++) {
				if (i < 10) {
		%>
		<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>">0<%=i%></a>
		<%
		} else {
		%>
		<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>"><%=i%></a>
		<%
		}
		}
		} else if (cPage < totalPage - 4) {
		for (int i = cPage - 4; i <= cPage + 5 && i <= totalPage; i++) {
		if (i < 10) {
		%>
		<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>">0<%=i%></a>
		<%
		} else {
		%>
		<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>"><%=i%></a>
		<%
		}
		}
		} else {
		for (int i = totalPage - 9; i <= totalPage; i++) {
		if (i < 10) {
		%>
		<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>">0<%=i%></a>
		<%
		} else {
		%>
		<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>"><%=i%></a>
		<%
		}
		}
		}
		%>
	</div>
</body>
</html>
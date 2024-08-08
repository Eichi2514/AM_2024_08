package com.KoreaIT.java.jsp_AM.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Map;

import com.KoreaIT.java.jsp_AM.util.DBUtil;
import com.KoreaIT.java.jsp_AM.util.SecSql;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/article/modify")
public class ArticleModifyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		// DB 연결
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("클래스 x");
			e.printStackTrace();
		}

		String url = "jdbc:mysql://127.0.0.1:3306/24_08_JAM?useUnicode=true&characterEncoding=utf8&autoReconnect=true&serverTimezone=Asia/Seoul";

		String user = "root";
		String password = "";

		Connection conn = null;

		try {
			conn = DriverManager.getConnection(url, user, password);

			int id = Integer.parseInt(request.getParameter("id"));

			SecSql sql = SecSql.from("SELECT *");
			sql.append("FROM article");
			sql.append("WHERE id = ?", id);

			Map<String, Object> articleRow = DBUtil.selectRow(conn, sql);

			if (articleRow.get("id") == null) {
				response.getWriter().append(String.format(
						"<script>alert('%d번 글은 존재하지 않습니다'); location.replace('http://localhost:8080/JSP_AM_2024_08/home/main');;</script>",
						id));
			}
			int loginedMemberId = -1;
			
			HttpSession session = request.getSession();
			
			if (session.getAttribute("loginedMemberId") != null) {
				loginedMemberId = (int) session.getAttribute("loginedMemberId");

			}
			if (loginedMemberId != (int) articleRow.get("memberId")) {
				response.getWriter()
						.append(String.format("<script>alert('수정 권한이 없습니다'); location.replace('list');;</script>"));
			}

			else {

				request.setAttribute("articleRow", articleRow);

				request.getRequestDispatcher("/jsp/article/modify.jsp").forward(request, response);
			}

		} catch (SQLException e) {
			System.out.println("에러 1 : " + e);
		} finally {
			try {
				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
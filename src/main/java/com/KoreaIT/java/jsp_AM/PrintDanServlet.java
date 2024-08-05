package com.KoreaIT.java.jsp_AM;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;




@WebServlet("/printDan")
public class PrintDanServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
        // Servlet 변수를 str1에 저장
		String str1 = request.getParameter("dan");
		
        // str1을 형변환해서 dan에 저장
		int dan = Integer.parseInt(str1);
		
		response.getWriter().append("=="+dan+"ss단==<br>");
		
		for(int i = 1; i <= 9; i++) {
			response.getWriter().append(String.format("%d * %d = %d<br>", dan, i, dan*i));
		}
		
	}
}

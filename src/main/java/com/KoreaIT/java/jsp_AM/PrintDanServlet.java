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

		String str1 = request.getParameter("dan");
		if (str1 == null) str1 = "1"; 
		int dan = Integer.parseInt(str1);
        
        String str2 = request.getParameter("limit");
        if (str2 == null) str2 = "1";
        int limit = Integer.parseInt(str2);
        
        String str3 = request.getParameter("color");
        if (str3 == null) str3 = "black";
		
		response.getWriter().append("<div style='color:"+str3+"'>==" + dan + "단==</div>");

		for (int i = 1; i <= limit; i++) {
			response.getWriter().append(String.format("<div style='color:%s'>%d * %d = %d</div>", str3,dan, i, dan * i));
		}
	}
}

package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.mysql.cj.Session;

import jakarta.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String password=request.getParameter("pwd");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session;
//		RequestDispatcher rd;
		 
		if ("123".equals(uname) && "123".equals(password)) {
			  response.sendRedirect("Home.jsp");
			

		} else {
			session=request.getSession();
			session.setAttribute("reg-not", "Invalid Username and Password..!");
			response.sendRedirect("AdminLogin.jsp");
		}
		
		
	}
	
}

package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String uname=request.getParameter("uname");
		String mobile=request.getParameter("mobileno");
		String email=request.getParameter("email");
		String bldgrp=request.getParameter("bldgrp");
		
		UserDetails us=new UserDetails();
		us.setName(uname);
		us.setMobileno(mobile);
		us.setEmail(email);
		us.setBldgrp(bldgrp);
		
		UserDAO dao =new UserDAO(DBConnect.getConn());
		boolean f=dao.adddonor(us);
		PrintWriter out=response.getWriter();
		
		if (f) {
			out.print("User registration Successfully..!");
			
		}
		else {
			out.print("data not inserted");
		}
	}
}

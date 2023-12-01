package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.DAO.AddDonorDAO;
import com.Db.DBConnect;
import com.User.AddDonor;

@WebServlet("/AddDonorServlet")
public class AddDonorServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response)
			throws ServletException, IOException {
		
		String name=request.getParameter("uname");
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String bldgrp=request.getParameter("bldgrp");
		String address=request.getParameter("address");
		
		AddDonor ad=new AddDonor();
		ad.setName(name);
		ad.setFname(fname);
		ad.setMname(mname);
		ad.setMobile(mobile);
		ad.setGender(gender);
		ad.setEmail(email);
		ad.setBldgrp(bldgrp);
		ad.setAddress(address);
		
		AddDonorDAO dao =new AddDonorDAO(DBConnect.getConn());
		boolean f=dao.addblddonor(ad);
		PrintWriter out=response.getWriter();
		
		if (f) {
			out.print("User registration Successfully..!");
			
			
		}
		else {
			out.print("data not inserted");
		}
		
		
	}
	

}

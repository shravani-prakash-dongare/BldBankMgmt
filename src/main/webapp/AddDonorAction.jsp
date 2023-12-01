<%@page import="java.sql.*"%>
<%@page import="com.Db.DBConnect"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("uname");
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String bldgrp = request.getParameter("bldgrp");
String address = request.getParameter("address");

try{
// 	(id,name,fname,mname,mobileno,gender,email,bldgrp,address)
	
	Connection conn=DBConnect.getConn();
	PreparedStatement ps=conn.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, fname);
	ps.setString(4, mname);
	ps.setString(5, mobile);
	ps.setString(6, gender);
	ps.setString(7, email);
	ps.setString(8, bldgrp);
	ps.setString(9, address);
	ps.executeUpdate();
	
	response.sendRedirect("AddDonor.jsp?msg=valid");
	
	
}catch(Exception e){
	response.sendRedirect("AddDonor.jsp?msg=invalid");
	e.printStackTrace();
}
%>



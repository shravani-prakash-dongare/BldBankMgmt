<%@page import="java.sql.*"%>
<%@page import="com.Db.DBConnect"%>
<%

String uname = request.getParameter("uname");
String mobile = request.getParameter("mobileno");
String email = request.getParameter("email");
String bldgrp = request.getParameter("bldgrp");
String status = "pending";
try {
	Connection conn=DBConnect.getConn();
	PreparedStatement ps=conn.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	ps.setString(1, uname);
	ps.setString(2, mobile);
	ps.setString(3, email);
	ps.setString(4, bldgrp);
	ps.setString(5, status);
	ps.executeLargeUpdate();
	
	response.sendRedirect("index1.jsp?msg=valid");
	
} catch (Exception e) {
	response.sendRedirect("index1.jsp?msg=invalid");
	
	e.printStackTrace();
}
%>

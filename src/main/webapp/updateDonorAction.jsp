<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>

<%
String id = request.getParameter("id");
String name = request.getParameter("uname");
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String address = request.getParameter("address");


try{
	Connection conn=DBConnect.getConn();
	PreparedStatement ps=conn.prepareStatement("update donor set name=?,fname=?,mname=?,mobileno=?,email=?,address=? where id=?");
	ps.setString(1, name);
	ps.setString(2, fname);
	ps.setString(3, mname);
	ps.setString(4, mobile);
	ps.setString(5, email);
	ps.setString(6, address);
	ps.setString(7, id);
	ps.executeUpdate();
	
	response.sendRedirect("List.jsp?msg=valid");
	
	
}catch(Exception e){
	response.sendRedirect("List.jsp?msg=invalid");
	e.printStackTrace();
}
%>



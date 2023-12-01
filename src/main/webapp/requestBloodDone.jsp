<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>


<%
String email=request.getParameter("email");
try{
	Connection conn=DBConnect.getConn();
	PreparedStatement ps=conn.prepareStatement("Update bloodrequest set status='completed' where email=?");
	ps.setString(1, email);
	ps.executeUpdate();
	response.sendRedirect("RequestBlood.jsp");

}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("RequestBlood.jsp");

}


%>
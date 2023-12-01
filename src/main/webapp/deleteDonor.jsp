<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>

<%
try{
	String id=request.getParameter("id");
	
	Connection conn=DBConnect.getConn();
	Statement st=conn.createStatement();
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("List.jsp?msg=deleted");
	
}catch(Exception e){
	response.sendRedirect("List.jsp?msg=invalid");
	e.printStackTrace();
}
%>
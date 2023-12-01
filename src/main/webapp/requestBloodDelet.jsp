<%@page import="java.sql.*"%>
<%@page import="com.Db.DBConnect"%>



<%
String email=request.getParameter("email");
try{
	Connection conn=DBConnect.getConn();
	Statement st =conn.createStatement();
	st.executeUpdate("delete from bloodrequest where email='"+email+"'"); 
	response.sendRedirect("RequestBlood.jsp");

}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("RequestBlood.jsp");

}


%>
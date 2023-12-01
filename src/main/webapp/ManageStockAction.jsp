<%@page import="java.sql.*"%>
<%@page import="com.Db.DBConnect"%>
<%

String bldgrp=request.getParameter("bldgrp");
String incdec=request.getParameter("incdec");
String units=request.getParameter("units");

int units1=Integer.parseInt(units);
try{
	
	Connection conn=DBConnect.getConn();
	Statement st=conn.createStatement();
	if(incdec.equals("inc")){
		
		st.executeUpdate("update stock set units=units+'"+units1+"'where bldgrp='"+bldgrp+"'"); 
		response.sendRedirect("ManageStock.jsp?msg.valid");
	}else{
		st.executeUpdate("update stock set units=units-'"+units1+"'where bldgrp='"+bldgrp+"'"); 
		response.sendRedirect("ManageStock.jsp?msg.valid");
		
	}
	
}catch(Exception e){
	response.sendRedirect("ManageStock.jsp?msg.valid");
	e.printStackTrace();
}
%>
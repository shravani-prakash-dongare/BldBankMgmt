<%

String username=request.getParameter("uname");
String password=request.getParameter("pwd");

if("admin".equals(username)&& "123".equals(password)){
	response.sendRedirect("Home.jsp");
}
else{
	response.sendRedirect("AdminLogin.jsp?msg=invalid");
}

%>
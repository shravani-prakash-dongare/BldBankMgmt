<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="all_content/allcss.jsp"%>
<style>
body{
	background-color:#008000;
}
.submitbtn {
	border-radius: 50px;
}

.submitbtn:hover {
	background-color: black;
}

.input {
	height: 40px;
}
</style>
</head>
<body class=" text-center">
	<%@include file="all_content/navbar.jsp"%>
	
	<%
	Connection conn=DBConnect.getConn();
	System.out.print(conn);
	
	%>
	
	
	<div class=" bg-light">
		<div class="container">
			<div id="carouselExampleSlidesOnly" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner ">
					<div class="carousel-item">
						<img src="images/bldicon.png" class="d-block w-100 "
							alt="unsupported images" height="550vh">
					</div>
					<div class="carousel-item active">
						<img src="images/background.png" class="d-block w-100"
							alt="unsupported images" height="550vh">
					</div>
					<div class="carousel-item">
						<img src="images/bldicon.png" class="d-block w-100 "
							alt="unsupported images" height="550vh">
					</div>
					<div class="carousel-item ">
						<img src="images/background.png" class="d-block w-100"
							alt="unsupported images" height="550vh">
					</div>
				</div>
			</div>
		</div>
	
		<div class="bg-light">
			<br>
		</div>
	</div>
	<div class=" mt-1 text-center">
		<br>
		
		<%
		String msg=request.getParameter("msg");
		
		if("valid".equals(msg)){
			%>
			<center><font color="red" size="5">Form Submitted Successfully. You will notify within 8 Hours  </font></center>
			<% 
		}
		%>
		
		<%
		if("invalid".equals(msg)){
			%>
			<center><font color="red" size="5">Invalid data, try Again.! </font></center>
			<% 
		}
		%>
		<h2>Enter a Details Request for Blood</h2>
		<form action="indexFormAction.jsp" method="post" class="form-inline mt-3">
			<input 
			    type="text" id="name" placeholder="Enter Full name"
				class="input" name="uname" required> 
			<input 
			    type="number" id="mono" name="mobileno"
				placeholder="Enter Mobile No " class="input" required> 
			<input
				type="email" id="email" name="email"
				placeholder="Enter Email Address" class="input" required> 
			<input 
			    type="text" id="bldgrp" name="bldgrp"
				placeholder="Enter Blood group" class="input" required ><br><br> 
			<button
				type="Submit"
				class="btn btn-dark text-light btn-outline-light btn-lg  submitbtn">Submit</button>
		</form>
		<br>
		<div class="bg-dark"><br></div>
		<div class="text-center">
			<br>
			<b> All Right Reserverd &copy; ShravaniSoftwares :: 2023</b>
		</div>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.Db.DBConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD Donor Page</title>
<%@include file="all_content/allcss.jsp"%>
</head>
<style>
body {
	background-color: green;
}

li {
	border-right: .5px solid grey;
}

.radius {
	border-radius: 30px;
}

.div-responsive {
	width: 380px;
}

label {
	font-size: 20px;
}

.input {
	padding: 0 25px;
	width: 700px;
	height: 40px;
	border-radius: 30px;
	font-size: 17px;
	border: none;
}

.bg-custom {
	background-color: green;
}

.copy {
	margin-top: 50px;
}
</style>
<body>

	<%@include file="all_content/navbar1.jsp"%>

	<div class="container ">
		<br>
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card bg-custom">
					<div class="card-body">
						<div class="main-box box">


							<form action="AddDonorAction.jsp" method="post"
								class="text-light">
								<%
								String msg = request.getParameter("msg");

								if ("valid".equals(msg)) {
								%>

								<div  class="text-center">
									<font color="red" size="5"> Successfully Added</font>
								</div>
								<%
								}
								%>
								<%
								if ("invalid".equals(msg)) {
								%>
								<div class="text-center">
									<font color="red" size="5"> Something Went Wrong.! Try Again</font>
								</div >
								<%
								}
								%>

								<%
								int id = 1;
								try {
									Connection conn = DBConnect.getConn();
									Statement st = conn.createStatement();
									ResultSet rs = st.executeQuery("select max(id) from donor");
									if (rs.next()) {
										id = rs.getInt(1);
										id = id + 1;
									}
								%>

								<div class="container">
									<h1 style="color: red;">
										Donor ID:<%out.println(id);%>
									</h1>
								<%
								} 
								catch (Exception e) {
									e.printStackTrace();
								}
								%>
								
								</div>
								<input type="hidden" name="id" value="<%out.println(id);%>">
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Name</label> <input
										type="text" class="form-control radius" name="uname"
										id="inputAddress2" placeholder="Enter Your Name " required>
									<hr>
								</div>
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Father
										Name</label> <input type="text" class="form-control radius"
										id="inputAddress2" name="fname"
										placeholder="Enter Your Father Name " required>
									<hr>
								</div>
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Mother
										Name</label> <input type="text" class="form-control radius"
										id="inputAddress2" name="mname"
										placeholder="Enter Your Mother Name " required>

								</div>
								<hr>
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Mobile No</label>
									<input type="number" class="form-control radius"
										id="inputAddress2" name="mobile"
										placeholder="Enter Your Mobile No " required>
								</div>
								<hr>
								<div class="col-12">
									<label class="visually" for="inlineFormSelectPref">Gender</label>
									<select class="form-select radius" id="inlineFormSelectPref"
										name="gender">
										<option selected>Male</option>
										<option>Female</option>
										<option>Other</option>
									</select>
								</div>
								<hr>
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Email Id</label>
									<input type="email" class="form-control radius" id="email"
										name="email" placeholder="Enter Your Email Id " required>
								</div>
								<hr>
								<div class="col-12">
									<label class="visually" for="inlineFormSelectPref">Blood
										Group</label> <select class="form-select radius" name="bldgrp"
										id="inlineFormSelectPref">
										<option>A+</option>
										<option>A-</option>
										<option>B+</option>
										<option>B-</option>
										<option>AB+</option>
										<option>AB-</option>
										<option>O+</option>
										<option>O-</option>
									</select>
								</div>
								<hr>
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Address</label> <input
										type="text" class="form-control radius" id="inputAddress2"
										name="address" placeholder="Apartment, studio, or floor"
										required>
								</div>
								<hr>
						</div>
						<div class="input-box text-center">
							<button type="Submit"
								class="btn btn-dark text-light btn-outline-light btn-lg  submitbtn">ADD</button>
						</div>
						</form>
					</div>
				</div>
			</div>


		</div>
	</div>

	<div class="text-center mt-2">
		<b> All Right Reserverd &copy; ShravaniSoftwares :: 2023</b>
	</div>
</body>
</html>
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

							<form action="updateDonorAction.jsp" method="post"
								class="text-light">
								<%
								String msg = request.getParameter("msg");

								if ("valid".equals(msg)) {
								%>

								<div class="text-center">
									<font color="red" size="5"> Successfully Updated</font>
								</div>
								<%
								}
								%>
								<%
								if ("invalid".equals(msg)) {
								%>
								<div class="text-center">
									<font color="red" size="5"> Something Went Wrong.! Try
										Again</font>
								</div>
								<%
								}
								%>
							
						</div>



						<%
						String id = request.getParameter("id");

						try {
							Connection conn = DBConnect.getConn();
							Statement st = conn.createStatement();
							ResultSet rs = st.executeQuery("select * from donor where id = '" + id + "'");
							while (rs.next()) {
						%>


						<input type="hidden" name="id" value="<%out.println(id);%>">
						<div class="col-12">
							<label for="inputAddress2" class="form-label">Name</label> <input
								type="text" class="form-control radius" name="uname"
								value="<%=rs.getString(2)%>" id="inputAddress2"
								placeholder="Enter Your Name " required>
							<hr>
						</div>
						<div class="col-12">
							<label for="inputAddress2" class="form-label">Father Name</label>
							<input type="text" class="form-control radius" id="inputAddress2" value="<%=rs.getString(3)%>"
								name="fname" placeholder="Enter Your Father Name " required>
							<hr>
						</div>
						<div class="col-12">
							<label for="inputAddress2" class="form-label">Mother Name</label>
							<input type="text" class="form-control radius" id="inputAddress2" value="<%=rs.getString(4)%>"
								name="mname" placeholder="Enter Your Mother Name " required>

						</div>
						<hr>
						<div class="col-12">
							<label for="inputAddress2" class="form-label">Mobile No</label> <input
								type="number" class="form-control radius" id="inputAddress2" value="<%=rs.getString(5)%>"
								name="mobile" placeholder="Enter Your Mobile No " required>
						</div>
						<hr>
						<div class="col-12">
							<label for="inputAddress2" class="form-label">Email Id</label> <input
								type="email" class="form-control radius" id="email" name="email" value="<%=rs.getString(7)%>"
								placeholder="Enter Your Email Id " required>
						</div>
						<hr>
						
						<div class="col-12">
							<label for="inputAddress2" class="form-label">Address</label> <input
								type="text" class="form-control radius" id="inputAddress2"
								name="address" placeholder="Apartment, studio, or floor" value="<%=rs.getString(9)%>"
								required>
						</div>
						<hr>
					</div>
					<div class="input-box text-center">
						<button type="Submit"
							class="btn btn-dark text-light btn-outline-light btn-lg  submitbtn">UPDATE</button>
					</div>
					<br>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	margin-top: 10px;
	margin-bottom: 10px;
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
	<%@include file="all_content/navbar.jsp"%>

	<div class="container text-center mt-5">
		<br>
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card bg-custom">


					<div class="card-body">

						<div class="main-box box">
							<form action="AdminloginAction.jsp" method="post"
								class="text-light">
								<div class="col-12">
									<%
								String msg=request.getParameter("msg");
								
								if("invalid".equals(msg)){
								%>
									<center>
										<font color="red" size="5">Invalid Username And Password</font>
									</center>
									<%
									}
									%>
									
									<label for="inputAddress2" class="form-label"><b>Username</b></label>
									<input type="text" class="form-control radius" name="uname"
										id="inputAddress2" placeholder="Enter Your Name ">
								</div>
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Password
										Name</label> <input type="password" class="form-control radius"
										id="inputAddress2" name="pwd"
										placeholder="Enter Your Father Name ">
								</div>
						</div>
						<br>
						<div class="input-box">
							<button type="Submit"
								class="btn btn-dark text-light btn-outline-light btn-lg  submitbtn">LOGIN</button>
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
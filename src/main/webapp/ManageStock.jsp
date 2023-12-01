<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.Db.DBConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Stock Page</title>
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
	width: 370px;
}
</style>
<body>
	<%@include file="all_content/navbar1.jsp"%>
	<div class="container mt-3">
		<h2 class="text-center text-light">Manage Stock</h2>
		<div class="container">
			<div class="container div-responsive text-center form">
				<div class="main-box box text-center">
					<%
					String msg = request.getParameter("msg");
					if ("invalid".equals(msg)) {
					%>
					<div>
						<font color="red" size="5"> Something went Wrong! Try Again</font>
					</div>
					<%
					}
					%>
					<%
					if ("valid".equals(msg)) {
					%>
					<div>
						<font color="red" size="5"> Successfully Updated.</font>
					</div>
					<%
					}
					%>
					<form action="ManageStockAction.jsp" method="post">
						<div class="col-12">
							<label class="visually" for="inlineFormSelectPref"><b>Blood
									Group</b></label> <select class="form-select radius" name="bldgrp"
								id="inlineFormSelectPref">
								<option value="A+">A+</option>
								<option value="A-">A-</option>
								<option value="B+">B+</option>
								<option value="B-">B-</option>
								<option value="AB+">AB+</option>
								<option value="AB-">AB-</option>
								<option value="O+">O+</option>
								<option value="O-">O-</option>
							</select>
						</div>
						<div class="col-12">
							<label class="visually" for="inlineFormSelectPref"><b>Select
									Increse / Decrease</b></label> <select class="form-select radius"
								id="inlineFormSelectPref" name="incdec">
								<option value="inc">Increase</option>
								<option value="dec">Decrease</option>
							</select>
						</div>
						<div class="col-12">
							<label for="inputAddress2" class="form-label">Unit</label> <input
								type="number" class="form-control radius" id="inputAddress2"
								placeholder="Enter Units" name="units">
						</div>
						<br>
						<div class="input-box">
							<button type="submit" class="btn btn-dark btn-outline-light"
								name="pwd" required>Submit</button>
						</div>
						</form>					
				</div>
				<div class="table-responsive mt-3 tablewidth text-center">
							<table id="customer"
								class="table bg-light table-striped table-bordered table-hover">
								<thead class="table bg-custom">
									<tr>
										<th scope="col">Blood Group</th>
										<th scope="col">Units</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<%
										try {
											Connection conn = DBConnect.getConn();
											Statement st = conn.createStatement();
											ResultSet rs = st.executeQuery("select * from stock");
											while (rs.next()) {
										%>
										<td><%=rs.getString(1)%></td>
	 									<td><%=rs.getString(2)%></td>
									</tr>
									<%
									}
									} catch (Exception e) {
									e.printStackTrace();
									}
									%>
								</tbody>
							</table>
						</div>
				
			</div>
			

		</div>


		<div class="text-center mt-2">
			<b> All Right Reserverd &copy; ShravaniSoftwares :: 2023</b>
		</div>
</body>
</html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details Page</title>
<%@include file="all_content/allcss.jsp"%>
</head>

<style>
body {
	background-color: green;
}

li {
	border-right: .5px solid grey;
}

table {
	border: 1px solid white;
}

.table-hover tbody tr:hover {
	background-color: rgb(65, 174, 65);
	color: white;
	font-size: 15px;
}

.bg-custom {
	background-color: green;
}
</style>

<body>
	<%@include file="all_content/navbar1.jsp"%>
	<div class="container mt-3">
		<h2 class="text-center text-light">Manage Donor Details</h2>
		<div class="table-responsive">
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
				<font color="red" size="5"> Something Went Wrong.! Try Again</font>
			</div>
			<%
			}
			%>


			<%
			if ("deleted".equals(msg)) {
			%>

			<div class="text-center">
				<font color="red" size="5"> Successfully Deleted</font>
			</div>
			<%
			}
			%>


			<table
				class="table bg-light table-striped table-bordered table-hover">
				<thead class="table bg-custom text-light">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Father Name</th>
						<th scope="col">Mother Name</th>
						<th scope="col">Mobile No.</th>
						<th scope="col">Gender</th>
						<th scope="col">Email</th>
						<th scope="col">Blood Group</th>
						<th scope="col">Address</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					try {
						Connection conn = DBConnect.getConn();
						Statement st = conn.createStatement();
						ResultSet rs = st.executeQuery("select * from donor");
						while (rs.next()) {
							String id = rs.getString("id");
					%>
					<tr>
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(9)%></td>
						<td><a href="updateDonor.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
						<td><a href="deleteDonor.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					}
					%>

					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="text-center mt-2">
		<b> All Right Reserverd &copy; ShravaniSoftwares :: 2023</b>
	</div>


</body>
</html>
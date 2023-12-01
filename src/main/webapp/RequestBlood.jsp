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
<title>Request Blood Page</title>
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
	font-size: 18px;
}

.bg-custom {
	background-color: green;
}
</style>
<body>
	<%@include file="all_content/navbar1.jsp"%>
	<div class="container mt-3 ">
		<h2 class="text-center text-light">Blood Request - Pending</h2>
		<div class="table-responsive">

			<table
				class="table bg-light table-striped table-bordered table-hover">
				<thead class="table bg-custom text-light">
					<tr>
						<th scope="col">Name</th>
						<th scope="col">Mobile No.</th>
						<th scope="col">Email</th>
						<th scope="col">Blood Group</th>
						<th scope="col">Done</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					try {

						Connection conn = DBConnect.getConn();
						Statement st = conn.createStatement();
						ResultSet rs = st.executeQuery("select * from bloodrequest where status='pending'");
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%> </td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><a href="requestBloodDone.jsp?email=<%=rs.getString(3)%>">Done</a></td>
						<td><a href="requestBloodDelet.jsp?email=<%=rs.getString(3)%>">Delete</a></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					}
					%>
				</tbody>
			</table>
		</div>
	</div>

	<div class="text-center mt-2">
		<b> All Right Reserverd &copy; ShravaniSoftwares :: 2023</b>
	</div>


</body>
</html>
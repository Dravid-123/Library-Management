<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>  
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String bookid = request.getParameter("bookid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "library";
String userid = "root";
String password = "Sanjay@12";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<meta charset="UTF-8">
<title>View Issued Book</title>
<%@include file="components/common_css_js.jsp"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
<%@include file="styles/Student.css" %>
</style>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-light">
		<div class="collapse navbar-collapse">
			<a class="navbar-brand text-dark fs-2 ms-4" href="#">E-Library</a>
			<ul class="nav justify-content-end ms-auto">
				<li class="nav-item"><a class="nav-link text-dark fs-5"
					href="librariandash.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link text-dark fs-5"
					href="Librarian.jsp">Dashboard</a></li>
			</ul>
		</div>
	</nav>
<div class="container">
<table border="1" width="70%" class="table table-hover table-bordered border-dark text-center">
<thead class="bg-primary">
<tr>
<th>Book ID</th>
<th>Student ID</th>
<th>Book Name</th>
<th>Student Name</th>
<th>Issue Date</th>
<th>Due Date</th>
<th>Return Date</th>
<th>Status</th>
<th>Fine(INR)</th>
</tr>
</thead>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT b.bookid,s.studentid,b.name,s.studentname,i.issuedate,i.duedate,i.returndate,i.status,CASE WHEN i.returndate > i.duedate THEN DATEDIFF(i.returndate, i.duedate) * 5 ELSE 0 END AS fine FROM issuebook i JOIN books b ON i.bookid = b.bookid JOIN stureg s ON i.studentid = s.studentid;";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tbody class="bg-white">
<tr>
<td><%=resultSet.getString("bookid")%></td>
<td><%=resultSet.getString("studentid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("studentname") %></td>
<td><%=resultSet.getString("issuedate") %></td>
<td><%=resultSet.getString("duedate") %></td>
<td><%=resultSet.getString("returndate") %></td>
<td><%=resultSet.getString("status") %></td>
<td><%=resultSet.getString("fine") %></td>
</tr>
</tbody>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>

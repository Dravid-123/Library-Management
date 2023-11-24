<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<title>View Book</title>
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
<th>Book Name</th>
<th>Book Author</th>
<th>Category</th>
<th colspan="2">Action</th>
</tr>
</thead>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from books";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tbody class="bg-white">
<tr>
<td><%=resultSet.getString("bookid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("category") %></td>
<td><a class="btn btn-primary fs-6" href="editbook.jsp?bookid=<%=resultSet.getString("bookid")%>">Update</a></td>
<td><a class="btn btn-primary mx-2" href="deletebook.jsp?bookid=<%=resultSet.getString("bookid") %>">Delete</a></td>
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

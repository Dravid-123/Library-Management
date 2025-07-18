<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
  
<html>  
<head>  
<title>View Requested Book</title>  
<%@include file="components/common_css_js.jsp"%>
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
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/library"  
     user="root"  password=""/>  
  
<sql:query dataSource="${db}" var="rs">  
select * from library.reqbook;
</sql:query>  
<div class="container">
		<table border="2" width="50%" class="table table-hover table-bordered border-dark text-center">
			<thead class="bg-primary">
				<tr>
					<th>Book ID</th>
					<th>Book Name</th>
					<th>Category</th>
				</tr>
			</thead>
			<c:forEach var="table" items="${rs.rows}">
				<tbody class="bg-white">
					<tr>
						<td><c:out value="${table.bookid}" /></td>
						<td><c:out value="${table.bookname}" /></td>
						<td><c:out value="${table.category}" /></td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
  
</body>  
</html> 

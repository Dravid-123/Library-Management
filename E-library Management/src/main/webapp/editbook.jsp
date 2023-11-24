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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from books where bookid="+bookid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Edit Book Form</title>
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
		<div class="row justify-content-center mt-5">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="card shadow">
				<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
					<div class="card-title text-center border-bottom">
						<h2 class="p-3">Edit Book Form</h2>
					</div>
					<div class="card-body">
						<form action="edit-process.jsp" method="post">
							<div class="mb-4">
								<label for="username" class="form-label">Book ID</label> <input
									type="text" class="form-control" placeholder="ID" name="bookid" value="<%=resultSet.getString("bookid") %>"/>
							</div>
							<div class="mb-4">
								<label for="password" class="form-label">Name</label> <input
									type="text" class="form-control" placeholder="Name" name="name" value="<%=resultSet.getString("name") %>"/>
							</div>
							<div class="mb-4">
								<label for="retype-password" class="form-label">Author</label>
								<input type="text" class="form-control" placeholder="Author" name="author" value="<%=resultSet.getString("author") %>"/>
							</div>
							<div class="mb-4">
								<label class="form-label">Category</label> 
								<select class="form-select" name="category" value="<%=resultSet.getString("category") %>">
									<option selected>Choose...</option>
									<option>Arts & Music</option>
									<option>Business</option>
									<option>Computer & Tech</option>
									<option>Entertainment</option>
									<option>Health & Fitness</option>
									<option>Horror</option>
									<option>History</option>
									<option>Medical</option>
								</select>
							</div>
							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Update Book</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status=="success"){
			swal("Congrats","Book Edited Added Successfully","success");
		}
	</script>
</body>
</html>
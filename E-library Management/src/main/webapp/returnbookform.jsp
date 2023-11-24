<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Return Book Form</title>
<%@include file="components/common_css_js.jsp"%>
<style type="text/css">
<%@include file="styles/Student.css" %>
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-light">
		<div class="collapse navbar-collapse">
			<a class="navbar-brand text-dark fs-2 ms-4" href="#">E-Library</a>
			<ul class="nav justify-content-end ms-auto">
				<li class="nav-item"><a class="nav-link text-dark fs-5"
					href="studenthome.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link text-dark fs-5"
					href="Student.jsp">Dashboard</a></li>
			</ul>
		</div>
	</nav>
<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="card shadow">
				<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
					<div class="card-title text-center border-bottom">
						<h2 class="p-3">Return Book Form</h2>
					</div>
					<div class="card-body">
						<form action="Returnbook" method="post">
							<div class="mb-4">
								<label for="username" class="form-label">Book ID</label> <input
									type="text" class="form-control" placeholder="Book ID" name="bookid"/>
							</div>
							<div class="mb-4">
								<label for="password" class="form-label">Student ID</label> <input
									type="text" class="form-control" placeholder="Student ID" name="studentid"/>
							</div>
							<div class="mb-4">
								<label for="number" class="form-label">Return Date</label> <input
									type="date" class="form-control datepicker" placeholder="Return Date" name="returndate"/>
							</div>
							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Return Book</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
 
  $(function() {
 
    $( ".datepicker" ).datepicker();
 
  });
 
  </script>
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status=="success"){
			swal("Congrats","Book Returned Successfully","success");
		}
	</script>
</body>
</html>
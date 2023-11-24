<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Librarian Login</title>
<%@include file="components/common_css_js.jsp"%>
<style type="text/css">
<%@include file="styles/Login.css" %>
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
  <div class="container">
    <div class="row justify-content-center mt-5">
      <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="card shadow">
        <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
          <div class="card-title text-center border-bottom">
            <h2 class="p-3">Librarian Login</h2>
          </div>
          <div class="card-body">
            <form action="liblogin" method="post">
              <div class="mb-4">
                <label for="username" class="form-label">Email</label>
                <input type="text" class="form-control" id="email" name="email"/>
              </div>
              <div class="mb-4">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control"
									id="password" name="pass" />
              </div>
              <div class="d-grid">
                <button type="submit" class="btn btn-primary">Login</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status=="error"){
			swal("Sorry","Wrong Email or Password","error");
		}
	</script>
</body>


</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Library Management</title>
<%@include file="components/common_css_js.jsp"%>
<style type="text/css">
<%@include file="styles/style.css" %>
</style>
</head>
<body class="position-absolute">
	<nav class="navbar navbar-expand-md navbar-dark bg-light">
		<div class="collapse navbar-collapse">
			<a class="navbar-brand text-dark fs-2 ms-4" href="#">E-Library</a>
			<ul class="nav justify-content-end ms-auto">
				<li class="nav-item"><a class="nav-link text-dark fs-5"
					href="#home">Home</a></li>
				<li class="nav-item"><a class="nav-link text-dark fs-5"
					href="#about">About</a></li>
				<li class="nav-item"><a class="nav-link text-dark fs-5"
					href="#contact">Vision</a></li>
			</ul>
		</div>
		<form class="form-inline">
			<a class="btn btn-primary mx-2" href="LibrarianLogin.jsp">Librarian Login</a>
			<a class="btn btn-primary mx-2" href="StudentLogin.jsp">Student Login</a>
		</form>
	</nav>
	<div id="carouselExampleDark" class="carousel carousel-white slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner" id="home">
			<div class="carousel-item active" data-bs-interval="2500">
				<img src="images/library1.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<div class="card text-center">
						<div class="card-body">
							<h5 class="card-title">Welcome to E-Library</h5>
							<p class="card-text">
								<i>"Think before you speak. Read before you think."</i> – <b>Fran
									Lebowitz</b>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="2500">
				<img src="images/library2.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<div class="card text-center">
						<div class="card-body">
							<h5 class="card-title">Read More Spend Less</h5>
							<p class="card-text">
								<i>"Today a reader, tomorrow a leader."</i> – <b>Margaret
									Fuller</b>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="2500">
				<img src="images/contact.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<div class="card text-center">
						<div class="card-body">
							<h5 class="card-title">Books Anywhere Anytime</h5>
							<p class="card-text">
								<i>"If you don’t like to read, you haven’t found the right
									book."</i> – <b>J.K. Rowling</b>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleDark" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleDark" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<hr> 
	<section class="about" id="about">
		<h2 class="about-title">About Us</h2>
		<p class="about-para">About Library Management System Library
			management is a sub-discipline of institutional management that
			focuses on specific issues faced by libraries and library management
			professionals. Library management encompasses normal management tasks
			as well as intellectual freedom, anti-censorship, and fundraising
			tasks. Issues faced in library management frequently overlap those
			faced in management of non-profit organizations. An important aspect
			of library management is planning and maintaining library facilities.
			Planning the construction of new libraries or remodeling those that
			exist is integral as user needs are often changing. To supplement
			their operating budget, managers often secure funding through gifts
			and fundraising. Many facilities are also including cafes, Friends of
			the Library, and exhibit spaces to help generate additional revenue.
			These venues must be taken into account when planning for building
			expansions. The site for new construction must be located, the
			building must be designed, constructed, and then evaluated. Once
			established, it is important that the building management keep up on
			regular maintenance. This can also be completed by delegating tasks
			to maintenance personal or hiring an outside company through bids.</p>
		<img class="about-img" alt="" src="images/about.jpg">
	</section>
	<hr>
	<section class="contact" id="contact">
		<h2 class="vision-title">Our Vision</h2>
		<p class="vision-para">The Library will be recognized as an accessible and exceptional 
			center of research, 
			learning, and creativity focused on student success. We will provide the best of 
			contemporary and traditional research tools, unique local resources, and state of 
			the art facilities to the CSU community and work to ensure that all its members 
			are proficient information users. We will be leaders in developing and utilizing 
			the talents of everyone who works in the library to achieve excellence in service 
			to students and to our community.</p>
		<h2 class="vision-title">Our Mission</h2>
		<p class="vision-para">The Michael Schwartz Library provides essential collections and resources,
			 services, technologies, and spaces to empower our students, faculty, staff, and 
			 community members to achieve success as engaged learners, teachers, researchers, 
			 creators, and thinkers.<br>
			<b>"We bring information and people together"</b></p>
			<img class="vision-img" alt="" src="images/contact.jpg">
	</section>
	<div class="container">
		<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<p class="col-md-4 mb-0 para">&copy; 2023 E-Library</p>

		<a href="#home" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none fs-2 text">
			E-Library
		</a>

		<ul class="nav col-md-4 justify-content-end">
			<li class="nav-item footer-nav"><a href="#home" class="nav-link px-2 ">Home</a></li>
			<li class="nav-item footer-nav"><a href="#about" class="nav-link px-2 ">About</a></li>
			<li class="nav-item footer-nav"><a href="#contact" class="nav-link px-2 ">Vision</a></li>
		</ul>
	</footer>
	</div>
</body>
</html>
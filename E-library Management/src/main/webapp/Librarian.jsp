<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DashBoard</title>
<%@include file="components/common_css_js.jsp"%>
<style type="text/css">
<%@include file="styles/Librarian.css" %>
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
		<div class="row row-cols-6 g-4 ">
			<div class="col text-center">
				<div class="card img-card">
					<img src="images/book.png" class="card-img-top" alt="" />
					<div class="card-body">
						<a href="addbookform.jsp" class="btn btn-primary">Add Book</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card img-card">
					<img src="images/book1.png" class="card-img-top"
						alt="Palm Springs Road" />
					<div class="card-body">
						<a href="viewbook.jsp" class="btn btn-primary">View Book</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card img-card">
					<img src="images/occupation.png" class="card-img-top"
						alt="Palm Springs Road" />
					<div class="card-body">
						<a href="issuebookform.jsp" class="btn btn-primary">Issue Book</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card img-card">
					<img src="images/book-stack.png" class="card-img-top"
						alt="Palm Springs Road" />
					<div class="card-body">
						<a href="viewissuebook.jsp" class="btn btn-primary">View Issued Book</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card img-card">
					<img src="images/request.png" class="card-img-top"
						alt="Palm Springs Road" />
					<div class="card-body">
						<a href="viewrequestedbook.jsp" class="btn btn-primary">Requested Book</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card img-card">
					<img src="images/profile.png" class="card-img-top"
						alt="Palm Springs Road" />
					<div class="card-body">
						<a href="viewstudent.jsp" class="btn btn-primary">View Student</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="video">
		<video style="width:540px; object-fit: cover;" autoplay loop muted>
			<source src="images/library.mp4"
				type="video/mp4" />
		</video>
	</div>
	<div class="image-viewer">
		<div class="img-slider">
			<div class="slide active">
				<img class="bookimg"
					src="bookimage/book1.jpg"
					alt="">
				<div class="info">
					<h2>Zero to One</h2>
					<p>"Zero to One" by Peter Thiel is a groundbreaking business
						book that challenges conventional thinking. Thiel, a co-founder of
						PayPal and early investor in companies like Facebook, argues that
						true innovation is about going from "zero to one" – creating
						something entirely new, rather than copying what already exists.
						He emphasizes the importance of unique ideas, building monopolies,
						and the need for visionary entrepreneurs to drive progress.
						</p>
				</div>
			</div>
			<div class="slide">
				<img class="bookimg"
					src="bookimage/book2.jpg"
					alt="">
				<div class="info">
					<h2>Everyday Matters</h2>
					<p>"Everyday Matters" is a reflective and inspiring book by
						Danny Gregory. Through drawings and anecdotes, Gregory chronicles
						his journey of finding joy and meaning in ordinary moments,
						especially after a life-altering accident. The book encourages
						readers to embrace creativity, appreciate the beauty in the
						mundane, and cultivate mindfulness. It serves as a reminder that
						even in the routine of daily life, there are opportunities for
						discovery, growth, and a deeper connection to the world around us.</p>
				</div>
			</div>
			<div class="slide">
				<img class="bookimg"
					src="bookimage/book3.jpg"
					alt="">
				<div class="info">
					<h2>How to Solve It</h2>
					<p>"How to Solve It" by George Pólya is a classic guide to
						problem-solving. Pólya presents a four-step method: understand the
						problem, devise a plan, carry out the plan, and look back. He
						emphasizes the importance of problem comprehension and the use of
						heuristics. The book encourages a systematic and creative approach
						to tackling mathematical and real-world problems, providing
						valuable insights for anyone seeking effective problem-solving
						strategies.</p>
				</div>
			</div>
			<div class="slide">
				<img class="bookimg"
					src="bookimage/book4.jpg"
					alt="">
				<div class="info">
					<h2>Bad Blood</h2>
					<p>"Bad Blood" by John Carreyrou exposes the shocking rise and fall
						of Theranos, a Silicon Valley biotech startup. Elizabeth Holmes,
						its charismatic founder, claimed to revolutionize blood testing
						but built a house of cards with deceit and fraud. Carreyrou
						chronicles the unraveling of Theranos, revealing the corporate
						deception that led to its downfall and Holmes' legal troubles. The
						book serves as a cautionary tale about the dangers of unchecked
						ambition and the consequences of prioritizing success over ethical
						conduct in the business world.</p>
				</div>
			</div>
			<div class="slide">
				<img class="bookimg"
					src="bookimage/book5.jpg"
					alt="">
				<div class="info">
					<h2>Bad Feminist</h2>
					<p>"Bad Feminist" by Roxane Gay is a collection of essays exploring
						contemporary culture, feminism, and personal experiences. Gay
						challenges traditional feminist ideals, admitting her own
						contradictions while advocating for a more inclusive and nuanced
						approach to gender issues. The book delves into pop culture, race,
						and the complexities of being a feminist in a flawed world,
						offering a thought-provoking examination of modern feminism and
						the author's own struggles with societal expectations..</p>
				</div>
			</div>
			<div class="navigation">
				<div class="btn1 active"></div>
				<div class="btn1"></div>
				<div class="btn1"></div>
				<div class="btn1"></div>
				<div class="btn1"></div>
			</div>
		</div>
	</div>

    <script type="text/javascript">
    var slides = document.querySelectorAll('.slide');
    var btns = document.querySelectorAll('.btn1');
    let currentSlide = 1;

    // Javascript for image slider manual navigation
    var manualNav = function(manual){
      slides.forEach((slide) => {
        slide.classList.remove('active');

        btns.forEach((btn) => {
          btn.classList.remove('active');
        });
      });

      slides[manual].classList.add('active');
      btns[manual].classList.add('active');
    }

    btns.forEach((btn, i) => {
      btn.addEventListener("click", () => {
        manualNav(i);
        currentSlide = i;
      });
    });

    // Javascript for image slider autoplay navigation
    var repeat = function(activeClass){
      let active = document.getElementsByClassName('active');
      let i = 1;

      var repeater = () => {
        setTimeout(function(){
          [...active].forEach((activeSlide) => {
            activeSlide.classList.remove('active');
          });

        slides[i].classList.add('active');
        btns[i].classList.add('active');
        i++;

        if(slides.length == i){
          i = 0;
        }
        if(i >= slides.length){
          return;
        }
        repeater();
      }, 5000);
      }
      repeater();
    }
    repeat();
    </script>
	
</body>
</html>
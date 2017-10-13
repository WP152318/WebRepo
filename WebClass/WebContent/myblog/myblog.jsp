<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>SE Blog</title>
<link rel="stylesheet" type="text/css" href="../css/myblog.css">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/myblog.css">
</head>
<body>
	<!-- 메뉴 -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="./myblog.html">Seeun's Blog</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#introduction">Introduction<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#interested">Interested
						in</a></li>
				<li class="nav-item"><a class="nav-link" href="#wish">Wish</a></li>
			</ul>
			<% if(session.getAttribute("user")==null){ %>
			<form class="form-inline my-2 my-lg-0">
				<div class="menuButton">
					<button type="button" class="btn btn-outline-success my-2 my-sm-0"
						data-toggle="modal" data-target="#loginModal">Login</button>
				</div>
				<button type="button" class="btn btn-outline-success my-2 my-sm-0"
					data-toggle="modal" data-target="#signUpModal">Sign Up</button>
			</form>
			<% }else{ %>
				<form class="form-inline my-2 my-lg-0" method="post" action="/WebClass/bloglogout">
				<a class="nav-item nav-link" href="#" id="bd-versions">
	    			홍길동님
	      		</a>
				<div class="menuButton">
					<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Logout</button>
				</div>
			</form>
			<% } %>
		</div>
	</nav>
	<div>
		<img class="d-block w-100" src="../image/london.jpg"
			alt="Where I want to go">
	</div>

	<!-- 로그인 -->
	<!-- Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginModalLabel">Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="form-inline my-2 my-lg-0" id="loginForm">
						<input class="form-control mr-sm-2" type="text" placeholder="ID"
							aria-label="ID" id="id" required> <input
							class="form-control mr-sm-2" type="password" placeholder="PWD"
							aria-label="PWD" id="pwd" required>
						<div class="login">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Login</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginResultModalLabel">로그인 결과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 회원가입 -->
	<div class="modal fade" id="signUpModal" tabindex="-1" role="dialog"
		aria-labelledby="signUpModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="signUpModalLabel">Sign Up</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="signUpForm">
						<div class="form-check form-check-inline">
							<label class="form-check-label"> <input
								class="form-check-input" type="radio" name="inlineRadioOptions"
								id="grade1" value="grade1" required> 1학년
							</label>
						</div>
						<div class="form-check form-check-inline">
							<label class="form-check-label"> <input
								class="form-check-input" type="radio" name="inlineRadioOptions"
								id="grade2" value="grade2" required> 2학년
							</label>
						</div>
						<div class="form-check form-check-inline">
							<label class="form-check-label"> <input
								class="form-check-input" type="radio" name="inlineRadioOptions"
								id="grade3" value="grade3" required> 3학년
							</label>
						</div>
						<div class="class">
							<select class="custom-select" required>
								<option value="" selected>--반--</option>
								<option value="1">1반</option>
								<option value="2">2반</option>
								<option value="3">3반</option>
								<option value="3">4반</option>
								<option value="3">5반</option>
								<option value="3">6반</option>
							</select>
						</div>
						<div class="number">
							<input class="form-control mr-sm-2" type="text" placeholder="번호"
								aria-label="number" id="number" required>
						</div>
						<div class="name">
							<input class="form-control mr-sm-2" type="text" placeholder="이름"
								aria-label="name" id="name" required>
						</div>
						<div class="signUp">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Sign Up</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal" id="myModal2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="signUpResultModalLabel">회원가입 결과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<br>

	<!-- introduction -->
	<div class="introduction"
		style="box-sizing: border-box; padding: 30px; width: 100%;">
		<h1 id="introduction">Introduction</h1>
		<div class="row">
			<div class="col-md-4">
				<div class="card border-success mb-3">
					<div class="card-header">My Life</div>
					<div class="card-body text-success">
						<h4 class="card-title">과거</h4>
						<p class="card-text">
							2000년 08월 17일 출생<br>세 자매 중 둘째<br>고등학교 입학 = 프로그래밍 시작
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card border-success mb-3">
					<div class="card-header">My Life</div>
					<div class="card-body text-success">
						<h4 class="card-title">현재</h4>
						<p class="card-text">
							한국디지털미디어고등학교<br>15기 웹프로그래밍과<br>선인장 안드로이드 개발자
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card border-success mb-3">
					<div class="card-header">My Life</div>
					<div class="card-body text-success">
						<h4 class="card-title">미래</h4>
						<p class="card-text">
							소프트웨어 개발자<br>돈 많은 백수<br>여유로운 삶
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<hr>
	<div class="interested">
		<h1 id="interested">Interested in</h1>
		<div class="card-group">
			<div class="card">
				<img class="card-img-top" src="../image/programming.jpg"
					alt="Programming">
				<div class="card-body">
					<h4 class="card-title">Programming</h4>
					<p class="card-text">프로그래밍에 관한 관심이 있다.</p>
					<p class="card-text">
						<small class="text-muted">C, C++, Python, Java, HTML, CSS,
							JavaScript...</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top" src="../image/travel.jpg" alt="travel">
				<div class="card-body">
					<h4 class="card-title">Traveling</h4>
					<p class="card-text">국내, 해외 여행 가는 것에 관심이 있다.</p>
					<p class="card-text">
						<small class="text-muted">제주도, 런던, 전주, 미국...</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top" src="../image/camera.jpg" alt="camera">
				<div class="card-body">
					<h4 class="card-title">Camera</h4>
					<p class="card-text">카메라를 이용해 다양한 사진을 찍는 것에 관심이 있다.</p>
					<p class="card-text">
						<small class="text-muted">여행을 다니며 찍는 사진...</small>
					</p>
				</div>
			</div>
		</div>
	</div>
	<br>
	<hr>
	<div class="wish">
		<h1 id="wish">Wish</h1>
		<div class="card-group">
			<div class="card">
				<img class="card-img-top" src="../image/friend.jpg" alt="wish">
				<div class="card-body">
					<h4 class="card-title">With Friends and Family</h4>
					<p class="card-text">친구들, 가족들과 함께 시간을 보내고 싶다.</p>
					<p class="card-text">
						<small class="text-muted">여행, 사진...</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top" src="../image/travel.jpg" alt="travel">
				<div class="card-body">
					<h4 class="card-title">Traveling</h4>
					<p class="card-text">여행 가고 싶다.</p>
					<p class="card-text">
						<small class="text-muted">1.제주도 2.런던 3.일본 4.강릉 ...</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top" src="../image/camera.jpg" alt="camera">
				<div class="card-body">
					<h4 class="card-title">Camera</h4>
					<p class="card-text">카메라 사고 싶다.</p>
					<p class="card-text">
						<small class="text-muted">여행을 다니며 찍는 사진, 평소의 모습을 담은 사진...</small>
					</p>
				</div>
			</div>
		</div>
	</div><br>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="../js/login.js"></script>
	<script src="../js/signUp.js"></script>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--Title and favicon icon-->
<title>User Admin</title>
<link rel="icon" type="image/png"
	href="https://image.flaticon.com/icons/png/512/4896/4896203.png" />
<!--Link Google Font-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet" />
<!--Link Font Awesome-->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet" />
<!--Link Bootstrap -->
<link href="styles/bootstrap.min.css" rel="stylesheet" />
<!--Link My style-->
<link href="styles/main.css" rel="stylesheet" />
</head>

<body>
	<div class="container">
		<!-- Button Require -->
		<div class="positivebtn">
			<button id="open">Require</button>

			<div class="modalbtn-container" id="modal_container">
				<div class="modalbtn">
					<h1 class="text-black">User Admin</h1>
					<a href="https://drive.google.com/file/d/1-ioz7TNuHyvdDaAfJXGSt9HOu2fcZFtA/view?usp=sharing"
						target="_blank"> <img src="images/13_2_userAdmin.png"
						alt="Chapter 13 - Exercise 2">
					</a> <br>
					<button id="close">Close</button>
				</div>
			</div>
		</div>
		<div class="row">
			<!--Side bar menu-->
			<ul class="col-3 sidebar-menu box">
				<li><a href="https://nhatsang.tech/" class="sidebar-item">
						<i class="fal fa-home sidebar-icon text-white"></i> <span
						class="sidebar-text text-white">Home</span> <span
						class="sidebar-status"></span>
				</a></li>
				<li><a href="https://nhatsang-survey.herokuapp.com/" class="sidebar-item"> <i
						class="fab fa-java sidebar-icon text-white"></i> <span
						class="sidebar-text text-white">Survey</span>
				</a></li>
				<li><a href="https://nhatsang-download.herokuapp.com/" class="sidebar-item"> <i
						class="fab fa-java sidebar-icon text-white"></i> <span
						class="sidebar-text text-white">Download</span>
				</a></li>
				<li><a href="https://nhatsang-cart.herokuapp.com/" class="sidebar-item"> <i
						class="fab fa-java sidebar-icon text-white"></i> <span
						class="sidebar-text text-white">Cart</span>
				</a></li>
				<li><a href="https://nhatsang-email.herokuapp.com/" class="sidebar-item"> <i
						class="fab fa-java sidebar-icon text-white"></i> <span
						class="sidebar-text text-white">Email</span>
				</a></li>
				<li><a href="#" class="sidebar-item sidebar-item--active">
						<i class="fab fa-java sidebar-icon text-white"></i> <span
						class="sidebar-text text-white">userAdmin</span>
				</a></li>
			</ul>

			<!--Main content-->
			<div class="col-9">
				<div class="container box">
					<h1>Users</h1>

					<table>

						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th colspan="3">Email</th>
						</tr>

						<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
						<c:forEach var="user" items="${users}">
							<tr>
								<td>${user.firstName}</td>
								<td>${user.lastName}</td>
								<td>${user.email}</td>
								<td><a
									href="userAdmin?action=display_user&amp;email=${user.email}">Update</a></td>
								<td><a
									href="userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
					<br> <span class="btn-color"> <input type="submit"
						value="Refresh" class="btn btn-primary btn-test"
						onClick="location.href='userAdmin';">
					</span>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="h4 text-center text-white mb-4 title">% WORK
			COMPLETE</div>
		<div class="card" data-aos="fade-up"
			data-aos-anchor-placement="top-bottom">
			<div class="card-body box width100">
				<div class="row">
					<div class="col-md-6">
						<div class="progress-container progress-primary">
							<span class="progress-badge text-white">Nguyễn Hoàng Nhật</span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary"
									data-aos="progress-full" data-aos-offset="10"
									data-aos-duration="2000" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
								<span class="progress-value text-white">100%</span>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="progress-container progress-primary">
							<span class="progress-badge text-white">Phan Thanh Sang</span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary"
									data-aos="progress-full" data-aos-offset="10"
									data-aos-duration="2000" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
								<span class="progress-value text-white">100%</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--Float button back to home-->
	<a href="https://nhatsang.tech/#exercise" class="btn-float"
		rel="tooltip" title="Back to home page"> <span
		class="background-float"> <i class="fa fa-home icon-btn-float"></i>
	</span>
	</a>

	<footer class="footer">
		<div class="container text-center">
			<a class="cc-facebook btn btn-link" target="blank"
				href="http://facebook.com" rel="tooltip"
				title="Follow me on Facebook"> <i class="fa fa-facebook fa-2x"
				aria-hidden="true"></i>
			</a> <a class="cc-github btn btn-link" target="blank"
				href="https://github.com" rel="tooltip" title="Follow me on Github">
				<i class="fa fa-github fa-2x" aria-hidden="true"></i>
			</a> <a class="cc-linkedin btn btn-link" target="blank"
				href="https://www.linkedin.com" rel="tooltip"
				title="Connect me on LinkedIn"> <i class="fa fa-linkedin fa-2x"
				aria-hidden="true"></i>
			</a> <a class="cc-youtube btn btn-link" target="blank"
				href="https://www.youtube.com" rel="tooltip"
				title="Subscribe me on Youtube"> <i class="fa fa-youtube fa-2x "
				aria-hidden="true"></i>
			</a>
		</div>
		<div class="text-center text-muted">
			<p>
				&copy; 2021 Nguyễn Hoàng Nhật (19110031) - Phan Thanh Sang
				(19110276).<br> Web app hosting by <a class="credit"
					href="https://www.heroku.com/home">Heroku</a><br>
			</p>
		</div>
	</footer>

	<script src="js/core/jquery.3.2.1.min.js"></script>
	<script src="js/core/popper.min.js"></script>
	<script src="js/core/bootstrap.min.js"></script>
	<script src="js/now-ui-kit.js?v=1.1.0"></script>
	<script src="js/aos.js"></script>
	<script src="scripts/main.js"></script>
</body>
</html>
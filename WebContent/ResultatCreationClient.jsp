<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Devenez client</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="css/accueil_css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/accueil_css/animate.css">
<link rel="stylesheet" href="css/accueil_css/owl.carousel.min.css">
<link rel="stylesheet" href="css/accueil_css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/accueil_css/magnific-popup.css">
<link rel="stylesheet" href="css/accueil_css/aos.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<link rel="stylesheet" href="css/accueil_css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/accueil_css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/accueil_css/style.css">
<!-- Icon fontawensom  -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="Accueil.ma"><i class="fas fa-hotel"></i>
			Hire && sale <i class="fas fa-building"></i> </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="Accueil.ma" class="nav-link">Acceuil</a></li>
				<li class="nav-item"><a href="Services.ma" class="nav-link">Services</a></li>
				<li class="nav-item"><a href="DevenezHote.ma" class="nav-link">Devenez
						Hôte</a></li>
				<li class="nav-item active"><a href="InscriptionClient.ma"
					class="nav-link">Inscription</a></li>
				<li class="nav-item"><a href="FormConnexionVendeur.ma"
					class="nav-link"> Connexion Hôte</a></li>
				<li class="nav-item"><a href="FormConnexionClient.ma"
					class="nav-link"> Connexion Client</a></li>
				<li class="nav-item"><a href="contact.ma" class="nav-link">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- END nav -->

	<br>
	<br>

	<section class="ftco-section goto-here">
	<div class="container">


		<center>
			<div class="card text-center" style="width: 70%;">
				<c:if test="${resultBool == true }">
					<div class="card-header"
						style="background-color: #4BB543; color: black;">
				</c:if>
				<c:if test="${resultBool == false }">
					<div class="card-header"
						style="background-color: #EE615F; color: black;">
				</c:if>
				Alert !
			</div>
			<div class="card-body">
				<h5 class="card-title">Nouveau compte</h5>
				<p class="card-text">${reponseCreation }</p>
				<a href="Accueil.ma" class="btn btn-primary">Accueil</a>
			</div>
	</div>
	</center>
	</div>
	</section>

	<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Uptown</h2>
					<p>Réservez des hébergements uniques.</p>
					<ul class="ftco-footer-social list-unstyled mt-5">
						<li class="ftco-animate"><a href="#"><span
								class="icon-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-instagram"></span></a></li>
					</ul>
				</div>
			</div>

			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">À propos</h2>
					<ul class="list-unstyled">
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Notre
								Histoire</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Nos
								Carrières</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Avez-vous des questions?</h2>
					<div class="block-23 mb-3">
						<ul>
							<li><span class="icon icon-map-marker"></span><span
								class="text">203 Fake St. Mountain View, San Francisco,
									California, USA</span></li>
							<li><a href="#"><span class="icon icon-phone"></span><span
									class="text">+2 392 3929 210</span></a></li>
							<li><a href="#"><span class="icon icon-envelope pr-4"></span><span
									class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
	</footer>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> <circle
			class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4"
			stroke="#eeeeee" /> <circle class="path" cx="24" cy="24" r="22"
			fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="js/accueil_js/jquery.min.js"></script>
	<script src="js/accueil_js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/accueil_js/popper.min.js"></script>
	<script src="js/accueil_js/bootstrap.min.js"></script>
	<script src="js/accueil_js/jquery.easing.1.3.js"></script>
	<script src="js/accueil_js/jquery.waypoints.min.js"></script>
	<script src="js/accueil_js/jquery.stellar.min.js"></script>
	<script src="js/accueil_js/owl.carousel.min.js"></script>
	<script src="js/accueil_js/jquery.magnific-popup.min.js"></script>
	<script src="js/accueil_js/aos.js"></script>
	<script src="js/accueil_js/jquery.animateNumber.min.js"></script>
	<script src="js/accueil_js/bootstrap-datepicker.js"></script>
	<script src="js/accueil_js/jquery.timepicker.min.js"></script>
	<script src="js/accueil_js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/accueil_js/google-map.js"></script>
	<script src="js/accueil_js/main.js"></script>
</body>
</html>
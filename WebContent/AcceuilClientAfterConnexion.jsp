<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
<link rel="icon" type="image/png" href="img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Location et vente de logement</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="demo/demo.css" rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900&display=swap"
	rel="stylesheet">
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
	<c:if test="${sessionScope.account_type == 'client'}">
		<c:import url="navbar/NavbarClient.jsp" />
	</c:if>

	<div class="content card" style="width: 98%; margin: 0 auto;">
		<div class="card" style="width: 60%; margin: 0 auto;">
			<div class="card-body">
				<center class="font-weight-bold">
					<strong>Bienvenue ${sessionScope.nom }
						${sessionScope.prenom }.</strong>
				</center>
			</div>
		</div>
		<section class="ftco-section goto-here">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section text-center ftco-animate mb-5">
					<span class="subheading">Ce que nous offrons</span>
					<h2 class="mb-2">Offre exclusive pour vous</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="property-wrap ftco-animate">
						<a href="#" class="img"
							style="background-image: url(images/work-1.jpg);"></a>
						<div class="text">
							<p class="price">
								<span class="old-price">800,000</span><span class="orig-price">$3,050<small>/mo</small></span>
							</p>
							<ul class="property_list">
								<li><span class="flaticon-bed"></span>3</li>
								<li><span class="flaticon-bathtub"></span>2</li>
								<li><span class="flaticon-floor-plan"></span>1,878 sqft</li>
							</ul>
							<h3>
								<a href="#">The Blue Sky Home</a>
							</h3>
							<span class="location">Oakland</span> <a href="#"
								class="d-flex align-items-center justify-content-center btn-custom">
								<span class="ion-ios-link"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="property-wrap ftco-animate">
						<a href="#" class="img"
							style="background-image: url(images/work-2.jpg);"></a>
						<div class="text">
							<p class="price">
								<span class="old-price">800,000</span><span class="orig-price">$3,050<small>/mo</small></span>
							</p>
							<ul class="property_list">
								<li><span class="flaticon-bed"></span>3</li>
								<li><span class="flaticon-bathtub"></span>2</li>
								<li><span class="flaticon-floor-plan"></span>1,878 sqft</li>
							</ul>
							<h3>
								<a href="#">The Blue Sky Home</a>
							</h3>
							<span class="location">Oakland</span> <a href="#"
								class="d-flex align-items-center justify-content-center btn-custom">
								<span class="ion-ios-link"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="property-wrap ftco-animate">
						<a href="#" class="img"
							style="background-image: url(images/work-3.jpg);"></a>
						<div class="text">
							<p class="price">
								<span class="old-price">800,000</span><span class="orig-price">$3,050<small>/mo</small></span>
							</p>
							<ul class="property_list">
								<li><span class="flaticon-bed"></span>3</li>
								<li><span class="flaticon-bathtub"></span>2</li>
								<li><span class="flaticon-floor-plan"></span>1,878 sqft</li>
							</ul>
							<h3>
								<a href="#">The Blue Sky Home</a>
							</h3>
							<span class="location">Oakland</span> <a href="#"
								class="d-flex align-items-center justify-content-center btn-custom">
								<span class="ion-ios-link"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="property-wrap ftco-animate">
						<a href="properties-single.html" class="img"
							style="background-image: url(images/work-4.jpg);"></a>
						<div class="text">
							<p class="price">
								<span class="old-price">800,000</span><span class="orig-price">$3,050<small>/mo</small></span>
							</p>
							<ul class="property_list">
								<li><span class="flaticon-bed"></span>3</li>
								<li><span class="flaticon-bathtub"></span>2</li>
								<li><span class="flaticon-floor-plan"></span>1,878 sqft</li>
							</ul>
							<h3>
								<a href="properties-single.html">The Blue Sky Home</a>
							</h3>
							<span class="location">Oakland</span> <a
								href="properties-single.html"
								class="d-flex align-items-center justify-content-center btn-custom">
								<span class="ion-ios-link"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="property-wrap ftco-animate">
						<a href="properties-single.html" class="img"
							style="background-image: url(images/work-5.jpg);"></a>
						<div class="text">
							<p class="price">
								<span class="old-price">800,000</span><span class="orig-price">$3,050<small>/mo</small></span>
							</p>
							<ul class="property_list">
								<li><span class="flaticon-bed"></span>3</li>
								<li><span class="flaticon-bathtub"></span>2</li>
								<li><span class="flaticon-floor-plan"></span>1,878 sqft</li>
							</ul>
							<h3>
								<a href="properties-single.html">The Blue Sky Home</a>
							</h3>
							<span class="location">Oakland</span> <a
								href="properties-single.html"
								class="d-flex align-items-center justify-content-center btn-custom">
								<span class="ion-ios-link"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="property-wrap ftco-animate">
						<a href="properties-single.html" class="img"
							style="background-image: url(images/work-6.jpg);"></a>
						<div class="text">
							<p class="price">
								<span class="old-price">800,000</span><span class="orig-price">$3,050<small>/mo</small></span>
							</p>
							<ul class="property_list">
								<li><span class="flaticon-bed"></span>3</li>
								<li><span class="flaticon-bathtub"></span>2</li>
								<li><span class="flaticon-floor-plan"></span>1,878 sqft</li>
							</ul>
							<h3>
								<a href="properties-single.html">The Blue Sky Home</a>
							</h3>
							<span class="location">Oakland</span> <a
								href="properties-single.html"
								class="d-flex align-items-center justify-content-center btn-custom">
								<span class="ion-ios-link"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

		<section
			class="ftco-section ftco-degree-bg services-section img mx-md-5"
			style="background-image: url(images/bg_2.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-start mb-5">
				<div
					class="col-md-6 text-center heading-section heading-section-white ftco-animate">
					<span class="subheading">Utilisation</span>
					<h2 class="mb-3">Comment ça fonctionne</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div
							class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
							<div class="media block-6 services services-2">
								<div class="media-body py-md-4 text-center">
									<div
										class="icon mb-3 d-flex align-items-center justify-content-center">
										<span>01</span>
									</div>
									<h3>Se connecter</h3>
								</div>
							</div>
						</div>
						<div
							class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
							<div class="media block-6 services services-2">
								<div class="media-body py-md-4 text-center">
									<div
										class="icon mb-3 d-flex align-items-center justify-content-center">
										<span>02</span>
									</div>
									<h3>Chercher une offre</h3>
								</div>
							</div>
						</div>
						<div
							class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
							<div class="media block-6 services services-2">
								<div class="media-body py-md-4 text-center">
									<div
										class="icon mb-3 d-flex align-items-center justify-content-center">
										<span>03</span>
									</div>
									<h3>Faire une demande de réservation</h3>
								</div>
							</div>
						</div>
						<div
							class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
							<div class="media block-6 services services-2">
								<div class="media-body py-md-4 text-center">
									<div
										class="icon mb-3 d-flex align-items-center justify-content-center">
										<span>04</span>
									</div>
									<h3>Confirmer votre réservation</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<br> <br> <br> <br>

		<section class="ftco-section ftco-no-pt">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Voyages</span>
					<h2>Expériences très bien notées</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">ALLEMAGNE</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Décem. 15, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/chiens.png');"> </a>
							<p>Promenez-vous avec une meute de chiens.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">Maroc</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Juin. 29, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/maroc.png');"> </a>
							<p>Excursion d'une journée dans le désert d'Agafay et ses
								montagnes.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">Russian Federation</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Mars. 9, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/russ.png');"> </a>
							<p>Peinture de poupées russes.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">Marrakech</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Août. 12, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/marrakech.png');"> </a>
							<p>Excursion à cheval dans la montagne de l'Atlas 2 jours et
								1 nuit.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">Fès, Maroc</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Novembre. 17, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/fes2.png');"> </a>
							<p>Excursion à travers le désert marocain.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">Marrakech</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Octobre. 16, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/marra.png');"> </a>
							<p>Ascension De Mont Toubkal en 2 jours et 1 Nuit.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">Padang, Indonésie</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Juillet. 24, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/ind.png');"> </a>
							<p>Randonnée et snorkeling en Indonésie.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<div class="text">
							<h3 class="heading">
								<a href="#">Alora Espagne</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">Août. 20, 2019</a>
								</div>
								<div>
									<a href="#"></a>
								</div>
							</div>
							<a href="blog-single.html" class="block-20 img"
								style="background-image: url('images/malaga.png');"> </a>
							<p>Admirez le sud de l'Espagne à cheval.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<footer class="ftco-footer ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Hire && Sale</h2>
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
	</div>
	<script src="js/core/popper.min.js"></script>
	<script src="js/core/bootstrap-material-design.min.js"></script>
	<script src="js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Plugin for the momentJs  -->
	<script src="js/plugins/moment.min.js"></script>
	<!--  Plugin for Sweet Alert -->
	<script src="js/plugins/sweetalert2.js"></script>
	<!-- Forms Validations Plugin -->
	<script src="js/plugins/jquery.validate.min.js"></script>
	<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script src="js/plugins/jquery.bootstrap-wizard.js"></script>
	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="js/plugins/bootstrap-selectpicker.js"></script>
	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script src="js/plugins/bootstrap-datetimepicker.min.js"></script>
	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
	<script src="js/plugins/jquery.dataTables.min.js"></script>
	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script src="js/plugins/bootstrap-tagsinput.js"></script>
	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="js/plugins/jasny-bootstrap.min.js"></script>
	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script src="js/plugins/fullcalendar.min.js"></script>
	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script src="js/plugins/jquery-jvectormap.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="js/plugins/nouislider.min.js"></script>
	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Library for adding dinamically elements -->
	<script src="js/plugins/arrive.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chartist JS -->
	<script src="js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="demo/demo.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$()
									.ready(
											function() {
												$sidebar = $('.sidebar');

												$sidebar_img_container = $sidebar
														.find('.sidebar-background');

												$full_page = $('.full-page');

												$sidebar_responsive = $('body > .navbar-collapse');

												window_width = $(window)
														.width();

												fixed_plugin_open = $(
														'.sidebar .sidebar-wrapper .nav li.active a p')
														.html();

												if (window_width > 767
														&& fixed_plugin_open == 'Dashboard') {
													if ($(
															'.fixed-plugin .dropdown')
															.hasClass(
																	'show-dropdown')) {
														$(
																'.fixed-plugin .dropdown')
																.addClass(
																		'open');
													}

												}

												$('.fixed-plugin a')
														.click(
																function(event) {
																	// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
																	if ($(this)
																			.hasClass(
																					'switch-trigger')) {
																		if (event.stopPropagation) {
																			event
																					.stopPropagation();
																		} else if (window.event) {
																			window.event.cancelBubble = true;
																		}
																	}
																});

												$(
														'.fixed-plugin .active-color span')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	var new_color = $(
																			this)
																			.data(
																					'color');

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						'data-color',
																						new_color);
																	}

																	if ($full_page.length != 0) {
																		$full_page
																				.attr(
																						'filter-color',
																						new_color);
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.attr(
																						'data-color',
																						new_color);
																	}
																});

												$(
														'.fixed-plugin .background-color .badge')
														.click(
																function() {
																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	var new_color = $(
																			this)
																			.data(
																					'background-color');

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						'data-background-color',
																						new_color);
																	}
																});

												$('.fixed-plugin .img-holder')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.parent(
																					'li')
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.parent(
																					'li')
																			.addClass(
																					'active');

																	var new_image = $(
																			this)
																			.find(
																					"img")
																			.attr(
																					'src');

																	if ($sidebar_img_container.length != 0
																			&& $('.switch-sidebar-image input:checked').length != 0) {
																		$sidebar_img_container
																				.fadeOut(
																						'fast',
																						function() {
																							$sidebar_img_container
																									.css(
																											'background-image',
																											'url("'
																													+ new_image
																													+ '")');
																							$sidebar_img_container
																									.fadeIn('fast');
																						});
																	}

																	if ($full_page_background.length != 0
																			&& $('.switch-sidebar-image input:checked').length != 0) {
																		var new_image_full_page = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						'img')
																				.data(
																						'src');

																		$full_page_background
																				.fadeOut(
																						'fast',
																						function() {
																							$full_page_background
																									.css(
																											'background-image',
																											'url("'
																													+ new_image_full_page
																													+ '")');
																							$full_page_background
																									.fadeIn('fast');
																						});
																	}

																	if ($('.switch-sidebar-image input:checked').length == 0) {
																		var new_image = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						"img")
																				.attr(
																						'src');
																		var new_image_full_page = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						'img')
																				.data(
																						'src');

																		$sidebar_img_container
																				.css(
																						'background-image',
																						'url("'
																								+ new_image
																								+ '")');
																		$full_page_background
																				.css(
																						'background-image',
																						'url("'
																								+ new_image_full_page
																								+ '")');
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.css(
																						'background-image',
																						'url("'
																								+ new_image
																								+ '")');
																	}
																});

												$('.switch-sidebar-image input')
														.change(
																function() {
																	$full_page_background = $('.full-page-background');

																	$input = $(this);

																	if ($input
																			.is(':checked')) {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar_img_container
																					.fadeIn('fast');
																			$sidebar
																					.attr(
																							'data-image',
																							'#');
																		}

																		if ($full_page_background.length != 0) {
																			$full_page_background
																					.fadeIn('fast');
																			$full_page
																					.attr(
																							'data-image',
																							'#');
																		}

																		background_image = true;
																	} else {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar
																					.removeAttr('data-image');
																			$sidebar_img_container
																					.fadeOut('fast');
																		}

																		if ($full_page_background.length != 0) {
																			$full_page
																					.removeAttr(
																							'data-image',
																							'#');
																			$full_page_background
																					.fadeOut('fast');
																		}

																		background_image = false;
																	}
																});

												$('.switch-sidebar-mini input')
														.change(
																function() {
																	$body = $('body');

																	$input = $(this);

																	if (md.misc.sidebar_mini_active == true) {
																		$(
																				'body')
																				.removeClass(
																						'sidebar-mini');
																		md.misc.sidebar_mini_active = false;

																		$(
																				'.sidebar .sidebar-wrapper, .main-panel')
																				.perfectScrollbar();

																	} else {

																		$(
																				'.sidebar .sidebar-wrapper, .main-panel')
																				.perfectScrollbar(
																						'destroy');

																		setTimeout(
																				function() {
																					$(
																							'body')
																							.addClass(
																									'sidebar-mini');

																					md.misc.sidebar_mini_active = true;
																				},
																				300);
																	}

																	// we simulate the window Resize so the charts will get updated in realtime.
																	var simulateWindowResize = setInterval(
																			function() {
																				window
																						.dispatchEvent(new Event(
																								'resize'));
																			},
																			180);

																	// we stop the simulation of Window Resize after the animations are completed
																	setTimeout(
																			function() {
																				clearInterval(simulateWindowResize);
																			},
																			1000);

																});
											});
						});
	</script>
	<script>
		$(document).ready(function() {
			// Javascript method's body can be found in assets/js/demos.js
			md.initDashboardPageCharts();

		});
	</script>

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
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
<style>
table {
	margin: 0 auto;
}

td {
	text-align: center;
	width: 200px;
}
</style>
</head>

<body>
	<c:if test="${sessionScope.account_type == 'client'}">
		<c:import url="navbar/NavbarClient.jsp" />
	</c:if>
	<c:if test="${sessionScope.account_type == 'vendeur'}">
		<c:import url="navbar/NavbarVendeur.jsp" />
	</c:if>
	<br>
	<br>
	<br>
	<div class="content card" style="width: 98%; margin: 0 auto;">
		<br> <br> <br> <br> <br>
		<div class="card card-nav-tabs" style="width: 85%; margin: 0 auto;">
			<div class="card-header card-header-success">Chercher l'offre
				qui vous pla�t</div>
			<br>
			<div class="card-body">
				<center>
					<h4 class="card-title" style="color: #760B39;">
						<strong>Recherche multicrit�res et crit�res sp�cifiques</strong>
					</h4>
				</center>
				<br>

				<form class="form" method="post" action="ChercherOffreByOption.ma"
					style="width: 70%; margin: 0 auto;">
					<center>
						<table style="width: 100%; margin: 0 auto;">
							<tr>
								<td>
									<div class="form-check form-check-inline" style="">
										<label class="form-check-label"
											style="color: black; font-size: 15px;"> <input
											class="form-check-input" type="checkbox" id="inlineCheckbox1"
											value="option1" name="ville"> Ville <span
											class="form-check-sign"> <span class="check"></span>
										</span>
										</label>
									</div>
								</td>
								<td>
									<div class="form-check form-check-inline">
										<label class="form-check-label"
											style="color: black; font-size: 15px;"> <input
											class="form-check-input" type="checkbox" id="inlineCheckbox1"
											value="option1" name="pays"> Pays <span
											class="form-check-sign"> <span class="check"></span>
										</span>
										</label>
									</div>
								</td>
								<td>
									<div class="form-check form-check-inline" style="">
										<label class="form-check-label"
											style="color: black; font-size: 15px;"> <input
											class="form-check-input" type="checkbox" id="inlineCheckbox1"
											value="option1" name="nb_chambre"> Nombre chambre <span
											class="form-check-sign"> <span class="check"></span>
										</span>
										</label>

									</div>
								</td>
							</tr>
						</table>
					</center>
					<br>
					<center>
						<div style="width: 30%;">
							<div class="form-check form-check-radio form-check-inline"
								style="float: right;">
								<label class="form-check-label"
									style="color: black; font-size: 15px;"> <input
									class="form-check-input" type="radio" name="venteLocation"
									id="inlineRadio1" value="vente" required> Vente <span
									class="circle"> <span class="check"></span>
								</span>
								</label>
							</div>
							<div class="form-check form-check-radio form-check-inline"
								style="float: left;">
								<label class="form-check-label"
									style="color: black; font-size: 15px;"> <input
									class="form-check-input" type="radio" name="venteLocation"
									id="inlineRadio2" value="location"> Location <span
									class="circle"> <span class="check"></span>
								</span>
								</label>
							</div>
						</div>
					</center>
					<br> <br>
					<div class="input-group" style="width: 70%; margin: 0 auto;">

						<div class="input-group-prepend">
							<div class="input-group-text" style="backbackground: red;">
								<i class="material-icons">search</i>
							</div>
						</div>
						<input type="text" class="form-control" placeholder="Search ..."
							id="" name="searchvalue" required="true">
					</div>
					<center>
						<br>
						<button type="submit" class="btn btn-success">
							<i class="material-icons">search</i> &nbsp Chercher
						</button>
					</center>
				</form>
				<form method="post" action="ChercherOffreByDate.ma">
					<hr>
					<br>
					<center>
						<h4 class="card-title" style="color: #760B39;">
							<strong>Recherche par date de disponibilit�</strong>
						</h4>
					</center>
					<br>
					<center>
						<div class="row" style="width: 80%;">
							<div class="col">
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="material-icons">date_range</i> &nbsp Date d�but :
										</div>
									</div>
									<input type="date" class="form-control"
										placeholder="First Name..." id="date_debut_search"
										name="date_debut_search" required="true">
								</div>
							</div>
							<div class="col">
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="material-icons">date_range</i> &nbsp Date fin :
										</div>
									</div>
									<input type="date" class="form-control"
										placeholder="First Name..." id="date_fin_search"
										name="date_fin_search" required="true">
								</div>
							</div>
						</div>
						<br>
						<button type="submit" class="btn btn-success">
							<i class="material-icons">search</i> &nbsp Chercher
						</button>
					</center>
				</form>
			</div>
		</div>
		<br> <br> <br>
		<footer class="ftco-footer ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Hire && Sale</h2>
						<p>R�servez des h�bergements uniques.</p>
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
						<h2 class="ftco-heading-2">� propos</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Notre
									Histoire</a></li>
							<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Nos
									Carri�res</a></li>
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
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
<link rel="icon" type="image/png" href="img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Données Propriétaire</title>
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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/offre/style.css">

<style>
.label {
	color: white;
	padding: 6px;
	background-color: #e7e7e7;
	color: black;
}
</style>

</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white"
			data-image="assets/img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo ">
				<a href="#" class="simple-text logo-normal active"> Hire && Sale
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item "><a class="nav-link"
						href="AcceuilAdmin.ma"> <i class="material-icons">home</i>
							<p>Acceuil</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <i
							class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item  active"><a class="nav-link"
						href="ListVendeur.ma"> <i class="material-icons">account_circle</i>
							<p>Liste des propriétaires</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="ListClient.ma">
							<i class="material-icons">supervised_user_circle</i>
							<p>Liste des clients</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="ListOffre.ma">
							<i class="material-icons">local_offer</i>
							<p>Liste des offres</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="ListDemandeClient.ma"> <i class="material-icons">format_indent_increase</i>
							<p>Liste des demandes</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="./icons.html">
							<i class="material-icons">format_indent_decrease</i>
							<p>Demandes confirmées</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="Message.ma">
							<i class="material-icons">textsms</i>
							<p>Messages</p>
					</a></li>

				</ul>
			</div>
		</div>


		<div class="main-panel">
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<a class="navbar-brand" href="#pablo">Accueil</a>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end">
					<form class="navbar-form">
						<div class="input-group no-border">
							<input type="text" value="" class="form-control"
								placeholder="Search...">
							<button type="submit"
								class="btn btn-white btn-round btn-just-icon">
								<i class="material-icons">search</i>
								<div class="ripple-container"></div>
							</button>
						</div>
					</form>
					<ul class="navbar-nav">

						<li class="nav-item dropdown"><a class="nav-link"
							href="http://example.com" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="material-icons">notifications</i> <span
								class="notification">2</span>
								<p class="d-lg-none d-md-block">Some Actions</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="#">Mike John responded to
									your email</a> <a class="dropdown-item" href="#">You have 5 new
									tasks</a>
							</div></li>
						<li class="nav-item dropdown"><a class="nav-link"
							href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="material-icons">person</i>
								<p class="d-lg-none d-md-block">Compte</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownProfile">
								<a class="dropdown-item" href="#"
									style="background-color: gray;">${sessionScope.nom }${sessionScope.prenom }</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Profil</a> <a
									class="dropdown-item" href="Deconnexion.ma">Se déconnecter</a>
							</div></li>
					</ul>
				</div>
			</div>
			</nav>
			<!-- End Navbar -->

			<div class="content">

				<c:if test="${alert != null}">
					<div class="card" style="width: 60%; margin: 0 auto;">
						<div class="card-body">
							<center class="font-weight-bold">
								<strong>${alert } </strong>
							</center>
						</div>
					</div>
				</c:if>

				<div class="steps" method="post">

					<fieldset>
						<h2 class="fs-title">Données du propriétaire N°
							${vendeur.getId()}</h2>
						<br />
						<br />
						<div class="row">
							<div class="col-md-6">
								<div class="categ field hs-form-field">
									<span class="label">Nom :</span> ${vendeur.getNom()} <br>
									<div class="dropdown-divider"></div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="categ field hs-form-field">
									<span class="label">Prenom :</span> ${vendeur.getPrenom()}<br>
									<div class="dropdown-divider"></div>
								</div>
							</div>
						</div>
						<br />
						<br />

						<div class="row">
							<div class="col-md-4">
								<div class="categ field hs-form-field">
									<span class="label">Cin :</span> ${vendeur.getNum_cin()}<br>
									<div class="dropdown-divider"></div>
								</div>
							</div>

							<div class="col-md-8">
								<div class="categ field hs-form-field">
									<span class="label">Date de naissance :</span>
									${vendeur.getDate_naissane()}<br>
									<div class="dropdown-divider"></div>
								</div>
							</div>
						</div>
						<br />
						<br />

						<div class="categ field hs-form-field">
							<span class="label">Email :</span> ${vendeur.getEmail()}<br>
							<div class="dropdown-divider"></div>
						</div>
						<br />

						<div class="row">
							<div class="col-md-6">
								<div class="categ field hs-form-field">
									<span class="label">Pays :</span> ${vendeur.getPays()}<br>
									<div class="dropdown-divider"></div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="categ field hs-form-field">
									<span class="label">Ville :</span> ${vendeur.getVille()}<br>
									<div class="dropdown-divider"></div>
								</div>
							</div>
						</div>
						<br />
						<br />

					</fieldset>
				</div>
			</div>
			<!-- partial -->
			<script
				src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
			<script
				src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
			<script
				src='https://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.js'></script>
			<script src="js/offre/script.js"></script>

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
			<script
				src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
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
																		function(
																				event) {
																			// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
																			if ($(
																					this)
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

																			$(
																					this)
																					.siblings()
																					.removeClass(
																							'active');
																			$(
																					this)
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
																			$(
																					this)
																					.siblings()
																					.removeClass(
																							'active');
																			$(
																					this)
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

														$(
																'.fixed-plugin .img-holder')
																.click(
																		function() {
																			$full_page_background = $('.full-page-background');

																			$(
																					this)
																					.parent(
																							'li')
																					.siblings()
																					.removeClass(
																							'active');
																			$(
																					this)
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

														$(
																'.switch-sidebar-image input')
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

														$(
																'.switch-sidebar-mini input')
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
</body>

</html>

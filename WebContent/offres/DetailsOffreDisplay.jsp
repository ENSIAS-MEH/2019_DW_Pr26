<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel='stylesheet'
	href='https://www.jqueryscript.net/demo/Fully-Functional-jQuery-Image-Video-Gallery-Plugin-Unite-Gallery/unitegallery/css/unite-gallery.css'>


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

<link rel="stylesheet" href="css/material-dashboard.css">
<!-- Icon fontawensom  -->

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!--  Jquery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
	<p></p>
	<c:if test="${sessionScope.account_type == 'client'}">
		<c:import url="../navbar/NavbarClient.jsp" />
	</c:if>
	<c:if test="${sessionScope.account_type == 'vendeur'}">
		<c:import url="../navbar/NavbarVendeur.jsp" />
	</c:if>
<br><br><br>
	<div class="content card" style="width: 98%; margin: 0 auto;">
		<div class="comtainer">
			<center>
				<div class="col-sm-7 col-sm-offset-3 ">
					<div class="card">
						<div class="card-body" style="font-size: 20px;">
							<strong style="color: #B22222">Détail offre</strong>
						</div>
					</div>
					<br />

					<div id="gallery">
						<img alt="Preview Image 1"
							src="data:image/jpg;base64,${offre.base64Image}"
							data-image="data:image/jpg;base64,${offre.base64Image}"
							data-description="Preview Image 1 Description"> <img
							alt="Preview Image 1"
							src="data:image/jpg;base64,${offre.base64Image}"
							data-image="data:image/jpg;base64,${offre.base64Image}"
							data-description="Preview Image 1 Description">
					</div>
				</div>
			</center>
		</div>
		<br>
		<br>
		<center>
			<div class="col-md-6">
				<div class="card" style="margin: 0 auto;">
					<div class="card-header">
						<h4 class="card-title">
							<strong> Type offre : </strong> ${offre.getType() }
						</h4>
						<h4 class="card-title">
							<strong> Catégorie : </strong> ${offre.getCategorie() }
						</h4>
					</div>
				</div>
			</div>
		</center>
		<br>
		<div class="row">
		<c:if test="${offre.getType() != 'Vente'}">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header card-header-icon card-header-rose">
						<div class="card-icon">
							<h4>
								<i class="material-icons">date_range</i> Date disponibilité
							</h4>
						</div>
					</div>
					
					<div class="card-body" style="margin: 0 auto;">
						<div class="input-group input-daterange">

							<input type="date" value="${offre.getDate_debut()}"
								readonly="readonly">
							<div class="input-group-addon"
								style="font-size: 25px; color: red;">
								<strong><i class="material-icons">arrow_right_alt</i> </strong>
							</div>
							<input type="date" value="${offre.getDate_fin() }"
								readonly="readonly">
						</div>
					</div>
					
				</div>
			</div>
			</c:if>

			<div class="col-md-6">
				<div class="card">
					<div class="card-header card-header-text card-header-primary">
						<div class="card-text">
							<h4 class="card-title">
								<i class="material-icons">wb_iridescent</i>Info offre
							</h4>
						</div>
					</div>
					<div class="card-body" style="margin: 0 auto;">
						<h4 class="card-title">
							<strong> Nombre Personne : </strong> ${offre.getNombre_personne() }
							<span class="flaticon-bed"></span>
						</h4>
						<h4 class="card-title">
							<strong> Nombre Chambre : </strong> ${offre.getNb_chambre() } <span
								class="flaticon-floor-plan"></span>
						</h4>
						<h4 class="card-title">
							<strong> Nombre salle de bain : </strong> ${offre.getSalle_bain() }
							<span class="flaticon-bathtub"></span>
						</h4>
					</div>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="col-md-6">
				<div class="card">
					<div class="card-header card-header-text card-header-primary">
						<div class="card-text">
							<h4 class="card-title">
								<i class="material-icons">near_me</i>Localisation
							</h4>
						</div>
					</div>
					<div class="card-body">
						<h4>
							Pays : <strong>${offre.getPays() }</strong>
						</h4>
						<h4>
							Ville : <strong>${offre.getVille() }</strong>
						</h4>
						<h4>
							Adresse : <strong>${offre.getAdresse() }</strong>
						</h4>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-header card-header-text card-header-rose">
						<div class="card-text">
							<h4 class="card-title">
								<i class="material-icons">account_circle</i>
								Info Propriétaire
							</h4>
						</div>
					</div>
					
						
					<div class="card-body">
						<h4>
							Nom : <strong>${proprietaire.getNom() }</strong>
						</h4>
						<h4>
							Prenom : <strong>${proprietaire.getPrenom() }</strong>
						</h4>
						<h4>
							Numéro téléphone : <strong>${proprietaire.getNum_telephone() }</strong>
						</h4>
						<h4>
							Email : <strong>${proprietaire.getEmail() }</strong>
						</h4>
					</div>
				</div>
			</div>
		</div>

		<div class="card" style="width: 80%; margin: 0 auto;">
			<div class="card-body">
				<h6 class="card-category text-success">
					<strong> <i class="material-icons">wb_incandescent</i>
						Description
					</strong>
				</h6>
				<h4 class="card-title">
					<a href="#">${offre.getDescription() }</a>
				</h4>
			</div>
		</div>
		<div
			style="background: #FFFFFF; background-color: #FFFFFF; Margin: 0px auto; max-width: 600px;">
			<table align="center" border="0" cellpadding="0" cellspacing="0"
				role="presentation"
				style="background: #FFFFFF; background-color: #FFFFFF; width: 100%;">
				<tbody>
					<tr>
						<td
							style="direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: middle; background: #FFFFFF; background-color: #FFFFFF;">
							<div class="mj-column-per-25 outlook-group-fix"
								style="font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: middle; width: 100%; background: #FFFFFF; background-color: #FFFFFF;">
								<table border="0" cellpadding="0" cellspacing="0"
									role="presentation" style="vertical-align: middle;"
									width="100%">
								</table>
							</div>
							<div class="mj-column-per-50 outlook-group-fix"
								style="font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: middle; width: 100%;">
								<table border="0" cellpadding="0" cellspacing="0"
									role="presentation" width="100%">
									<tbody>
										<tr>
											<td style="vertical-align: middle; padding-bottom: 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													role="presentation" style="" width="100%">
													<tr>
														<td align="center"
															style="font-size: 0px; padding: 10px 25px; word-break: break-word;">

															<c:if test="${offre.getType() == 'Location' }">
																<div
																	style="font-family: Arial, Helvetical, sans-serif; font-size: 13px; font-weight: bold; line-height: 110%; text-align: center; color: #000000;">Prix
																	Total / Nuit</div>
															</c:if> <c:if test="${offre.getType() == 'Vente' }">
																<div
																	style="font-family: Arial, Helvetical, sans-serif; font-size: 13px; font-weight: bold; line-height: 110%; text-align: center; color: #000000;">Prix
																	Total de Vente</div>
															</c:if>
														</td>
													</tr>
													<tr>
														<td align="center" vertical-align="middle"
															style="font-size: 0px; padding: 10px 25px; padding-top: 0px; padding-bottom: 10px; word-break: break-word;">
															<table cellpadding="0" cellspacing="0" width="100%"
																border="0"
																style="cellspacing: 0; color: #32CD32; font-family: Arial, Helvetical, sans-serif; font-size: 13px; line-height: 110%; table-layout: auto; width: 100%;">
																<tr>
																	<td align="center" width="60%">
																		<p
																			style="font-size: 65px; font-weight: bold; color: #32CD32; letter-spacing: -2px; line-height: 110%;">${offre.getPrix() }
																			<sup
																				style="font-size: 30px; color: #32CD32; line-height: 110%;"
																				padding-top="0px">${offre.getDevise() }</sup>
																		</p>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td align="center" vertical-align="middle"
															style="font-size: 0px; padding: 10px 25px; word-break: break-word;">
															<table border="0" cellpadding="0" cellspacing="0"
																role="presentation"
																style="border-collapse: separate; width: 200px; line-height: 100%;">
																<tr>
																<c:if test="${offre.getType() == 'Location' }">
																<td align="center" bgcolor="#32CD32"
																		role="presentation"
																		style="border: 2px solid #32CD32; border-radius: 5px; cursor: auto; padding: 10px 25px; background: #32CD32;"
																		valign="middle"><a href="ReservezOffreClient.ma?id=${offre.getId() }"
																		style="background: #32CD32; color: #000; font-family: Arial, Helvetical, sans-serif; font-size: 14px; font-weight: normal; line-height: 120%; Margin: 0; text-decoration: none; text-transform: uppercase;"
																		target="_blank" onclick="return confirm('Voulez vous vraiment envoyez une demande de réservation')">															
																		<strong>Réservez</strong>
																		</a></td>
															</c:if> <c:if test="${offre.getType() == 'Vente' }">
																<td align="center" bgcolor="#32CD32"
																		role="presentation"
																		style="border: 2px solid #32CD32; border-radius: 5px; cursor: auto; padding: 10px 25px; background: #32CD32;"
																		valign="middle"><a href="DemandeAchatClient.ma?id_offre=${offre.getId() }&id_vendeur=${proprietaire.getId() }"
																		style="background: #32CD32; color: #000; font-family: Arial, Helvetical, sans-serif; font-size: 14px; font-weight: normal; line-height: 120%; Margin: 0; text-decoration: none; text-transform: uppercase;"
																		onclick="return confirm('Voulez vous vraiment envoyez une demande d'achat')">															
																		<strong>Demande d'achat</strong>
																		</a></td>
															</c:if>		
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="mj-column-per-25 outlook-group-fix"
								style="font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: middle; width: 100%;">
								<table border="0" cellpadding="0" cellspacing="0"
									role="presentation" style="vertical-align: middle;"
									width="100%">
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
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

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
	<script
		src='https://www.jqueryscript.net/demo/Fully-Functional-jQuery-Image-Video-Gallery-Plugin-Unite-Gallery/unitegallery/js/unitegallery.min.js'></script>
	<script
		src='https://www.jqueryscript.net/demo/Fully-Functional-jQuery-Image-Video-Gallery-Plugin-Unite-Gallery/unitegallery/themes/slider/ug-theme-slider.js'></script>
	<script>
		jQuery(document).ready(function() {

			jQuery("#gallery").unitegallery();

		});
	</script>
	

</body>

</html>
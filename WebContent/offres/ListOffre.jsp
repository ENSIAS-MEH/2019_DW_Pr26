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
</head>
<c:if test="${sessionScope.account_type == 'vendeur'}">
	<c:import url="../navbar/NavbarVendeur.jsp" />
</c:if>
<c:if test="${sessionScope.account_type == 'admin'}">
	<c:import url="../navbar/NavbarAdmin.jsp" />
</c:if>
<div class="content">

	<c:if test="${alert != null}">

		<div class="alert alert-dismissible fade show" role="alert"
			style="width: 60%; margin: 0 auto;">

			<center class="font-weight-bold">${alert }</center>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>

		</div>
	</c:if>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header card-header-primary">
						<h4 class="card-title ">Liste des offres</h4>
						<c:if test="${sessionScope.account_type == 'vendeur'}">
							<p class="card-category">la liste de tous vos offres
								effectuées</p>
						</c:if>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table">
								<thead class=" text-primary">
									<th>Catégorie</th>
									<th>Vente/Location</th>
									<th>Pays</th>
									<th>Ville</th>
									<th>Adresse</th>
									<th>Date Début</th>
									<th>Date Fin</th>
									<th>Etat</th>
									<th>Action</th>
								</thead>
								<tbody>
									<c:forEach items="${offres}" var="o">
										<tr>
											<td>${o.getCategorie()}</td>
											<td>${o.getType()}</td>
											<td>${o.getPays()}</td>
											<td>${o.getVille()}</td>
											<td>${o.getAdresse()}</td>
											<td>${o.getDate_debut()}</td>
											<td>${o.getDate_fin()}</td>
											<td><c:if test="${o.getEtat() == 'en attente'}">
													<button type="button" class="btn btn-warning btn-sm">En
														Attente</button>
												</c:if> <c:if test="${o.getEtat() == 'Confirmée'}">
													<button type="button" class="btn btn-success btn-sm">Confirmée</button>
												</c:if></td>
											<td><a href="DetailOffre.ma?id=${o.getId()}"
												class=" btn-circle btn-sm" title="Ouvrir"><i
													class="far fa-folder-open" style="color: green;"></i></a> <c:if
													test="${sessionScope.account_type == 'vendeur'}">
													<c:if test="${o.getEtat() == 'en attente'}">
														<a href="ModifierOffre.ma?id=${o.getId()}" class=" "
															title="Mettre à jour" style="color: blue;"> <i
															class="fas fa-sync"></i></a>
													</c:if>
												</c:if> <c:if test="${o.getEtat() == 'en attente'}">
													<a href="SupprimerOffre.ma?id=${o.getId()}"
														class="  btn-circle btn-sm" title="Supprimer"
														onclick="return confirm('Voulez vous vraiment supprimer cette demande');"
														style="color: red;"><i class="fas fa-trash"></i></a>
												</c:if></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<script src="js/core/jquery.min.js"></script>


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

											window_width = $(window).width();

											fixed_plugin_open = $(
													'.sidebar .sidebar-wrapper .nav li.active a p')
													.html();

											if (window_width > 767
													&& fixed_plugin_open == 'Dashboard') {
												if ($('.fixed-plugin .dropdown')
														.hasClass(
																'show-dropdown')) {
													$('.fixed-plugin .dropdown')
															.addClass('open');
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
																	$('body')
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
																		}, 180);

																// we stop the simulation of Window Resize after the animations are completed
																setTimeout(
																		function() {
																			clearInterval(simulateWindowResize);
																		}, 1000);

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
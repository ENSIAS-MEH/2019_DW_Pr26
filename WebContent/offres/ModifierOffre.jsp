<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/offre/style.css">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
	rel="stylesheet">
</head>
<c:if test="${sessionScope.account_type == 'vendeur'}">
	<c:import url="../navbar/NavbarVendeur.jsp" />
</c:if>
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

	<!-- Modal -info -->


	<ul id="progressbar">
		<li class="active">Categorie</li>
		<li>Emplacement</li>
		<li>Informations</li>
	
		<li>Description</li>
	</ul>
	<%-- pour l affichage photo 
	<div class="card-header ">
		<div class="card-avatar">
			<a href="#pablo"> <img class="img"
				src="data:image/jpg;base64,${offre.base64Image}">
			</a>
		</div>
	</div>
	 --%>
	<form class="steps" method="post" action="ModifierOffre.ma"
		enctype="multipart/form-data">
		<input type="hidden" name="id" value="${offre.getId()}">
		<!-- USER INFORMATION FIELD SET -->
		<fieldset style="width: 100%; float: left; margin: 0;">
			<h2 class="fs-title">Categorie de l'immobilier</h2>
			<h3 class="fs-subtitle">Choisissez la catégorie de votre
				immobilier</h3>
			
			<!-- Begin What's Your First Name Field -->
			<div class="categ field hs-form-field">
				<label for="hs_categ">Transaction <b style="color: red;">*</b> :</label><br>
				<div class="control row col-md-12">
				<c:choose>
						<c:when test="${offre.getType() == 'Vente'}">
							<label class="radio col-md-4"> <input type="radio" name="type" value="Vente" id="vente"  onclick="Vente()" checked="checked" >
						Vente
					</label>
						</c:when>
						<c:otherwise>
							<label class="radio col-md-4"> <input type="radio" name="type" value="Vente" id="vente"  onclick="Vente()" >
						Vente
					</label>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getType() == 'Location'}">
							<label class="radio col-md-4"> <input type="radio" name="type" value="Location" id="location" onClick="Location()" checked="checked">
						Location
					</label>
						</c:when>
						<c:otherwise>
							 <label class="radio col-md-4"> <input type="radio" name="type" value="Location" id="location" onClick="Location()">
						Location
					</label>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getType() == 'Location vacances'}">
							<label class="radio col-md-4"> <input type="radio" name="type" value="Location vacances" id="vacances" onClick="Location()" checked="checked">
						Location vacances
					</label>
						</c:when>
						<c:otherwise>
							<label class="radio col-md-4"> <input type="radio" name="type" value="Location vacances" id="vacances" onClick="Location()">
						Location vacances
					</label>
						</c:otherwise>
					</c:choose>
					 
				</div>
				<label for="hs_categ">Catégorie <b style="color: red;">*</b> :</label><br>
				<div class="control row col-md-12">
				<c:choose>
						<c:when test="${offre.getCategorie() == 'Appartement'}">
							<label class="radio col-md-4" style="display: block;" id="Appartement"> <input type="radio" name="categorie" value="Appartement"  checked="checked">
						Appartement
					</label>
						</c:when>
						<c:otherwise>
							 <label class="radio col-md-4" style="display: block;" id="Appartement"> <input type="radio" name="categorie" value="Appartement"  >
						Appartement
					</label>
						</c:otherwise>
					</c:choose>
				<c:choose>
						<c:when test="${offre.getCategorie() == 'Maison'}">
							 <label class="radio col-md-4" style="display: block;" id="Maison"> <input type="radio" name="categorie" value="Maison" checked="checked" >
						Maison
					</label>
						</c:when>
						<c:otherwise>
							  <label class="radio col-md-4" style="display: block;" id="Maison"> <input type="radio" name="categorie" value="Maison" >
						Maison
					</label>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getCategorie() == 'Villas & maisons de luxe'}">
							<label class="radio col-md-4" style="display: block;" id="Villas"> <input type="radio" name="categorie" value="Villas & maisons de luxe" checked="checked">
						 Villas & maisons de luxe
					</label>
						</c:when>
						<c:otherwise>
							 <label class="radio col-md-4" style="display: block;" id="Villas"> <input type="radio" name="categorie" value="Villas & maisons de luxe" >
						 Villas & maisons de luxe
					</label>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getCategorie() == 'Riad'}">
							 <label class="radio col-md-4" style="display: block;" id = "Riad"> <input type="radio" name="categorie" value="Riad" checked="checked">
						  Riad
					</label>
						</c:when>
						<c:otherwise>
							 <label class="radio col-md-4" style="display: block;" id = "Riad"> <input type="radio" name="categorie" value="Riad" >
						  Riad
					</label>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getCategorie() == 'Chambres'}">
							<label class="radio col-md-4" style="display: none;" id = "Chambres"> <input type="radio" name="categorie" value="Chambres" checked="checked">
						  Chambres
					</label>
						</c:when>
						<c:otherwise>
							 <label class="radio col-md-4" style="display: none;" id = "Chambres"> <input type="radio" name="categorie" value="Chambres" >
						  Chambres
					</label>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getCategorie() == 'Chambre d un Hôtel'}">
							 <label class="radio col-md-4" id="Hotel" style="display: none;"> <input type="radio" name="categorie" value="Chambre d'un Hotel" checked="checked" >
						  Chambre d'un Hôtel
					</label>
						</c:when>
						<c:otherwise>
							 <label class="radio col-md-4" id="Hotel" style="display: none;"> <input type="radio" name="categorie" value="Chambre d'un Hôtel" >
						  Chambre d'un Hôtel
					</label>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getCategorie() == 'Chambre d une auberge'}">
							<label  id="Hauberge" style="display: none;" class="radio col-md-4"> <input type="radio" name="categorie" value="Chambre d'une auberge" checked="checked">
						  Chambre d'une auberge
					</label >
						</c:when>
						<c:otherwise>
							 <label  id="Hauberge" style="display: none;" class="radio col-md-4"> <input type="radio" name="categorie" value="Chambre d'une auberge" >
						  Chambre d'une auberge
					</label >
						</c:otherwise>
					</c:choose>
					
				</div>
				  <span class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
			<!-- End What's Your First Name Field -->


			<!-- Begin What's Your Email Field -->
<script >


function Vente() {
 
 
    document.getElementById("Appartement").style.display = "block";
    document.getElementById("Maison").style.display = "block";
    document.getElementById("Villas").style.display = "block";
    document.getElementById("Riad").style.display = "block";
    document.getElementById("Chambres").style.display = "none";
    document.getElementById("Hotel").style.display = "none";
    document.getElementById("Hauberge").style.display = "none";
    document.getElementById("inf1").style.display = "none";
    document.getElementById("inf4").style.display = "none";
    document.getElementById("inf5").style.display = "none";
  
}
function Location() {
	
	    document.getElementById("Appartement").style.display = "block";
	    document.getElementById("Maison").style.display = "block";
	    document.getElementById("Villas").style.display = "block";
	    document.getElementById("Riad").style.display = "block";
	    document.getElementById("Chambres").style.display = "block";
	    document.getElementById("Hotel").style.display = "block";
	    document.getElementById("Hauberge").style.display = "block";
	    document.getElementById("inf1").style.display = "block";
	    document.getElementById("inf4").style.display = "block";
	    document.getElementById("inf5").style.display = "block";
	  
	}


</script>

			<!-- End Total Number of Constituents in Your Database Field -->
			<input type="button" data-page="1" name="next"
				class="next action-button" value="Next" />
		</fieldset>



		<!-- ACQUISITION FIELD SET -->
		<fieldset style="width: 100%; float: left; margin: 0;">
			<h2 class="fs-title">Emplacement</h2>
			<h3 class="fs-subtitle">Des informations sur l'Emplacement de l'immobilier</h3>
			<!-- Begin Total Number of Donors in Year 1 Field -->
			<div
				class="form-item webform-component webform-component-textfield hs_total_number_of_donors_in_year_1 field hs-form-field"
				id="webform-component-acquisition--amount-1">

				<label for="pays">Pays <b style="color: red;">*</b></label> <input id="pays"
					class="form-text hs-input" name="pays" required="required"
					type="text" value="${offre.getPays()}" placeholder="" data-rule-required="true"
					data-msg-required="Please enter a text"> <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
			<!-- End Total Number of Donors in Year 1 Field -->

			<!-- Begin Total Number of Donors in Year 2 Field -->
			<div
				class="form-item webform-component webform-component-textfield hs_total_number_of_donors_in_year_2 field hs-form-field"
				id="webform-component-acquisition--amount-2">

				<label for="ville">Ville <b style="color: red;">*</b></label> <input id="ville"
					class="form-text hs-input" name="ville" required="required"
					type="text"  placeholder="" value="${offre.getVille()}" data-rule-required="true"
					data-msg-required="Please enter a text"> <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
			<!-- End Total Number of Donors in Year 2 Field -->

			<!-- Begin Calc of Total Number of Donors Fields -->
			<!-- THIS FIELD IS NOT EDITABLE | GRAYED OUT -->
			<div
				class="form-item webform-component webform-component-textfield webform-container-inline hs_total_donor_percent_change field hs-form-field">

				<label for="adresse">Adresse <b style="color: red;">*</b></label> <input id="adresse"
					class="form-text hs-input" name="adresse" type="text" value="${offre.getAdresse()}"
					required="required" data-rule-required="true"
					data-msg-required="Please enter a text"> <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
			<!-- End Calc of Total Number of Donors Fields -->
			<input type="button" data-page="2" name="previous"
				class="previous action-button" value="Previous" /> <input
				type="button" data-page="2" name="next" class="next action-button"
				value="Next" />

		</fieldset>



		<!-- Cultivation FIELD SET -->
		<fieldset style="width: 100%; float: left; margin: 0;">
			<h2 class="fs-title">Informations</h2>
			<h3 class="fs-subtitle">Date début, date fin et prix de
				l'immobilier</h3>
			<!-- Begin Average Gift Size in Year 1 Field -->
			<div class="row col-md-12">
			<div class="hs_nombre field hs-form-field col-md-4" style="display: none;" id="inf1">
				<label for="nmb">Nombre de personne <b style="color: red;">*</b> <br> <input id="nmb"
					name="nombre_personne" required="required" type="number"
					maxlength="5" minlength="0" placeholder=""
					data-rule-required="true"
					data-msg-required="Please enter a number " min="1" max="100"  > <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span></label>
			</div>
			<div
				class="hs_nombre field hs-form-field  col-md-4"
				id="webform-component-cultivation--amount-4" id="inf2">

				<label for="nb_chambre">Nombre de chambres <b style="color: red;">*</b>   <input
					id="nb_chambre" class="form-text hs-input" name="nb_chambre"
					required="required"  min="1" max="100" value="${offre.getNb_chambre()}" type="number"
					 placeholder="" data-rule-required="true" maxlength="5" minlength="0"
					data-msg-required="Please enter a valid number"> <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span></label>
			
			</div>
			<div class="hs_nombre field hs-form-field  col-md-4"
				id="webform-component-cultivation--amount-3 hs_total_giving_in_year_1 field hs-form-field inf3">

				<label for="bain">Nombre de salles de bain <b style="color: red;">*</b><input
					id="bain" class="form-text hs-input" name="salle_bain"
					required="required" size="60" maxlength="128" value="${offre.getSalle_bain()}" type="number"
					 placeholder="" data-rule-required="true"
					data-msg-required="Please enter a valid number" min="1" max="100"> <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span></label> 
			</div>
			<!-- End Total Giving In Year 1 Field -->
</div>
			<!-- Begin Total Giving In Year 2 Field -->
			<div class="row col-md-12">
			<div id="inf4" class="col-md-6" style="display: none;">
			<div
				class="form-item webform-component webform-component-textfield hs_average_gift_size_in_year_1 field hs-form-field"
				id="edit-submitted-cultivation-amount-1 average_gift_size_in_year_1-99a6d115-5e68-4355-a7d0-529207feb0b3_3256 " >

				<label for="date_debut">Date début <b style="color: red;">*</b></label> <input id="date_debut"
					class="form-text hs-input" name="date_debut" required="required"
					type="date"  placeholder="" value="${offre.getDate_debut()}" data-rule-required="true"
					data-msg-required="Please enter a valid date"> <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
			</div>
			<!-- End Average Gift Size in Year 1 Field -->

			<!-- Begin Average Gift Size in Year 2 Field -->
			<div id="inf5" class="col-md-6" style="display: none;">
			<div
				class="form-item webform-component webform-component-textfield hs_average_gift_size_in_year_2 field hs-form-field "
				id="webform-component-cultivation--amount-2" >

				<label for="date_fin">Date fin <b style="color: red;">*</b></label> <input id="date_fin"
					class="form-text hs-input" name="date_fin" value="${offre.getDate_fin()}" required="required"
					type="date"  placeholder="" data-rule-required="true"
					data-msg-required="Please enter a valid date"> <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
</div>
</div>
<div class="row col-md-12">
			<div
				class="col-md-6 form-item webform-component webform-component-textfield webform-container-inline hs_total_donor_percent_change field hs-form-field inf6">

				<label for="^prix">Prix/Nuit <b style="color: red;">*</b></label> <input id="prix"
					class="form-text hs-input" name="prix" type="number" value="${offre.getPrix()}"
					placeholder="0" required="required" data-rule-required="true"
					data-msg-required="Please enter a number" > <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
			<div
				class="col-md-6 form-item webform-component webform-component-textfield webform-container-inline hs_total_donor_percent_change field hs-form-field ">

				<label for="devise">Devise <b style="color: red;">*</b></label>
				<select name="devise" required="required" data-rule-required="true"
					data-msg-required="Please enter a text">
				<option value="">choisir une devise</option>
				<c:choose>
						<c:when test="${offre.getDevise() == 'DH'}">
							 <option value="DH" selected="selected">DH</option>
						</c:when>
						<c:otherwise>
							<option value="DH">DH</option>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getDevise() == 'EUR'}">
							 <option value="EUR" selected="selected">EUR</option>
						</c:when>
						<c:otherwise>
							<option value="EUR">EUR</option>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${offre.getDevise() == 'USD'}">
							 <option value="USD" selected="selected">USD</option>
						</c:when>
						<c:otherwise>
							<option value="USD">USD</option>
						</c:otherwise>
					</c:choose>
				
				</select>  <span
					class="error1" style="display: none;"> <i
					class="error-log fa fa-exclamation-triangle"></i>
				</span>
			</div>
			</div>
			<!-- End Average Gift Size in Year 2 Field -->


			<!-- End Average Gift Size Perchent Change Field -->
			<input type="button" data-page="3" name="previous"
				class="previous action-button" value="Previous" /> <input
				type="button" data-page="3" name="next" class="next action-button"
				value="Next" />
		</fieldset>



		<!-- Cultivation2 FIELD SET -->
		


		<!-- RETENTION FIELD SET -->
		<fieldset>
			<h2 class="fs-title">Descriptions & photos</h2>
			<h3 class="fs-subtitle">Descriptions & photos</h3>
			<!-- Begin Total Number of Donors Who Gave in Year 1 Field -->
			<div
				class="form-item webform-component webform-component-textfield hs_number_of_donors_in_year_1 field hs-form-field"
				id="webform-component-retention--amount-1">

				<label for="description">Description </label>

				<textarea id="desciption" class="form-text hs-input"
					name="description" rows="5" cols="33">${offre.getDescription()}</textarea>

			</div>
			<%-- <c:if test="${offre.base64Image != null} "> --%>
			<div
				class="form-item webform-component webform-component-textfield hs_number_of_donors_in_year_1 field hs-form-field"
				id="webform-component-retention--amount-1">

				<label for="oldphoto">Photo </label>
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail text-center">
							<img id="oldphoto"
								src="data:image/jpg;base64,${offre.base64Image}" alt=""
								style="width: 50%">
						</div>
					</div>
				</div>


			</div>
			<%-- </c:if> --%>
			<!-- 	<div class="form-item webform-component webform-component-textfield hs_number_of_donors_in_year_1 field hs-form-field"
				id="webform-component-retention--amount-1">

				<label for="photo">Modifier la Photo </label> <input id="photo" type="file"
					class="form-text hs-input" name="photo"
					accept="image/*" />
					

			</div> -->


			<input type="button" data-page="5" name="previous"
				class="previous action-button" value="Previous" /> <input
				id="submit" class="hs-button primary large action-button next"
				type="submit" value="Submit">
		</fieldset>

	</form>
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

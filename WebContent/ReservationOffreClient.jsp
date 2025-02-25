<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Demande réservation</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- Material Dashboard CSS -->
<link rel="stylesheet" href="assets/css/material-dashboard.css?v=2.1.1">
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

</head>
<body>
	<c:if test="${sessionScope.account_type == 'client'}">
		<c:import url="navbar/NavbarClient.jsp" />
	</c:if>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="card" style="width: 50%; margin: 0 auto;">
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
			<h4 class="card-title">
				<strong> Date de la disponibilité : </strong>
				<div class="input-group input-daterange">
					<input type="date" value="${offre.getDate_debut()}"
						readonly="readonly" id="date_debut_offre">
					<div class="input-group-addon" style="font-size: 25px; color: red;">
						<strong><i class="material-icons">arrow_right_alt</i> </strong>
					</div>
					<input type="date" value="${offre.getDate_fin() }"
						readonly="readonly" id="date_fin_offre">
				</div>
			</h4>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="card card-nav-tabs" style="width: 85%; margin: 0 auto;">
		<div class="card-header card-header-success">Demande de
			réservation</div>
		<div class="card-body">
			<h4 class="card-title">veuillez renseigner une date valide</h4>
			<form class="form" method="post" action="saveDemandeReservation.ma"
				style="width: 70%; margin: 0 auto;">
				<div class="form-group bmd-form-group">
					<div class="input-group">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<i class="material-icons">date_range</i> &nbsp Date début
								réservation :
							</div>
						</div>
						<input type="date" class="form-control"
							placeholder="First Name..." id="date_debut_reservation"
							name="date_debut_reservation" required="true">
					</div>
				</div>
				<div class="form-group bmd-form-group" id="nb_nuit">
					<div class="input-group">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<i class="material-icons">nights_stay</i> &nbsp Nombre nuit :
							</div>
						</div>
						<select class="form-control" id="number_night" name="nb_nuit">
							<option>1</option>
						</select>
					</div>
				</div>
				<div class="form-group bmd-form-group">
					<div class="input-group">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<i class="material-icons">update</i> &nbsp Date fin réservation
								:
							</div>
						</div>
						<input type="date" class="form-control"
							placeholder="First Name..." id="date_fin_reservatio"
							readonly="readonly" name="date_fin_reservation" required="true">
					</div>
				</div>
				<input type="text" name="id_vendeur"
					value="${proprietaire.getId() }" hidden="hidden"> <input
					type="text" name="id_offre" value="${offre.getId() }"
					hidden="hidden">
				<center>

					<br> <br> <input href="#0" type="submit"
						class="btn btn-success"
						onclick="return validationFormFromSubmit();"
						value="Valider Réservation" />
				</center>
			</form>

		</div>
	</div>
	<br>
	<br>
	<br>
	<!--   Core JS Files   -->
	<script src="assets/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
	<script src="assets/js/core/bootstrap-material-design.min.js"
		type="text/javascript"></script>

	<!-- Plugin for the Perfect Scrollbar -->
	<script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

	<!-- Plugin for the momentJs  -->
	<script src="assets/js/plugins/moment.min.js"></script>

	<!--  Plugin for Sweet Alert -->
	<script src="assets/js/plugins/sweetalert2.js"></script>

	<!-- Forms Validations Plugin -->
	<script src="assets/js/plugins/jquery.validate.min.js"></script>

	<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script src="assets/js/plugins/jquery.bootstrap-wizard.js"></script>

	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="assets/js/plugins/bootstrap-selectpicker.js"></script>

	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script src="assets/js/plugins/bootstrap-datetimepicker.min.js"></script>

	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
	<script src="assets/js/plugins/jquery.datatables.min.js"></script>

	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script src="assets/js/plugins/bootstrap-tagsinput.js"></script>

	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="assets/js/plugins/jasny-bootstrap.min.js"></script>

	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script src="assets/js/plugins/fullcalendar.min.js"></script>

	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script src="assets/js/plugins/jquery-jvectormap.js"></script>

	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="assets/js/plugins/nouislider.min.js"></script>

	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

	<!-- Library for adding dinamically elements -->
	<script src="assets/js/plugins/arrive.min.js"></script>

	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

	<!-- Chartist JS -->
	<script src="assets/js/plugins/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="assets/js/plugins/bootstrap-notify.js"></script>

	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/js/material-dashboard.min.js?v=2.1.1"
		type="text/javascript"></script>

	<script>
		// script modal 
		$('#nb_nuit').hide();	
		$('#date_debut_reservation').focusout(function() {
			var startDate = $('#date_debut_offre').val().replace(/-/g,'/');
			var endDate = $('#date_fin_offre').val().replace(/-/g,'/');
			var dateDebutSaisie = $('#date_debut_reservation').val().replace(/-/g,'/');
			if(dateDebutSaisie < endDate && dateDebutSaisie >= startDate){
				$('#nb_nuit').show();
				$('#nb_nuit').find('option').remove().end(); 
				$('#number_night').append('<option value="1" selected="selected">1 nuit </option>');
				var dateDebutRes = $('#date_debut_reservation').val(); 
				var dateFinRese = $('#date_fin_offre').val(); 
				var start = new Date(dateDebutRes); 
			    end   = new Date(dateFinRese);  
			    days  = (new Date(end - start))/1000/60/60/24;	
				for (i=2; i<=days; i++){
					var option = '<option value="'+i+'" selected="selected">'+i+' nuit</option>';
					$('#number_night').append(option);
				}				
				var maDate = $('#date_debut_reservation').val();
				var tabDate = maDate.split('-');
				var next14 = new Date(tabDate[0], tabDate[1]-1, +tabDate[2]+days); 
				var day = ("0" + next14.getDate()).slice(-2);
				var month = ("0" + (next14.getMonth() + 1)).slice(-2);
				var today = next14.getFullYear()+"-"+(month)+"-"+(day) ; 			
				$('#date_fin_reservatio').val(today); 
				}else{
					$('#nb_nuit').find('option').remove().end(); 
					$('#number_night').append('<option value="1" selected="selected">1 nuit </option>');
					$('#date_debut_reservation').val(''); 
					$('#nb_nuit').hide();
					$('#date_fin_reservatio').val(''); 
				alert('La date que vous avez saisie est incorrecte'); 
			}
		});

		$('#number_night').change(function () {
			var maDate = $('#date_debut_reservation').val();
			var tabDate = maDate.split('-');
			var next14 = new Date(tabDate[0], tabDate[1]-1, +(parseInt(tabDate[2])+parseInt($('#number_night').val())));
			var day = ("0" + next14.getDate()).slice(-2);
			var month = ("0" + (next14.getMonth() + 1)).slice(-2);
			var today = next14.getFullYear()+"-"+(month)+"-"+(day) ;   				
			$('#date_fin_reservatio').val(today); 
		}); 

		function validationFormFromSubmit(){
			if($('#date_debut_reservation').val() ==''){
				alert('Vous avez laisser un champ vide'); 
				return false ;
				}
			return confirm('Voulez-vous vraiment envoyer la demande'); 
			}

	</script>
</body>
</html>
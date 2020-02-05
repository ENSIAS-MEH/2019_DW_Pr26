<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Devenez hôte</title>
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
				<li class="nav-item"><a href="Accueil.ma"
					class="nav-link">Acceuil</a></li>
				<li class="nav-item"><a href="Services.ma" class="nav-link">Services</a></li>
				<li class="nav-item"><a href="DevenezHote.ma" class="nav-link">Devenez
						Hôte</a></li>
				<li class="nav-item"><a href="InscriptionClient.ma"
					class="nav-link active">Inscription</a></li>
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
		<div class="row justify-content-center">
			<div class="col-md-12 heading-section text-center ftco-animate mb-5">
				<span class="subheading">Créer votre compte</span>
				<h4 class="mb-2">Remplir le formulaire suivant pour créer votre
					compte</h4>
			</div>
		</div>
		<div class="row block-9 justify-content-center mb-5"
			style="background-color: #D8EBF7;">
			<div class="col-md-8 mb-md-5">
			<br><br>
				<form method="post" action="InscriptionClient.ma">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Prénom <span style="color: red;">*</span></label>
							<input type="text" class="form-control" id="inputEmail4"
								placeholder="Prénom" required="true" name="prenom">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Nom <span style="color: red;">*</span>
							</label> <input type="text" class="form-control" id="inputPassword4"
								placeholder="Nom" required="true" name="nom">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Date de naissance <span
								style="color: red;">*</span></label> <input type="date"
								class="form-control" id="inputEmail4" placeholder="03/11/1997"
								required="true" name="date_naissance">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Numéro CIN <span
								style="color: red;">*</span></label> <input type="text"
								class="form-control" id="inputPassword4" placeholder="CD5...."
								required="true" name="cin">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Sexe <span style="color: red;">*</span>
							</label> <select class="form-control selectpicker"
								data-style="btn btn-link" id="exampleFormControlSelect1"
								name="sexe">
								<option value="Homme">Homme</option>
								<option value="Femme">Femme</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Email <span
								style="color: red;">*</span></label> <input type="email"
								class="form-control" id="inputPassword4"
								placeholder="email@gmail.com" required="true" name="email">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputPassword4">Mot de passe <span
								style="color: red;">*</span>
							</label> <input type="password" class="form-control" id="password"
								placeholder="*******" required="true" name="password"
								minlength=8>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Confirmer le mot de passe <span
								style="color: red;">*</span></label> <input type="password"
								class="form-control" id="password_confirm"
								placeholder="********" required="" name="password_confirm">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Pays / Région <span
								style="color: red;">*</span></label> <input type="text"
								class="form-control" id="inputEmail4" placeholder="Maroc"
								required="true" name="pays">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Ville</label> <input type="text"
								class="form-control" id="inputPassword4" placeholder="Fés"
								name="ville">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Numéro de téléphone <span
								style="color: red;">*</span></label> <input type="text"
								class="form-control" id="inputEmail4" placeholder="065568...."
								required="true" name="telephone">
						</div>
					</div>
					<center>
						<button type="submit" class="btn btn-success btn-lg"
							onclick="return validationFormulaire(); ">Inscription</button>
					</center>
				</form>
			</div>
		</div>
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
	<script>
		$("#password_confirm")
				.blur(
						function() {
							if ($("#password_confirm").val() != $("#password")
									.val()) {
								alert('les mot de passe ne sont pas identiques ! merci de confirmez votre mot de passe');
							}
						});

		function validationFormulaire() {
			if ($("#password_confirm").val() != $("#password").val()) {
				alert('les mot de passe ne sont pas identiques ! merci de confirmez votre mot de passe');
				return false;
			}
			return confirm('Confirmer votre adhésion');
		}
	</script>
</body>
</html>
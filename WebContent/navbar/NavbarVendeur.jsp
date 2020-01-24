<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white"
			data-image="img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo text-center">
				<a class="navbar-brand" href="Accueil.ma"><i
					class="fas fa-hotel"></i> Hire && sale <i class="fas fa-building"></i>
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active  "><a class="nav-link"
						href="AcceuilVendeur.ma"> <i class="material-icons">home</i>
							<p>Acceuil</p>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="AcceuilVendeur.ma"> <i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="FormAjouterOffre.ma"> <i class="material-icons">local_offer</i>
							<p>Ajouter une offre</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="ListOffre.ma">
							<i class="material-icons">library_books</i>
							<p>Mes offres</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="./icons.html">
							<i class="material-icons">format_indent_increase</i>
							<p>Liste des demandes</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="./icons.html">
							<i class="material-icons">format_indent_decrease</i>
							<p>Demandes confirmées</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="./icons.html">
							<i class="material-icons">search</i>
							<p>Chercher une offre</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="./icons.html">
							<i class="material-icons">textsms</i>
							<p>Messages</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
			<div class="container-fluid">
				<div class="navbar-wrapper"></div>
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
						<li class="nav-item"><a class="nav-link" href="#pablo"> <i
								class="material-icons">dashboard</i>
								<p class="d-lg-none d-md-block">Stats</p>
						</a></li>
						<li class="nav-item dropdown"><a class="nav-link"
							href="http://example.com" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="material-icons">notifications</i> <span
								class="notification">5</span>
								<p class="d-lg-none d-md-block">Some Actions</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="#">Mike John responded to
									your email</a> <a class="dropdown-item" href="#">You have 5 new
									tasks</a> <a class="dropdown-item" href="#">You're now friend
									with Andrew</a> <a class="dropdown-item" href="#">Another
									Notification</a> <a class="dropdown-item" href="#">Another One</a>
							</div></li>
						<li class="nav-item dropdown"><a class="nav-link"
							href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="material-icons">person</i>
								<p class="d-lg-none d-md-block">Account</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownProfile">
								<a class="dropdown-item" href="#"
									style="background-color: gray;">${sessionScope.nom }
									${sessionScope.prenom }</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="ProfilVendeur.ma">Profil</a> <a
									class="dropdown-item" href="Deconnexion.ma">Se Déconnecter</a>
							</div></li>
					</ul>
				</div>
			</div>
			</nav>
			<!-- End Navbar -->
</html>
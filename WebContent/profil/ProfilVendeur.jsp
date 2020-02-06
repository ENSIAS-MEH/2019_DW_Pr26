<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="container-fluid">

	<div class="row col-md-12 text-center">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<h2 class="text-center ">Votre Profil</h2>
			<br>
			<div class="card card-profile">
				<div class="card-avatar">
					<a href="#pablo"> <img class="img" src="images/faces/marc.jpg" />
					</a>
				</div>
				<div class="card-body">

					<h4 class="card-title">${vendeur.getNom()}
						${vendeur.getPrenom()}</h4>
					<div class="form-row">

						<div class="col-md-6">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Nom : </label> <strong
									align="left">${vendeur.getNom()}</strong>

							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Prénom : </label> <strong
									align="left">${vendeur.getPrenom()}</strong>

							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">CIN : </label> <strong
									align="left">${vendeur.getNum_cin()}</strong>

							</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col-md-6">
							<div class="form-group" align="left">
								<label class="bmd-label-floating"> Email : </label> <strong
									align="left">${vendeur.getEmail()}</strong>

							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Numéro de téléphone :
								</label> <strong align="left">${vendeur.getNum_telephone()}</strong>

							</div>
						</div>
					</div>
					<div class="form-row">

						<div class="col-md-6">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Adresse : </label> <strong
									align="left">${vendeur.getAdresse()}</strong>

							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Ville : </label> <strong
									align="left">${vendeur.getVille()}</strong>

							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Pays : </label> <strong
									align="left">${vendeur.getPays()}</strong>

							</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col-md-6">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Sexe : </label> <strong
									align="left">${vendeur.getSexe()}</strong>

							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group" align="left">
								<label class="bmd-label-floating">Date naissance : </label> <strong
									align="left">${vendeur.getDate_naissane()}</strong>

							</div>
						</div>
					</div>
					<p class="card-description"></p>
					<a href="#pablo" class="btn btn-primary btn-round">Modifier</a>
				</div>
			</div>
		</div>
	</div>
</div>
</html>
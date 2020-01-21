package web.action;

import javax.servlet.http.HttpServletRequest;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.Vendeur;

public class VendeurAction {

	private Vendeur vendeur;
	private LocationServicesInter locationServices;

	public VendeurAction() {
		super();
		locationServices = (LocationServicesInter) new LocationServicesImpl();
	}

	public VendeurAction(Vendeur vendeur) {
		super();
		this.vendeur = vendeur;
	}

	public Vendeur getVendeur() {
		return vendeur;
	}

	public void setVendeur(Vendeur vendeur) {
		this.vendeur = vendeur;
	}

	public boolean inscriptionVendeur(HttpServletRequest request) {
		return locationServices.inscriptionVendeur(new Vendeur(request.getParameter("nom"), request.getParameter("prenom"),
				request.getParameter("date_naissance"), request.getParameter("cin"), request.getParameter("sexe"),
				request.getParameter("email"), request.getParameter("password"), request.getParameter("adresse"),
				request.getParameter("pays"), request.getParameter("ville"), request.getParameter("telephone")));
			
		
	}

	public boolean ConnexionVendeur(HttpServletRequest request) {
		// TODO Auto-generated method stub
	
		if(locationServices.connexionVendeur(request.getParameter("email"),request.getParameter("password"))) return true;
		return false;
	}
}

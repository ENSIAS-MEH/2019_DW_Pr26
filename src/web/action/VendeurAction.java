package web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.Vendeur;

public class VendeurAction {

	private Vendeur vendeur;
	private LocationServicesInter locationServices;
	private HttpSession session;

	public VendeurAction() {
		super();
		locationServices = (LocationServicesInter) new LocationServicesImpl();
		session= null;
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
		vendeur= locationServices.connexionVendeur(request.getParameter("email"),request.getParameter("password"));
		if(vendeur!=null){
			session = request.getSession();
			session.setAttribute("account_type", "vendeur");
			session.setAttribute("id",vendeur.getId() );
			session.setAttribute("nom",vendeur.getNom());
			session.setAttribute("prenom",vendeur.getPrenom());
			return true;
		}
		return false;
		
		
	}


}

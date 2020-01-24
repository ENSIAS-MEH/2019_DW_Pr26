package web.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import business.LocationServicesImpl;
import business.LocationServicesInter;

import models.Offre;
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
		return locationServices.inscriptionVendeur(new Vendeur(request.getParameter("nom"),
				request.getParameter("prenom"), request.getParameter("date_naissance"), request.getParameter("cin"),
				request.getParameter("sexe"), request.getParameter("email"), request.getParameter("password"),
				request.getParameter("adresse"), request.getParameter("pays"), request.getParameter("ville"),
				request.getParameter("telephone")));

	}

	public boolean ConnexionVendeur(HttpServletRequest request, HttpSession session) {

		vendeur = locationServices.getVendeurByEmail(request.getParameter("email"));
		if (vendeur == null) {
			System.out.println("hello");
			return false;
		} else {
			if (request.getParameter("email").equals(vendeur.getEmail())
					&& request.getParameter("password").equals(vendeur.getMot_de_passe())) {
				session = request.getSession();
				session.setAttribute("account_type", "vendeur");
				session.setAttribute("id", vendeur.getId());
				session.setAttribute("nom", vendeur.getNom());
				session.setAttribute("prenom", vendeur.getPrenom());
				return true;
			}
			return false;
		}

	}

	public Vendeur getVendeurById(int id) {

		return locationServices.getVendeurById(id);
	}

	public ArrayList<Vendeur> ListVendeur(){
		return locationServices.getListVendeur();
	}

}

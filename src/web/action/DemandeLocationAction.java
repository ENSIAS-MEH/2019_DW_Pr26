package web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.Client;
import models.DemandeLocation;

public class DemandeLocationAction {
	private DemandeLocation demandeLocation;
	private LocationServicesInter locationServices;

	public DemandeLocationAction() {
		super();
		locationServices = new LocationServicesImpl(); 
	}

	public DemandeLocationAction(DemandeLocation demandeLocation, LocationServicesInter locationServices) {
		super();
		this.demandeLocation = demandeLocation;
		this.locationServices = locationServices;
	}

	public DemandeLocation getClient() {
		return demandeLocation;
	}

	public void setClient(DemandeLocation demandeLocation) {
		this.demandeLocation = demandeLocation;
	}

	public LocationServicesInter getLocationServices() {
		return locationServices;
	}

	public void setLocationServices(LocationServicesInter locationServices) {
		this.locationServices = locationServices;
	}

	public void ajouterDeamandeLocation(HttpServletRequest request, HttpSession session) {
		
		demandeLocation = new DemandeLocation(request.getParameter("date_debut_reservation"),
				request.getParameter("date_fin_reservation"), (int) session.getAttribute("id"),
				Integer.parseInt(request.getParameter("id_vendeur")),
				Integer.parseInt(request.getParameter("id_offre")), java.time.LocalDate.now() + " ",
				Integer.parseInt(request.getParameter("nb_nuit")), "En attente");
		locationServices.ajouterDeamandeLocation(demandeLocation);
	}
}

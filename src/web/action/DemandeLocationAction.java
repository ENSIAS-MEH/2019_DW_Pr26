package web.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import business.LocationServicesImpl;
import business.LocationServicesInter;
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

	public ArrayList<DemandeLocation> getListDemandeLocationByIdClient(int id) {
		return locationServices.getListDemandeLocationByIdClient(id);
	}

	public ArrayList<DemandeLocation> getListReservationLocationByIdClient(int id) {
		return locationServices.getListReservationLocationByIdClient(id);
	}

	public ArrayList<DemandeLocation> getListReservationLocationByIdVendeur(int id) {
		return locationServices.getListReservationLocationByIdVendeur(id);
	}

	public ArrayList<DemandeLocation> getListDemandeLocationByIdVendeur(int id) {
		return locationServices.getListDemandeLocationByIdVendeur(id);
	}

	public ArrayList<DemandeLocation> getAllDemandeLocation() {
		return locationServices.getAllDemandeLocation();
	}

	public void deleteDemande(int id) {
		locationServices.deleteDemande(id);
	}

	public DemandeLocation getDemandeLocationById(int id) {
		return locationServices.getDemandeLocationById(id);
	}

	public void accepteDemandeLocation(int id) {
		locationServices.accepteDemandeLocation(id);

	}

	public void refuseDemandeLocation(int id) {
		locationServices.refuseDemandeLocation(id);

	}
	
	public int getNbreDmdLocation() {
		return locationServices.getNbreDmdLocation();
	}
	
	public void confirmerLocation(int id){
		locationServices.confirmerLocation(id);
	}
	
	public ArrayList<DemandeLocation> getListDemandeLocationConfirmeByIdVendeur(int id){
		return locationServices.getListDemandeLocationConfirmeByIdVendeur(id);
	}
	
	public ArrayList<DemandeLocation> getListReservationLocationConfirmeeByIdClient (int id){
		return locationServices.getListReservationLocationConfirmeeByIdClient (id);
	}
}

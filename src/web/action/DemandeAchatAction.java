package web.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.DemandeAchat;

public class DemandeAchatAction {
	private DemandeAchat demandeAchat;
	private LocationServicesInter locationServices;

	public DemandeAchatAction() {
		super();
		locationServices = new LocationServicesImpl();
	}

	public DemandeAchatAction(DemandeAchat demandeAchat, LocationServicesInter locationServices) {
		super();
		this.demandeAchat = demandeAchat;
		this.locationServices = locationServices;
	}

	public DemandeAchat getDemandeAchat() {
		return demandeAchat;
	}

	public void setDemandeAchat(DemandeAchat demandeAchat) {
		this.demandeAchat = demandeAchat;
	}

	public LocationServicesInter getLocationServices() {
		return locationServices;
	}

	public void setLocationServices(LocationServicesInter locationServices) {
		this.locationServices = locationServices;
	}

	public void ajouterDeamandeAchat(HttpServletRequest request, HttpSession session) {
		demandeAchat = new DemandeAchat((int) session.getAttribute("id"),
				Integer.parseInt(request.getParameter("id_vendeur")),
				Integer.parseInt(request.getParameter("id_offre")), java.time.LocalDate.now() + " ", "En attente");
		locationServices.ajouterDeamandeAchat(demandeAchat);
	}

	public ArrayList<DemandeAchat> getListDemandeAchatByIdClient(int id) {
		return locationServices.getListDemandeAchatByIdClient(id);
	}

	public ArrayList<DemandeAchat> getListDemandeAchatByIdVendeur(int id) {
		return locationServices.getListDemandeAchatByIdVendeur(id);
	}

	public ArrayList<DemandeAchat> getAllDemandeAchat() {
		return locationServices.getAllDemandeAchat();
	}

	public void deleteDemandeAchat(int id) {
		locationServices.deleteDemandeAchat(id);
	}

	public ArrayList<DemandeAchat> getListReservationAchatByIdClient(int id) {
		return locationServices.getListReservationAchatByIdClient(id);
	}

	public ArrayList<DemandeAchat> getListReservationAchatByIdVendeur(int id) {
		return locationServices.getListReservationAchatByIdVendeur(id);
	}

	public DemandeAchat getDemandeAchatById(int id) {
		return locationServices.getDemandeAchatById(id);
	}

	public void accepteDemandeAchat(int id) {
		locationServices.accepteDemandeAchat(id);

	}

	public void refuseDemandeAchat(int id) {
		locationServices.refuseDemandeAchat(id);

	}
	
	public int getNbreDmdAchat() {
		return locationServices.getNbreDmdAchat();
	}
	
	public int getAllDmd() {
		return locationServices.getAllDmd();
	}
	
	public void confirmerVente(int id){
		locationServices.confirmerVente(id);
	}

	public ArrayList<DemandeAchat> getListDemandeAchatConfirmeByIdVendeur(int id){
		return locationServices.getListDemandeAchatConfirmeByIdVendeur(id); 
	}
}

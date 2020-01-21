package web.action;

import javax.servlet.http.HttpServletRequest;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import dao.LocationRepositoryImpl;
import models.Client;
import models.Vendeur;

public class ClientAction {

	private Client client;
	private LocationServicesInter locationServices;

	public ClientAction() {
		super();
		locationServices = (LocationServicesInter) new LocationServicesImpl();
	}

	public ClientAction(Client client, LocationServicesInter locationServices) {
		super();
		this.client = client;
		this.locationServices = locationServices;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public LocationServicesInter getLocationServices() {
		return locationServices;
	}

	public void setLocationServices(LocationServicesInter locationServices) {
		this.locationServices = locationServices;
	}

	public boolean inscriptionClient(HttpServletRequest request) {     
		return locationServices.inscriptionClient(new Client(request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("date_naissance"), request.getParameter("cin"), request.getParameter("sexe"), request.getParameter("email"),  request.getParameter("password"), request.getParameter("pays"), request.getParameter("pays"), request.getParameter("telephone")));
	}
}

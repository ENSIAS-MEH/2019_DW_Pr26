package web.action;

import business.LocationServicesInter;
import models.Client;

public class ClienAction {
	
	private Client client;
	private LocationServicesInter locationServices;
	
	public ClienAction() {
		super();
	}

	public ClienAction(Client client, LocationServicesInter locationServices) {
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
	
	
	
	
	
}

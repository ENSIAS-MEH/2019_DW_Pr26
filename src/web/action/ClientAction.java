package web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.xpath.internal.functions.Function;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.Client;

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
		return locationServices.inscriptionClient(new Client(request.getParameter("nom"),
				request.getParameter("prenom"), request.getParameter("date_naissance"), request.getParameter("cin"),
				request.getParameter("sexe"), request.getParameter("email"), request.getParameter("password"),
				request.getParameter("pays"), request.getParameter("pays"), request.getParameter("telephone")));
	}
	
	public boolean connexionClient(HttpServletRequest request, HttpSession session){
		String email =  request.getParameter("username"); 
		String password =  request.getParameter("password"); 
		Client client = locationServices.getClientByEmail(email);
		
		if(client == null) {
			System.out.println("hello");
			return false ;
		}
		else {
			if(email.equals(client.getEmail()) && password.equals(client.getMot_de_passe())){
				session = request.getSession();
				session.setAttribute("account_type", "client");
				session.setAttribute("id",client.getId() );
				session.setAttribute("nom",client.getNom());
				session.setAttribute("prenom",client.getPrenom());
				session.setAttribute("email",client.getEmail());
				return true ; 
			}
			else return false ;
		}
	}
}

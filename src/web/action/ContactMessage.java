package web.action;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.Contact;

public class ContactMessage {
	private Contact contact;
	private LocationServicesInter locationServices;

	public ContactMessage() {
		super();
		locationServices = (LocationServicesInter) new LocationServicesImpl();
	}

	public ContactMessage(Contact contact) {
		super();
		this.contact = contact;
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public void ajouteContactMessage(HttpServletRequest request, HttpSession session) {
		String type_emetteur = "Other";
		if (session != null && session.getAttribute("account_type") != null)
			if (session.getAttribute("account_type").equals("client"))
				type_emetteur = "Client";
		if (session.getAttribute("account_type") != null) {
			if (!((String) session.getAttribute("account_type")).isEmpty()) {
				if (session.getAttribute("account_type").equals("client"))
					type_emetteur = "client";
				else if (session.getAttribute("account_type").equals("vendeur"))
					type_emetteur = "vendeur";
			}
		}
		locationServices.ajouteContactMessage(new Contact(request.getParameter("nom"), request.getParameter("email"),
				request.getParameter("sujet"), request.getParameter("message"), type_emetteur));
	}

	public ArrayList<Contact> ListContact() {
		return locationServices.getListContact();
	}

	public Contact getContactById(int id) {
		return locationServices.getContactById(id);
	}

	public void SupprimerContact(int id) {
		locationServices.SupprimerContact(id);

	}
}

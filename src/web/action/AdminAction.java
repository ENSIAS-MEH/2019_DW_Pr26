package web.action;


import java.io.IOException;

import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.Client;
import models.Offre;
import models.Vendeur;

public class AdminAction {

	private LocationServicesInter locationServices;
	private HttpSession session;

	public AdminAction() {
		
		locationServices = (LocationServicesInter) new LocationServicesImpl();
		session= null;
	}
	

	public boolean ConnexionAdmin(HttpServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email.equals("admin@gmail.com") && password.equals("admin123")) {
			session = request.getSession();
			session.setAttribute("account_type", "admin");
			session.setAttribute("nom","Admin");
			session.setAttribute("prenom","Admin");
				return true;
			} 
		 return false;
		}
	


}


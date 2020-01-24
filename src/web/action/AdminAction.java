package web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import business.LocationServicesImpl;
import business.LocationServicesInter;

public class AdminAction {

	private LocationServicesInter locationServices;

	public AdminAction() {
		locationServices = (LocationServicesInter) new LocationServicesImpl();
	}

	public boolean ConnexionAdmin(HttpServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email.equals("admin@gmail.com") && password.equals("admin123")) {
			session = request.getSession();
			session.setAttribute("account_type", "admin");
			session.setAttribute("nom", "Admin");
			session.setAttribute("prenom", "Admin");
			return true;
		}
		return false;
	}

}

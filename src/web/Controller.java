package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.action.VendeurAction;

@WebServlet(name = "Controller", urlPatterns = { "/Accueil.ma", "/Controller.ma", "/DevenezHote.ma",
		"/InscriptionVendeur.ma","/ConnexionVendeur.ma","/FormConnexionVendeur.ma","/Deconnexion.ma" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VendeurAction vendeurAction;
	private HttpSession session;
	public Controller() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		vendeurAction = new VendeurAction();
		session = null;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String views = "Accueil";
		String action = getActionKey(request);
		if (action.equals("Accueil"))
			views = "Accueil";
		else if (action.equals("DevenezHote")) {
			views = "DevenezHote";
		}else if (action.equals("FormConnexionVendeur")) {
			views = "ConnectionVendeur";
		}else if (action.equals("Deconnexion")) {
			HttpSession session = request.getSession();
			System.out.println(session.getAttribute("account_type"));
			session.invalidate();
			session=null;
			views = "Accueil";
			
		} else
			views = "/404";

		request.getRequestDispatcher(views + ".jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String views = "Accueil";
		String action = getActionKey(request);
		if (action.equals("InscriptionVendeur")) {
			if(vendeurAction.inscriptionVendeur(request)==true){
				request.setAttribute("reponseCreation", "Votre compte a bien �t� cr�er");
				request.setAttribute("resultBool", true);
			}else {
				request.setAttribute("reponseCreation", "L'adresse email que vous avez utilis� existe d�j�");
				request.setAttribute("resultBool", false);
			}
			views = "ResultatCreationVendeur"; 
		}else if (action.equals("ConnexionVendeur")) {
			if(vendeurAction.ConnexionVendeur(request)){
				views = "AcceuilAfterConnection"; 
			}else {
				request.setAttribute("reponseConnexion", "L'adresse email ou le mot de passe est incorrecte");
				views = "ConnexionVendeur"; 
			}
			
		} else
			views = "/404";

		request.getRequestDispatcher(views + ".jsp").forward(request, response);
	}

	// recuperer le type de la demande de l'utilisateur
	private String getActionKey(HttpServletRequest request) {
		String uri = request.getRequestURI();
		if (uri.contains(".ma"))
			return uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".ma"));
		else
			return uri.substring(uri.lastIndexOf("/") + 1, uri.length());
	}
}

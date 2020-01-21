package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.action.VendeurAction;

/**
 * Servlet implementation class Controller
 */

@WebServlet(name = "Controller", urlPatterns = { "/Accueil.ma", "/Controller.ma", "/DevenezHote.ma","/InscriptionVendeur.ma" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VendeurAction vendeurAction ;
	
	public Controller() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		vendeurAction =  new VendeurAction(); 
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String views = "Accueil";
		String action = getActionKey(request);
		if (action.equals("Accueil"))
			views = "Accueil";
		else if(action.equals("DevenezHote")){
			views = "DevenezHote"; 
		}else
			views = "/404";

		request.getRequestDispatcher(views + ".jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String views = "Accueil";
		String action = getActionKey(request);
		if (action.equals("InscriptionVendeur")){
			 System.out.println("hello2");
			vendeurAction.inscriptionVendeur(request);
		}else
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

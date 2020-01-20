package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */

@WebServlet( name="Controller", urlPatterns = {"/", "/Controller.ma"} )
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public Controller() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String views = "Accueil"; 
		String action = getActionKey(request); 
		System.out.println(action);
		request.getRequestDispatcher(views+".jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	// recuperer le type de la demande de l'utilisateur
	private String getActionKey(HttpServletRequest request) {
		String uri = request.getRequestURI();
		int i = uri.lastIndexOf("/");
		if(uri.contains(".ma")){
			int j = uri.lastIndexOf(".ma");
		return uri.substring(i + 1, j);
		}
		else return uri.substring(i + 1, uri.length()); 
	}

}

package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.action.ClientAction;
import web.action.OffreAction;
import web.action.VendeurAction;
import web.action.AdminAction;

@WebServlet(name = "Controller", urlPatterns = { "/Accueil.ma", "/Controller.ma", "/DevenezHote.ma",
		"/InscriptionVendeur.ma", "/ConnexionVendeur.ma", "/FormConnexionVendeur.ma", "/InscriptionClient.ma",
		"/contact.ma", "/Deconnexion.ma", "/FormConnexionClient.ma", "/ConnexionClient.ma" ,"/ProfilVendeur.ma","/AcceuilVendeur.ma","/FormAjouterOffre.ma","/AjouterOffre.ma","/ListOffre.ma","/SupprimerOffre.ma","/ModifierOffre.ma","/AccueilAdmin.ma","/ConnexionAdmin.ma"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VendeurAction vendeurAction;
	private HttpSession session;
	private ClientAction clientAction;
	private AdminAction adminAction;
	private OffreAction offreAction;

	public Controller() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		vendeurAction = new VendeurAction();
		clientAction = new ClientAction();
		offreAction = new OffreAction();
		session = null;
		adminAction = new AdminAction();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String views = "Accueil";
		String action = getActionKey(request);
		session = request.getSession();
		if (action.equals("Accueil"))
			views = "Accueil";
		//vendeur
		else if (action.equals("DevenezHote")) {
			views = "DevenezHote";
		} else if (action.equals("FormConnexionVendeur")) {
			views = "ConnexionVendeur";
		}else if (action.equals("ProfilVendeur")) {
		    if(session.getAttribute("account_type").equals("vendeur")){
		    	request.setAttribute("vendeur", vendeurAction.getVendeurById((int)session.getAttribute("id")));
		    	request.setAttribute("type", "profil");
		    	views = "AcceuilAfterConnexion";
		    }
			
		}else if (action.equals("AcceuilVendeur")) {
		    if(session.getAttribute("account_type").equals("vendeur")){
		    	request.setAttribute("type", "acceuil");
		    	views = "AcceuilAfterConnexion";
		    }
		    else views = "/404";
			
		}
		//client
		else if (action.equals("InscriptionClient")) {
			views = "DevenezClient";
		} else if (action.equals("contact")) {
			views = "Contact";
		} 
		else if (action.equals("FormConnexionClient")) {
			views = "ConnexionClient";
		} else if (action.equals("Deconnexion")) {
			session.invalidate();
			session = null;
			views = "Accueil";
		}
		//Administrateur
		else if (action.equals("ConnexionAdmin")) {
			views = "ConnexionAdmin";
		}
		//traitement offre
		else if (action.equals("FormAjouterOffre")) {
			 if(session.getAttribute("account_type").equals("vendeur")){
			    	request.setAttribute("type", "ajoutOffre");
			    	views = "AcceuilAfterConnexion";
			    }
		}else if (action.equals("ListOffre")) {
			 if(session.getAttribute("account_type").equals("vendeur")){
			    	request.setAttribute("type", "listOffre");
			    	int id_hote = (int) session.getAttribute("id");
			    	request.setAttribute("offres", offreAction.ListOffre(id_hote));
			    	
			    	views = "AcceuilAfterConnexion";
			    	
			    }
			 else views =  "/404";
		}else if (action.equals("DetailOffre")) {
			    	request.setAttribute("type", "detailOffre");
			    	int id = (int) request.getAttribute("id");
			    	request.setAttribute("offres", offreAction.DetailOffre(id));
			    	views = "AcceuilAfterConnexion";	 
		}else if (action.equals("ModifierOffre")) {
	    	request.setAttribute("type", "modifierOffre");
	    	int id = Integer.parseInt(request.getParameter("id"));
	    	request.setAttribute("offre", offreAction.getOffre(id));
	    	views = "AcceuilAfterConnexion";	 
        }else if (action.equals("SupprimerOffre")) {	
	    	int id = Integer.parseInt(request.getParameter("id"));
	    	offreAction.SupprimerOffre(id);
	    	request.setAttribute("alert", "votre offre a �t� bien supprimer");
	    	request.setAttribute("type", "listOffre");
	    	int id_hote = (int) session.getAttribute("id");
	    	request.setAttribute("offres", offreAction.ListOffre(id_hote));
	    	views = "AcceuilAfterConnexion";	 
        }

		
		else
			views = "/404";

		request.getRequestDispatcher(views + ".jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String views = "Accueil";
		String action = getActionKey(request);
		session = request.getSession();
		if (action.equals("InscriptionVendeur")) {
			if (vendeurAction.inscriptionVendeur(request) == true) {
				request.setAttribute("reponseCreation", "Votre compte a bien �t� cr�er");
				request.setAttribute("resultBool", true);
			} else {
				request.setAttribute("reponseCreation", "L'adresse email que vous avez utilis� existe d�j�");
				request.setAttribute("resultBool", false);
			}
			views = "ResultatCreationVendeur";
		} else if (action.equals("ConnexionVendeur")) {
			if (vendeurAction.ConnexionVendeur(request,session)) {
				views = "AcceuilAfterConnexion";
			} else {
				request.setAttribute("messageError", "Mot de passe ou Email est Incorrect");
				views = "ConnexionVendeur";
			}
		} else if (action.equals("InscriptionClient")) {
			if (clientAction.inscriptionClient(request) == true) {
				request.setAttribute("reponseCreation", "Votre compte a bien �t� cr�er");
				request.setAttribute("resultBool", true);
			} else {
				request.setAttribute("reponseCreation", "L'adresse email que vous avez utilis� existe d�j�");
				request.setAttribute("resultBool", false);
			}
			views = "ResultatCreationClient";
		} else if (action.equals("ConnexionClient")) {
			if (clientAction.connexionClient(request, session)) {
				views = "AcceuilClientAfterConnexion";
			} else {
				request.setAttribute("messageError", "Mot de passe ou Username est Incorrect");
				views = "ConnexionClient";
			}
		}
		
		//traitement offre
		else if (action.equals("AjouterOffre")) {
			int id_hote = (int) session.getAttribute("id");
			System.out.println("ddd : "+request.getParameter("categorie"));
			if(vendeurAction.AjouterOffre(request,id_hote)) request.setAttribute("alert", "F�licitations ! Votre nouveau offre a �t� cr�� avec succ�s !");
			else request.setAttribute("alert", "offre n'a pas �t� ajout�e");
			request.setAttribute("type", "acceuil");
	    	views = "AcceuilAfterConnexion";
		}else if (action.equals("ModifierOffre")) {
			int id_hote = (int) session.getAttribute("id");
			if(offreAction.ModifierOffre(request,id_hote)) request.setAttribute("alert", "Votre offre a �t� modifi�e avec succ�s !");
			else request.setAttribute("alert", "offre n'a pas �t� modifi�e");
			request.setAttribute("type", "listOffre");
	    	request.setAttribute("offres", offreAction.ListOffre(id_hote));
	    	views = "AcceuilAfterConnexion";
		}
		
		//Administrateur
				else if (action.equals("ConnexionAdmin")) {
					if (adminAction.ConnexionAdmin(request,session)) {
						views = "AcceuilAdmin";
					} else {
						request.setAttribute("messageError", "Mot de passe ou Email Incorrect");
						views = "ConnexionAdmin";
					}
				}
		else
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

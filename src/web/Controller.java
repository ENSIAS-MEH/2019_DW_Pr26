package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Client;
import models.DemandeAchat;
import models.DemandeLocation;
import models.Offre;
import web.action.ClientAction;
import web.action.ContactMessage;
import web.action.DemandeAchatAction;
import web.action.DemandeLocationAction;
import web.action.OffreAction;
import web.action.VendeurAction;
import web.action.AdminAction;

@WebServlet(name = "Controller", urlPatterns = { "/Accueil.ma", "/Controller.ma", "/DevenezHote.ma",
		"/InscriptionVendeur.ma", "/ConnexionVendeur.ma", "/FormConnexionVendeur.ma", "/InscriptionClient.ma",
		"/contact.ma", "/Deconnexion.ma", "/FormConnexionClient.ma", "/ConnexionClient.ma", "/ProfilVendeur.ma",
		"/AcceuilVendeur.ma", "/FormAjouterOffre.ma", "/AjouterOffre.ma", "/ListOffre.ma", "/SupprimerOffre.ma",
		"/ModifierOffre.ma", "/AccueilAdmin.ma", "/DetailOffre.ma", "/ConnexionAdmin.ma", "/saveContact.ma",
		"/ListVendeur.ma", "/getAllOffres.ma","/ListDemandeClient.ma",  "/ListClient.ma","/getDetailsOffre.ma","/SupprimerVendeur.ma","/SupprimerClient.ma","/DetailVendeur.ma","/ReservezOffreClient.ma","/saveDemandeReservation.ma","/SupprimerDemande.ma","/DemandeAchatClient.ma","/SupprimerDemandeAchat.ma","/DetailClient.ma","/ListReservationClient.ma","/ChercherOffreClient.ma",
		"/ListDemandeVendeur.ma","/ModifierDemandeAchat.ma"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 4)
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VendeurAction vendeurAction;
	private HttpSession session;
	private ClientAction clientAction;
	private AdminAction adminAction;
	private OffreAction offreAction;
	private ContactMessage contactMessage;
	private DemandeLocationAction demandeLocationAction; 
	private DemandeAchatAction demandeAchatAction; 

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
		contactMessage = new ContactMessage();
		demandeLocationAction =new DemandeLocationAction(); 
		demandeAchatAction = new DemandeAchatAction(); 
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String views = "Accueil";
		String action = getActionKey(request);
		session = request.getSession();
		if (action.equals("Accueil")) {
			//request.setAttribute("offre", offreAction.getOffre(1));
			views = "Accueil";
		}
		// vendeur
		else if (action.equals("DevenezHote")) {
			views = "DevenezHote";
		} else if (action.equals("FormConnexionVendeur")) {
			views = "ConnexionVendeur";
		} else if (action.equals("ProfilVendeur")) {
			if (session.getAttribute("account_type").equals("vendeur")) {
				request.setAttribute("vendeur", vendeurAction.getVendeurById((int) session.getAttribute("id")));
				request.setAttribute("type", "profil");
				views = "AcceuilAfterConnexion";
			}

		} else if (action.equals("AcceuilVendeur")) {
			if (session.getAttribute("account_type").equals("vendeur")) {
				request.setAttribute("type", "acceuil");
				views = "AcceuilAfterConnexion";
			} else
				views = "/404";

		}
		// client
		else if (action.equals("InscriptionClient")) {
			views = "DevenezClient";
		} else if (action.equals("contact")) {
			views = "Contact";
		} else if (action.equals("FormConnexionClient")) {
			views = "ConnexionClient";
		} else if (action.equals("Deconnexion")) {

			if (session.getAttribute("account_type") != null && session.getAttribute("account_type").equals("admin")) {
				session.invalidate();
				session = null;
				views = "ConnexionAdmin";
			} else {
				session.invalidate();
				session = null;
				views = "Accueil";
			}

		}
		// Administrateur
		else if (action.equals("ConnexionAdmin")) {
			views = "ConnexionAdmin";
		}
		//traitement demande vendeur
		else if (action.equals("ListDemandeVendeur")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("vendeur")) {
				int id_hote = (int) session.getAttribute("id");
				request.setAttribute("listeDemandeA", demandeAchatAction.getListDemandeAchatByIdVendeur(id_hote));
				request.setAttribute("listeDemandeL", demandeLocationAction.getListDemandeLocationByIdVendeur(id_hote));
				views = "ListDemandeVendeur";
			} else
				views = "/404";
		} else if (action.equals("ModifierDemandeAchat")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("vendeur")) {
				int id = Integer.parseInt(request.getParameter("id"));
				int id_client = Integer.parseInt(request.getParameter("id_client"));
				int id_offre = Integer.parseInt(request.getParameter("id_offre"));
				request.setAttribute("type", "achat");
				request.setAttribute("demande", demandeAchatAction.getDemandeAchatById(id));
				request.setAttribute("client", clientAction.getClientById(id_client));
				request.setAttribute("offre", offreAction.getOffre(id_offre));
				
				views = "ModifierDemandeVendeur";
			} else
				views = "/404";
		} 
		// traitement offre
		else if (action.equals("FormAjouterOffre")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("vendeur")) {
				views = "offres/AjoutOffre";
			} else
				views = "/404";
		} else if (action.equals("ListOffre")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("vendeur")) {
				int id_hote = (int) session.getAttribute("id");
				request.setAttribute("offres", offreAction.ListOffre(id_hote));
				views = "offres/ListOffre";
			} else if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("admin")) {
				request.setAttribute("offres", offreAction.getOffres());
				views = "offres/ListOffre";
			} else
				views = "/404";
		} else if (action.equals("DetailOffre")) {
			if (session.getAttribute("account_type") != null
					&& (session.getAttribute("account_type").equals("vendeur") || session.getAttribute("account_type").equals("admin"))) {
				int id = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("offre", offreAction.getOffre(id));
				views = "offres/DetailOffre";
			} else
				views = "/404";
		} else if (action.equals("ModifierOffre")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("vendeur")) {
				int id = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("offre", offreAction.getOffre(id));
				views = "offres/ModifierOffre";
			} else
				views = "/404";
		} else if (action.equals("SupprimerOffre")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("vendeur")) {
				int id = Integer.parseInt(request.getParameter("id"));
				offreAction.SupprimerOffre(id);
				request.setAttribute("alert", "votre offre a bien été supprimée");
				int id_hote = (int) session.getAttribute("id");
				request.setAttribute("offres", offreAction.ListOffre(id_hote));
				views = "offres/ListOffre";
			} else
				views = "/404";
		} else if (action.equals("ListVendeur")) {
			if (session.getAttribute("account_type") != null && session.getAttribute("account_type").equals("admin")) {
				request.setAttribute("vendeurs", vendeurAction.ListVendeur());
				views = "ListVendeur";
			} else
				views = "/404";

		} else if (action.equals("getAllOffres")) {
			request.setAttribute("listeOffres", offreAction.getOffresActifs());
			views = "AllOffresClients";
		} else if (action.equals("AccueilAdmin")) {
			if (session.getAttribute("account_type").equals("admin")) {
				request.setAttribute("type", "acceuilAdmin");
				views = "AccueilAdmin";
			} else
				views = "/404";
		} else if (action.equals("ListClient")) {
			if (session.getAttribute("account_type") != null && session.getAttribute("account_type").equals("admin")) {
				request.setAttribute("clients", clientAction.ListClient());
				views = "ListClient";
			} else
				views = "/404";
		}else if(action.equals("getDetailsOffre")){
			Offre offre = offreAction.getOffre(Integer.parseInt(request.getParameter("id"))); 
			request.setAttribute("offre",offre);
			request.setAttribute("proprietaire", vendeurAction.getVendeurById(offre.getId_hote()));
			views = "offres/DetailsOffreDisplay"; 
		} 
		else if (action.equals("SupprimerVendeur")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("admin")) {
				int id = Integer.parseInt(request.getParameter("id"));
				vendeurAction.SupprimerVendeur(id);
				request.setAttribute("alert", "le compte a bien été supprimée");
				request.setAttribute("vendeurs", vendeurAction.ListVendeur());
				views = "ListVendeur";
			} else
				views = "/404";
		} else if (action.equals("SupprimerClient")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("admin")) {
				int id = Integer.parseInt(request.getParameter("id"));
				clientAction.SupprimerClient(id);
				request.setAttribute("alert", "votre offre a bien été supprimée");
				request.setAttribute("clients", clientAction.ListClient());
				views = "ListClient";
			} else
				views = "/404";
		} else if (action.equals("DetailVendeur")) {
			if (session.getAttribute("account_type") != null
					&& session.getAttribute("account_type").equals("admin")) {
				int id = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("vendeur", vendeurAction.getVendeurById(id));
				views = "DetailVendeur";
			} else
				views = "/404";
		} else if(action.equals("ReservezOffreClient")){
			Offre offre = offreAction.getOffre(Integer.parseInt(request.getParameter("id"))); 
			request.setAttribute("offre",offre);
			views = "ReservationOffreClient"; 
			request.setAttribute("proprietaire", vendeurAction.getVendeurById(offre.getId_hote()));
		}else if(action.equals("ListDemandeClient")){
			request.setAttribute("listeDemande",demandeLocationAction.getListDemandeLocationByIdClient((int)session.getAttribute("id")));
			request.setAttribute("listeDemandeAchat",demandeAchatAction.getListDemandeAchatByIdClient((int)session.getAttribute("id")));
			views ="ListDemandeClient"; 
		} else if (action.equals("SupprimerDemande")) {
			demandeLocationAction.deleteDemande(Integer.parseInt(request.getParameter("id"))); 
			request.setAttribute("listeDemande",demandeLocationAction.getListDemandeLocationByIdClient((int)session.getAttribute("id")));
			request.setAttribute("listeDemandeAchat",demandeAchatAction.getListDemandeAchatByIdClient((int)session.getAttribute("id")));
			views ="ListDemandeClient"; 
		} else if(action.equals("DemandeAchatClient")){
			demandeAchatAction.ajouterDeamandeAchat(request, session);
			request.setAttribute("listeDemande",demandeLocationAction.getListDemandeLocationByIdClient((int)session.getAttribute("id")));
			request.setAttribute("listeDemandeAchat",demandeAchatAction.getListDemandeAchatByIdClient((int)session.getAttribute("id")));
			views = "ListDemandeClient"; 
		}else if(action.equals("SupprimerDemandeAchat")){
			demandeAchatAction.deleteDemandeAchat(Integer.parseInt(request.getParameter("id"))); 
			request.setAttribute("listeDemande",demandeLocationAction.getListDemandeLocationByIdClient((int)session.getAttribute("id")));
			request.setAttribute("listeDemandeAchat",demandeAchatAction.getListDemandeAchatByIdClient((int)session.getAttribute("id")));
			views ="ListDemandeClient"; 
		}
		 else if (action.equals("DetailClient")) {
				if (session.getAttribute("account_type") != null
						&& session.getAttribute("account_type").equals("admin")) {
					int id = Integer.parseInt(request.getParameter("id"));
					request.setAttribute("client", clientAction.getClientById(id));
					views = "DetailClient";
				} else
					views = "/404";
		} else if(action.equals("ListReservationClient")){
			request.setAttribute("listeDemande",demandeLocationAction.getListReservationLocationByIdClient((int)session.getAttribute("id")));
			request.setAttribute("listeDemandeAchat",demandeAchatAction.getListReservationAchatByIdClient((int)session.getAttribute("id")));
			views ="ListReservationClient"; 
		}else if(action.equals("ChercherOffreClient")){
			views = "ChercherOffreClient"; 
		}else
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
				request.setAttribute("reponseCreation", "Votre compte a bien été créer");
				request.setAttribute("resultBool", true);
			} else {
				request.setAttribute("reponseCreation", "L'adresse email que vous avez utilisé existe déjà");
				request.setAttribute("resultBool", false);
			}
			views = "ResultatCreationVendeur";
		} else if (action.equals("ConnexionVendeur")) {
			if (vendeurAction.ConnexionVendeur(request, session)) {
				views = "AcceuilAfterConnexion";
			} else {
				request.setAttribute("messageError", "Mot de passe ou Email est Incorrect");
				views = "ConnexionVendeur";
			}
		} else if (action.equals("InscriptionClient")) {
			if (clientAction.inscriptionClient(request) == true) {
				request.setAttribute("reponseCreation", "Votre compte a bien été créer");
				request.setAttribute("resultBool", true);
			} else {
				request.setAttribute("reponseCreation", "L'adresse email que vous avez utilisé existe déjà");
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

		// traitement offre
		else if (action.equals("AjouterOffre")) {
			int id_hote = (int) session.getAttribute("id");
			System.out.println("ddd : " + request.getParameter("categorie"));
			if (offreAction.AjouterOffre(request, id_hote))
				request.setAttribute("alert", "Félicitations ! Votre nouveau offre a été créé avec succés !");
			else
				request.setAttribute("alert", "offre n'a pas été ajoutée");
			request.setAttribute("type", "acceuil");
			views = "AcceuilAfterConnexion";
		} else if (action.equals("ModifierOffre")) {
			int id_hote = (int) session.getAttribute("id");
			if (offreAction.ModifierOffre(request, id_hote))
				request.setAttribute("alert", "Votre offre a été modifiée avec succées !");
			else
				request.setAttribute("alert", "offre n'a pas ete modifiee");
			request.setAttribute("offres", offreAction.ListOffre(id_hote));
			views = "offres/ListOffre";
		}

		// Administrateur
		else if (action.equals("ConnexionAdmin")) {
			if (adminAction.ConnexionAdmin(request, session)) {
				views = "AcceuilAdmin";
			} else {
				request.setAttribute("messageError", "Mot de passe ou Email Incorrect");
				views = "ConnexionAdmin";
			}
		}

		// Post
		else if (action.equals("saveContact")) {
			contactMessage.ajouteContactMessage(request, session);
			request.setAttribute("message", "votre message a bien été envoyé");
			views = "Contact";
		} else if(action.equals("saveDemandeReservation")){
			demandeLocationAction.ajouterDeamandeLocation(request, session);
			views = "ListDemandeClient"; 
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

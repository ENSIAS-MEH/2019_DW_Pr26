package web.action;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import business.LocationServicesImpl;
import business.LocationServicesInter;
import models.Client;
import models.Offre;
import models.Vendeur;

public class OffreAction {

	private Offre offre;
	private LocationServicesInter locationServices;
	private HttpSession session;

	public OffreAction() {
		super();
		locationServices = (LocationServicesInter) new LocationServicesImpl();
		session= null;
	}

	public OffreAction(Offre offre) {
		super();
		this.offre = offre;
	}

	public Offre getVendeur() {
		return offre;
	}

	public void setOffre(Offre offre) {
		this.offre = offre;
	}

	
	public boolean AjouterOffre(HttpServletRequest request,int id_hote) throws IllegalStateException, IOException, ServletException {
		String date = java.time.LocalDate.now() + " ";
		InputStream photo = (request.getPart("photo")).getInputStream();
		System.out.println(photo);
		return locationServices.AjouterOffre(new Offre(id_hote,date,request.getParameter("type"), request.getParameter("categorie"), (Integer.parseInt(request.getParameter("nombre_personne"))),
				request.getParameter("adresse"), request.getParameter("pays"), request.getParameter("ville"),
				request.getParameter("date_debut"), request.getParameter("date_fin"), (Float.parseFloat(request.getParameter("prix"))),
				request.getParameter("devise"), (Integer.parseInt(request.getParameter("salle_bain"))),(Integer.parseInt(request.getParameter("nb_chambre"))), request.getParameter("description"), photo));
	}

	public ArrayList<Offre> ListOffre(int id) {
		// TODO Auto-generated method stub
		return locationServices.getOffresByIdVendeur(id);
	}

	public Offre DetailOffre(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean ModifierOffre(HttpServletRequest request, int id_hote) throws IllegalStateException, IOException, ServletException {
		// TODO Auto-generated method stub
//		InputStream photo = (request.getPart("photo")).getInputStream();
		return locationServices.ModifierOffre(new Offre((Integer.parseInt(request.getParameter("id"))),id_hote,request.getParameter("type"), request.getParameter("categorie"),(Integer.parseInt(request.getParameter("nombre_personne"))),
				request.getParameter("adresse"), request.getParameter("pays"), request.getParameter("ville"),
				request.getParameter("date_debut"), request.getParameter("date_fin"), (Float.parseFloat(request.getParameter("prix"))),
				request.getParameter("devise"), (Integer.parseInt(request.getParameter("salle_bain"))),(Integer.parseInt(request.getParameter("nb_chambre"))), request.getParameter("description"),null));

	}
	public void SupprimerOffre(int id) {
	    locationServices.SupprimerOffre(id);
	}

	public Offre getOffre(int id) {
		return locationServices.getOffresById(id);
	}
	
	public ArrayList<Offre> getOffresActifs(){
		return locationServices.getOffresActifs();
	}

	public ArrayList<Offre> getOffres() {
		return locationServices.getOffres();
	}
	
}

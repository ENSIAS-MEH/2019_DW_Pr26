package business;

import java.util.ArrayList;

import models.Client;
import models.Contact;
import models.DemandeLocation;
import models.Offre;
import models.Vendeur;

public interface LocationServicesInter {

	// Vendeur
	public boolean inscriptionVendeur(Vendeur vendeur);

	public Vendeur getVendeurByEmail(String email);

	public Vendeur getVendeurById(int id);
	
	public ArrayList<Vendeur> getListVendeur();
	
	// Client
	public boolean inscriptionClient(Client client);

	public Client getClientByEmail(String email);
	
	public ArrayList<Client> getListClient();


	// offre
	public boolean AjouterOffre(Offre offre);

	public ArrayList<Offre> getOffresByIdVendeur(int id);

	public void SupprimerOffre(int id);

	public Offre getOffresById(int id);
	
	public ArrayList<Offre> getOffres();
	
	public boolean ModifierOffre(Offre offre);
	
	public ArrayList<Offre> getOffresActifs(); 

	// Contact
	public void ajouteContactMessage(Contact contact);

	public void SupprimerVendeur(int id);

	public void SupprimerClient(int id);
	
	//dmande location 
	public void ajouterDeamandeLocation(DemandeLocation demandeLocation); 
	public ArrayList<DemandeLocation> getListDemandeLocationByIdClient(int id); 
	public ArrayList<DemandeLocation> getListDemandeLocationByIdVendeur(int id);
	public ArrayList<DemandeLocation> getAllDemandeLocation();

}

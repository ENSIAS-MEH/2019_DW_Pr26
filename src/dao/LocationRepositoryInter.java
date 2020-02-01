package dao;

import java.util.ArrayList;

import models.Client;
import models.Contact;
import models.DemandeAchat;
import models.DemandeLocation;
import models.Offre;
import models.Vendeur;

public interface LocationRepositoryInter {

	// Vendeur
	public void inscriptionVendeur(Vendeur vendeur);

	public ArrayList<Vendeur> getListVendeur();

	public Vendeur getVendeurbyEmail(String email);
	
	public Vendeur getVendeurbyId(int id);


	// Client
	public void inscriptionClient(Client client);

	public ArrayList<Client> getListClient();

	public Client getClientByEmail(String email);
	
	public Client getClientbyId(int id); 


	//offre
	public void AjouterOffre(Offre offre);
  
	public ArrayList<Offre> getOffresByIdVendeur(int id);

	public void SupprimerOffre(int id);

	public Offre getOffresById(int id);
	
	public ArrayList<Offre> getOffres();
	
	public boolean ModifierOffre(Offre offre);
	public ArrayList<Offre> getOffresActifs(); 
	
	//Contact 
	public void ajouteContactMessage(Contact contact);

	public void supprimerVendeur(int id);

	public void supprimerClient(int id);
	
	//DemandeLocation 
	
	public void ajouterDeamandeLocation(DemandeLocation demandeLocation); 
	public ArrayList<DemandeLocation> getListDemandeLocationByIdClient(int id); 
	public ArrayList<DemandeLocation> getListDemandeLocationByIdVendeur(int id);
	public ArrayList<DemandeLocation> getAllDemandeLocation();
	
	public void deleteDemande(int id); 
	
	public void ajouterDeamandeAchat(DemandeAchat demandeAchat);
	public ArrayList<DemandeAchat> getListDemandeAchatByIdClient(int id); 
	public ArrayList<DemandeAchat> getListDemandeAchatByIdVendeur(int id);
	public ArrayList<DemandeAchat> getAllDemandeAchat();
	public void deleteDemandeAchat(int id);
	
	public ArrayList<DemandeAchat> getListReservationAchatByIdClient(int id); 
	public ArrayList<DemandeAchat> getListReservationAchatByIdVendeur(int id ); 
	public ArrayList<DemandeLocation> getListReservationLocationByIdClient(int id);
public ArrayList<DemandeLocation> getListReservationLocationByIdVendeur(int id );



	
	
}

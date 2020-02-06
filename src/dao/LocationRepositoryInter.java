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

	// offre
	public void AjouterOffre(Offre offre);

	public ArrayList<Offre> getOffresByIdVendeur(int id);

	public void SupprimerOffre(int id);

	public Offre getOffresById(int id);

	public ArrayList<Offre> getOffres();

	public boolean ModifierOffre(Offre offre);

	public ArrayList<Offre> getOffresActifs();

	// Contact
	public void ajouteContactMessage(Contact contact);

	public void supprimerVendeur(int id);

	public void supprimerClient(int id);

	// DemandeLocation

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

	public ArrayList<DemandeAchat> getListReservationAchatByIdVendeur(int id);

	public ArrayList<DemandeLocation> getListReservationLocationByIdClient(int id);

	public ArrayList<DemandeLocation> getListReservationLocationByIdVendeur(int id);

	public DemandeAchat getDemandeAchatById(int id);

	public ArrayList<Offre> chercherOffreByOption(boolean ville, boolean pays, boolean nb_chambre,
			String locationOrVente, String motCles);

	public DemandeLocation getDemandeLocationById(int id);

	public void accepteDemandeAchat(int id);

	public void accepteDemandeLocation(int id);

	public void refuseDemandeAchat(int id);

	public void refuseDemandeLocation(int id);

	public ArrayList<Offre> chercherOffreByDate(String date_debut_forms, String date_fin_forms);
	
	public ArrayList<Offre> planifierVoyage(String date_debut_forms, String date_fin_forms, String ville);


	public ArrayList<Offre> chercherOffreByOption(boolean ville, boolean pays, boolean nb_chambre,
			String locationOrVente, String motCles, int id);

	public ArrayList<Offre> chercherOffreByDate(String date_debut_forms, String date_fin_forms, int id); 

	public ArrayList<Contact> getListContact();

	public Contact getContactbyId(int id);

	public void supprimerContact(int id);

	public int getNbreClient();

	public int getNbreVendeur();

	public int getNbreOffre();

	public int getNbreDmdLocation();

	public int getNbreDmdAchat();

	public int getAllDmd(); 
	
	public void confirmerLocation(int id); 
	public void confirmerVente(int id); 
	
	
	public ArrayList<Offre> getOffresConfirmerByIdVendeur(int id); 
	public ArrayList<DemandeLocation> getListDemandeLocationConfirmeByIdVendeur(int id); 
	public ArrayList<DemandeAchat> getListDemandeAchatConfirmeByIdVendeur(int id); 


}

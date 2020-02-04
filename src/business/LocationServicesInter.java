package business;

import java.util.ArrayList;

import models.Client;
import models.Contact;
import models.DemandeAchat;
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

	public Client getClientById(int id);

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

	// dmande location
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


	public ArrayList<Offre> chercherOffreByOption(boolean ville, boolean pays, boolean nb_chambre, String parameter,
			String parameter2, int id);

	public ArrayList<Offre> chercherOffreByDate(String parameter, String parameter2, int id);

	public ArrayList<Contact> getListContact();

	public Contact getContactById(int id);

	public void SupprimerContact(int id);

	public int getNbreClient();


}

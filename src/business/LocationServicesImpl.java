package business;

import java.util.ArrayList;

import dao.LocationRepositoryImpl;
import dao.LocationRepositoryInter;
import models.Client;
import models.Contact;
import models.DemandeAchat;
import models.DemandeLocation;
import models.Offre;
import models.Vendeur;

public class LocationServicesImpl implements LocationServicesInter {

	private LocationRepositoryInter locationepositoryImpl;

	public LocationServicesImpl() {
		super();
		locationepositoryImpl = new LocationRepositoryImpl();
	}

	public boolean inscriptionVendeur(Vendeur vendeur) {
		ArrayList<Vendeur> listeVendeur = new ArrayList<>();
		listeVendeur = locationepositoryImpl.getListVendeur();
		for (Vendeur vendeurTable : listeVendeur) {
			if (vendeurTable.getEmail().equals(vendeur.getEmail())) {
				return false;
			}
		}
		locationepositoryImpl.inscriptionVendeur(vendeur);
		return true;
	}

	public boolean inscriptionClient(Client client) {
		ArrayList<Client> listeClient = new ArrayList<>();
		listeClient = locationepositoryImpl.getListClient();
		for (Client clientTable : listeClient) {
			if (clientTable.getEmail().equals(client.getEmail())) {
				return false;
			}
		}
		locationepositoryImpl.inscriptionClient(client);
		return true;
	}

	public Vendeur getVendeurByEmail(String email) {
		return locationepositoryImpl.getVendeurbyEmail(email);
	}

	public Client getClientByEmail(String email) {
		return locationepositoryImpl.getClientByEmail(email);
	}

	@Override
	public Vendeur getVendeurById(int id) {
		return locationepositoryImpl.getVendeurbyId(id);
	}

	@Override
	public boolean AjouterOffre(Offre offre) {
		locationepositoryImpl.AjouterOffre(offre);
		return true;
	}

	@Override
	public ArrayList<Offre> getOffresByIdVendeur(int id) {
		return locationepositoryImpl.getOffresByIdVendeur(id);
	}

	@Override
	public void SupprimerOffre(int id) {
		locationepositoryImpl.SupprimerOffre(id);

	}

	@Override
	public Offre getOffresById(int id) {
		return locationepositoryImpl.getOffresById(id);
	}

	@Override
	public ArrayList<Offre> getOffresActifs() {
		return locationepositoryImpl.getOffresActifs();
	}

	@Override
	public boolean ModifierOffre(Offre offre) {
		// TODO Auto-generated method stub
		return locationepositoryImpl.ModifierOffre(offre);
	}

	@Override
	public void ajouteContactMessage(Contact contact) {
		locationepositoryImpl.ajouteContactMessage(contact);
	}

	@Override
	public ArrayList<Offre> getOffres() {

		return locationepositoryImpl.getOffres();
	}

	@Override
	public ArrayList<Vendeur> getListVendeur() {
		return locationepositoryImpl.getListVendeur();
	}

	@Override
	public ArrayList<Client> getListClient() {
		return locationepositoryImpl.getListClient();
	}

	@Override
	public void SupprimerVendeur(int id) {
		locationepositoryImpl.supprimerVendeur(id);
	}

	@Override
	public void SupprimerClient(int id) {
		locationepositoryImpl.supprimerClient(id);
	}

	@Override
	public void ajouterDeamandeLocation(DemandeLocation demandeLocation) {
		locationepositoryImpl.ajouterDeamandeLocation(demandeLocation);
	}

	@Override
	public ArrayList<DemandeLocation> getListDemandeLocationByIdClient(int id) {
		return locationepositoryImpl.getListDemandeLocationByIdClient(id);
	}

	@Override
	public ArrayList<DemandeLocation> getListDemandeLocationByIdVendeur(int id) {
		return locationepositoryImpl.getListDemandeLocationByIdVendeur(id);
	}

	@Override
	public ArrayList<DemandeLocation> getAllDemandeLocation() {
		return locationepositoryImpl.getAllDemandeLocation();
	}

	@Override
	public void deleteDemande(int id) {
		locationepositoryImpl.deleteDemande(id);
	}

	@Override
	public void ajouterDeamandeAchat(DemandeAchat demandeAchat) {
		locationepositoryImpl.ajouterDeamandeAchat(demandeAchat);
	}

	@Override
	public ArrayList<DemandeAchat> getListDemandeAchatByIdClient(int id) {
		return locationepositoryImpl.getListDemandeAchatByIdClient(id);
	}

	@Override
	public ArrayList<DemandeAchat> getListDemandeAchatByIdVendeur(int id) {
		return locationepositoryImpl.getListDemandeAchatByIdVendeur(id);
	}

	@Override
	public ArrayList<DemandeAchat> getAllDemandeAchat() {
		return locationepositoryImpl.getAllDemandeAchat();
	}

	@Override
	public void deleteDemandeAchat(int id) {
		locationepositoryImpl.deleteDemandeAchat(id);
	}

	@Override
	public Client getClientById(int id) {
		return locationepositoryImpl.getClientbyId(id);
	}

	@Override
	public ArrayList<DemandeAchat> getListReservationAchatByIdClient(int id) {
		return locationepositoryImpl.getListReservationAchatByIdClient(id);
	}

	@Override
	public ArrayList<DemandeAchat> getListReservationAchatByIdVendeur(int id) {
		return locationepositoryImpl.getListReservationAchatByIdVendeur(id);
	}

	@Override
	public ArrayList<DemandeLocation> getListReservationLocationByIdClient(int id) {
		return locationepositoryImpl.getListReservationLocationByIdClient(id);
	}

	@Override
	public ArrayList<DemandeLocation> getListReservationLocationByIdVendeur(int id) {
		return locationepositoryImpl.getListReservationLocationByIdVendeur(id);
	}

	@Override

	public ArrayList<Offre> chercherOffreByOption(boolean ville, boolean pays, boolean nb_chambre,
			String locationOrVente, String motCles) {
		return locationepositoryImpl.chercherOffreByOption(ville, pays, nb_chambre, locationOrVente, motCles);
	}

	@Override
	public ArrayList<Offre> chercherOffreByDate(String date_debut_forms, String date_fin_forms) {
		return locationepositoryImpl.chercherOffreByDate(date_debut_forms, date_fin_forms);
	}

	@Override
	public DemandeAchat getDemandeAchatById(int id) {
		return locationepositoryImpl.getDemandeAchatById(id);
	}

}

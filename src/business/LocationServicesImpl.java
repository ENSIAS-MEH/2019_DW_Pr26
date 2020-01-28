package business;

import java.util.ArrayList;

import dao.LocationRepositoryImpl;
import dao.LocationRepositoryInter;
import models.Client;
import models.Contact;
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
	public ArrayList<Offre> getOffresActifs(){
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
	public void ajouterDeamandeLocation(DemandeLocation demandeLocation){
		locationepositoryImpl.ajouterDeamandeLocation(demandeLocation);
	}
	

}

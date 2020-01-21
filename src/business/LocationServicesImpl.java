package business;

import java.util.ArrayList;

import dao.LocationRepositoryImpl;
import dao.LocationRepositoryInter;
import dao.MangementDataBase;
import models.Client;
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

	public boolean connexionVendeur(String email,String password){
		Vendeur vendeur = locationepositoryImpl.getVendeurbyEmail(email)  ;
		if(vendeur.getMot_de_passe().equals(password))return true;
		else return false;
		
	}
	
	public boolean inscriptionClient(Client client){
		ArrayList<Client> listeClient = new ArrayList<>();
	listeClient = locationepositoryImpl.getListClient();
		for (Client clientTable : listeClient) {
			if (clientTable.getEmail().equals(client.getEmail())) {
				return false;
			}
		}
		locationepositoryImpl.inscriptionClient(client);
		return true;
	
		/*
		Client clientExiste = locationepositoryImpl.getClientByEmail(client.getEmail());
		if(clientExiste != null){
			return false ;
		}
		locationepositoryImpl.inscriptionClient(client);
		return true;
		*/
	}

}

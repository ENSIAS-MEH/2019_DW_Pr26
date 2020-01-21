package business;

import java.util.ArrayList;

import dao.LocationRepositoryImpl;
import dao.LocationRepositoryInter;
import dao.MangementDataBase;
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
}

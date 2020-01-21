package business;

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

	public void InscriptionVendeur(Vendeur vendeur) {
		locationepositoryImpl.InscriptionVendeur(vendeur);
	}
}

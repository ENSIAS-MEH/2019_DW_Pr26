package business;

import dao.LocationepositoryImpl;
import dao.LocationepositoryInter;
import dao.MangementDataBase;
import models.Vendeur;

public class LocationServicesImpl implements LocationServicesInter{
	
	private LocationepositoryInter locationepositoryImpl; 
	
	public LocationServicesImpl() {
		super();
		locationepositoryImpl = new LocationepositoryImpl(); 
	}

	public void InscriptionVendeur(Vendeur vendeur){
		locationepositoryImpl.InscriptionVendeur(vendeur); 
	}
}

package business;

import models.Client;
import models.Vendeur;

public interface LocationServicesInter {

	// Vendeur
	public boolean inscriptionVendeur(Vendeur vendeur);

	public boolean connexionVendeur(String email,String password);

	
	//Client 
	public boolean inscriptionClient(Client client);
	
}

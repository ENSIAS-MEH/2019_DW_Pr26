package business;

import models.Vendeur;

public interface LocationServicesInter {

	// Vendeur
	public boolean inscriptionVendeur(Vendeur vendeur);

	public boolean connexionVendeur(String email,String password);

	

	
}

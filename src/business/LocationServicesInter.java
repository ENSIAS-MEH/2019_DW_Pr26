package business;

import models.Client;
import models.Vendeur;

public interface LocationServicesInter {

	// Vendeur
	public boolean inscriptionVendeur(Vendeur vendeur);

	public Vendeur getVendeurByEmail(String email);

	
	//Client 
	public boolean inscriptionClient(Client client);

	public Client getClientByEmail(String email);

	public Vendeur getVendeurById(int id);
	
}

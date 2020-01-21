package dao;

import java.util.ArrayList;

import models.Client;
import models.Vendeur;

public interface LocationRepositoryInter {

	// Vendeur
	public void inscriptionVendeur(Vendeur vendeur);
	public ArrayList<Vendeur> getListVendeur(); 
	public Vendeur getVendeurbyEmail(String email);
	
	
	
	//Client 
	public void inscriptionClient(Client client);
	public ArrayList<Client> getListClient();
	public Client getClientByEmail(String email);
	
}

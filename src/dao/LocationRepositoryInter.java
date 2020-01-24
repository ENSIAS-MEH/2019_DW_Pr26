package dao;

import java.util.ArrayList;

import models.Client;
import models.Contact;
import models.Offre;
import models.Vendeur;

public interface LocationRepositoryInter {

	// Vendeur
	public void inscriptionVendeur(Vendeur vendeur);

	public ArrayList<Vendeur> getListVendeur();

	public Vendeur getVendeurbyEmail(String email);
	
	public Vendeur getVendeurbyId(int id);


	// Client
	public void inscriptionClient(Client client);

	public ArrayList<Client> getListClient();

	public Client getClientByEmail(String email);

	//offre
	public void AjouterOffre(Offre offre);
  
	public ArrayList<Offre> getOffresByIdVendeur(int id);

	public void SupprimerOffre(int id);

	public Offre getOffresById(int id);

	public boolean ModifierOffre(Offre offre);
	
	//Contact 
	public void ajouteContactMessage(Contact contact); 

	
}

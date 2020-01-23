package business;

import java.util.ArrayList;

import models.Client;
import models.Offre;
import models.Vendeur;

public interface LocationServicesInter {

	// Vendeur
	public boolean inscriptionVendeur(Vendeur vendeur);

	public Vendeur getVendeurByEmail(String email);

	
	//Client 
	public boolean inscriptionClient(Client client);

	public Client getClientByEmail(String email);

	public Vendeur getVendeurById(int id);

	
	
	//offre
	public boolean AjouterOffre(Offre offre);
	public ArrayList<Offre> getOffresByIdVendeur(int id);

	public void SupprimerOffre(int id);

	public Offre getOffresById(int id);

	public boolean ModifierOffre(Offre offre);

	
}

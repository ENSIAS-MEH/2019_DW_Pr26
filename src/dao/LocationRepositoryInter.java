package dao;

import java.util.ArrayList;

import models.Vendeur;

public interface LocationRepositoryInter {

	// Vendeur
	public void inscriptionVendeur(Vendeur vendeur);
	public ArrayList<Vendeur> getListVendeur(); 
}

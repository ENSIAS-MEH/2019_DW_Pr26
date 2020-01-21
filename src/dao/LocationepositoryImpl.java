package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import models.Vendeur;

public class LocationepositoryImpl implements LocationepositoryInter{
	
	private MangementDataBase mangementDataBase; 
	
	public LocationepositoryImpl(){
		super(); 
		mangementDataBase = new MangementDataBase(); 
	}
	
	public void InscriptionVendeur(Vendeur vendeur){
		Connection connection = mangementDataBase.connexionDataBase(); 
		try {
			PreparedStatement ps = connection.prepareStatement("insert into vendeur("
					+ "nom,prenom,date_naissance,cin,sexe,email,mot_de_passe,adresse,pays,ville,num_telephone) values (?,?,?,?,?,?,?,?,?,?,?)");
			
			
			ps.setString(1, vendeur.getNom());
			ps.setString(2,vendeur.getPrenom());
			ps.setString(3, vendeur.getDate_naissane());
			ps.setString(4, vendeur.getNum_cin());
			ps.setString(5, vendeur.getSexe());
			ps.setString(6, vendeur.getEmail());
			ps.setString(7, vendeur.getMot_de_passe());
			ps.setString(8, vendeur.getAdresse());
			ps.setString(9, vendeur.getPays());
			ps.setString(10, vendeur.getVille());
			ps.setString(11, vendeur.getNum_telephone());
			

			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

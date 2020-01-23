package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import models.Client;
import models.Offre;
import models.Vendeur;

public class LocationRepositoryImpl implements LocationRepositoryInter {

	private MangementDataBase mangementDataBase;

	public LocationRepositoryImpl() {
		super();
		mangementDataBase = new MangementDataBase();
	}

	public void inscriptionVendeur(Vendeur vendeur) {
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("insert into vendeur("
					+ "nom,prenom,date_naissance,cin,sexe,email,mot_de_passe,adresse,pays,ville,num_telephone) values (?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, vendeur.getNom());
			ps.setString(2, vendeur.getPrenom());
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

	public Vendeur getVendeurbyEmail(String email) {
		Vendeur vendeur = null;
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("select * from vendeur where email ='" + email + "'");
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				vendeur = new Vendeur();
				vendeur.setId(rs.getInt("id"));
				vendeur.setNom(rs.getString("nom"));
				vendeur.setPrenom(rs.getString("prenom"));
				vendeur.setDate_naissane(rs.getString("date_naissance"));
				vendeur.setNum_cin(rs.getString("cin"));
				vendeur.setSexe(rs.getString("sexe"));
				vendeur.setEmail(rs.getString("email"));
				vendeur.setMot_de_passe(rs.getString("mot_de_passe"));
				vendeur.setAdresse(rs.getString("adresse"));
				vendeur.setPays(rs.getString("pays"));
				vendeur.setVille(rs.getString("ville"));
				vendeur.setNum_telephone(rs.getString("num_telephone"));

			}

			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vendeur;
	}

	@Override
	public ArrayList<Vendeur> getListVendeur() {
		ArrayList<Vendeur> listeVendeur = new ArrayList<>();
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("select * from vendeur");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Vendeur vendeur = new Vendeur();
				vendeur.setId(rs.getInt("id"));
				vendeur.setNom(rs.getString("nom"));
				vendeur.setPrenom(rs.getString("prenom"));
				vendeur.setDate_naissane(rs.getString("date_naissance"));
				vendeur.setNum_cin(rs.getString("cin"));
				vendeur.setSexe(rs.getString("sexe"));
				vendeur.setEmail(rs.getString("email"));
				vendeur.setMot_de_passe(rs.getString("mot_de_passe"));
				vendeur.setAdresse(rs.getString("adresse"));
				vendeur.setPays(rs.getString("pays"));
				vendeur.setVille(rs.getString("ville"));
				vendeur.setNum_telephone(rs.getString("num_telephone"));
				listeVendeur.add(vendeur);
			}
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeVendeur;
	}

	public void inscriptionClient(Client client) {
		System.out.println(client.toString());
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("insert into client("
					+ "nom,prenom,date_naissance,cin,sexe,email,mot_de_passe,pays,ville,num_telephone) values (?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, client.getNom());
			ps.setString(2, client.getPrenom());
			ps.setString(3, client.getDate_naissane());
			ps.setString(4, client.getNum_cin());
			ps.setString(5, client.getSexe());
			ps.setString(6, client.getEmail());
			ps.setString(7, client.getMot_de_passe());
			ps.setString(8, client.getPays());
			ps.setString(9, client.getVille());
			ps.setString(10, client.getNum_telephone());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<Client> getListClient() {
		ArrayList<Client> listeClient = new ArrayList<>();
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("select * from client");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Client client = new Client();
				client.setId(rs.getInt("id"));
				client.setNom(rs.getString("nom"));
				client.setPrenom(rs.getString("prenom"));
				client.setDate_naissane(rs.getString("date_naissance"));
				client.setNum_cin(rs.getString("cin"));
				client.setSexe(rs.getString("sexe"));
				client.setEmail(rs.getString("email"));
				client.setMot_de_passe(rs.getString("mot_de_passe"));
				client.setPays(rs.getString("pays"));
				client.setVille(rs.getString("ville"));
				client.setNum_telephone(rs.getString("num_telephone"));
				listeClient.add(client);
			}
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeClient;
	}

	public Client getClientByEmail(String email) {
		Client client = null;
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("select * from client where email = '" + email + "'");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				client = new Client();
				client.setId(rs.getInt("id"));
				client.setNom(rs.getString("nom"));
				client.setPrenom(rs.getString("prenom"));
				client.setDate_naissane(rs.getString("date_naissance"));
				client.setNum_cin(rs.getString("cin"));
				client.setSexe(rs.getString("sexe"));
				client.setEmail(rs.getString("email"));
				client.setMot_de_passe(rs.getString("mot_de_passe"));
				client.setPays(rs.getString("pays"));
				client.setVille(rs.getString("ville"));
				client.setNum_telephone(rs.getString("num_telephone"));
			}
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return client;
	}

	@Override
	public Vendeur getVendeurbyId(int id) {
		Vendeur vendeur = null;
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("select * from vendeur where id =" + id );
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				vendeur = new Vendeur();
				vendeur.setId(rs.getInt("id"));
				vendeur.setNom(rs.getString("nom"));
				vendeur.setPrenom(rs.getString("prenom"));
				vendeur.setDate_naissane(rs.getString("date_naissance"));
				vendeur.setNum_cin(rs.getString("cin"));
				vendeur.setSexe(rs.getString("sexe"));
				vendeur.setEmail(rs.getString("email"));
				vendeur.setMot_de_passe(rs.getString("mot_de_passe"));
				vendeur.setAdresse(rs.getString("adresse"));
				vendeur.setPays(rs.getString("pays"));
				vendeur.setVille(rs.getString("ville"));
				vendeur.setNum_telephone(rs.getString("num_telephone"));

			}

			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vendeur;
	}

	@Override
	public void AjouterOffre(Offre offre) {
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("INSERT INTO offre (id_hote,categorie,nombre_personne,pays,ville,adresse,date_debut,date_fin,prix,devise,salle_bain,nb_chambre,description,photo,date_offre) VALUES "
					+ "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			System.out.println(offre.getNombre_personne());
			ps.setInt(1, offre.getId_hote());
			ps.setString(2, offre.getCategorie());
			ps.setInt(3, offre.getNombre_personne());
			
			ps.setString(4, offre.getPays());
			ps.setString(5, offre.getVille());
			ps.setString(6, offre.getAdresse());
			
			ps.setString(7, offre.getDate_debut());
			ps.setString(8, offre.getDate_fin());
			ps.setFloat(9, offre.getPrix());
			ps.setString(10, offre.getDevise());
			
			ps.setInt(11, offre.getSalle_bain());
			ps.setInt(12, offre.getNb_chambre());
			ps.setString(13, offre.getDescription());
			ps.setBinaryStream(14, null);
			
			//ps.setBlob(14, offre.getPhoto());
			ps.setString(15, offre.getDate_offre());
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<Offre> getOffresByIdVendeur(int id) {
		ArrayList<Offre> listeOffre = new ArrayList<>();
		Connection connection = mangementDataBase.connexionDataBase();
		try {
			PreparedStatement ps = connection.prepareStatement("select * from offre where id_hote = "+id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Offre offre = new Offre();
				offre.setId(rs.getInt("id"));
				offre.setCategorie(rs.getString("categorie"));
				offre.setNb_chambre(rs.getInt("nombre_personne"));
				offre.setPays(rs.getString("pays"));
				offre.setVille(rs.getString("ville"));
				offre.setAdresse(rs.getString("adresse"));
				offre.setDate_debut(rs.getString("date_debut"));
				offre.setDate_fin(rs.getString("date_fin"));
				offre.setPrix(rs.getFloat("prix"));
				offre.setDevise(rs.getString("devise"));
				offre.setSalle_bain(rs.getInt("salle_bain"));
				offre.setNb_chambre(rs.getInt("nb_chambre"));
				offre.setDescription(rs.getString("description"));
				offre.setDate_offre(rs.getString("date_offre"));
				offre.setEtat(rs.getString("etat"));
				listeOffre.add(offre);	
				System.out.println(offre.toString());
			}
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listeOffre;
	}
}

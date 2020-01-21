package dao;
import java.sql.Connection; 
import java.sql.DriverManager;

public class MangementDataBase {
	
	public Connection connexionDataBase(){	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/VENTELOCATION";
			String utilisateur = "root";
			String motDePasse = "";
			Connection con= DriverManager.getConnection(url, utilisateur, motDePasse); 
			return con; 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("erreur connection");
			e.printStackTrace();
		}
		return null; 
	}
}

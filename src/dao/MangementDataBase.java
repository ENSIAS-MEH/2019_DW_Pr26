package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class MangementDataBase {

	public Connection connexionDataBase() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/VENTELOCATION?serverTimezone=UTC", "root", "");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("erreur connection");
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		MangementDataBase m = new MangementDataBase();
		Connection c = m.connexionDataBase();
		if (c == null)
			System.out.println("erreur connection");
		else
			System.out.println("connection");

	}
}

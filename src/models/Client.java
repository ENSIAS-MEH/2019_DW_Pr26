package models;

public class Client {
	private int id;
	private String nom;
	private String prenom;
	private String date_naissane;
	private String num_cin;
	private String sexe;
	private String email;
	private String mot_de_passe;
	private String pays;
	private String ville;
	private String num_telephone;

	public Client() {
		super();
	}

	public Client(int id, String nom, String prenom, String date_naissane, String num_cin, String sexe, String email,
			String mot_de_passe, String pays, String ville, String num_telephone) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.date_naissane = date_naissane;
		this.num_cin = num_cin;
		this.sexe = sexe;
		this.email = email;
		this.mot_de_passe = mot_de_passe;
		this.pays = pays;
		this.ville = ville;
		this.num_telephone = num_telephone;
	}

	public Client(String nom, String prenom, String date_naissane, String num_cin, String sexe, String email,
			String mot_de_passe, String pays, String ville, String num_telephone) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.date_naissane = date_naissane;
		this.num_cin = num_cin;
		this.sexe = sexe;
		this.email = email;
		this.mot_de_passe = mot_de_passe;
		this.pays = pays;
		this.ville = ville;
		this.num_telephone = num_telephone;
	}
	
	@Override
	public String toString() {
		return "Client [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", date_naissane=" + date_naissane
				+ ", num_cin=" + num_cin + ", sexe=" + sexe + ", email=" + email + ", mot_de_passe=" + mot_de_passe
				+ ", pays=" + pays + ", ville=" + ville + ", num_telephone=" + num_telephone + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getDate_naissane() {
		return date_naissane;
	}

	public void setDate_naissane(String date_naissane) {
		this.date_naissane = date_naissane;
	}

	public String getNum_cin() {
		return num_cin;
	}

	public void setNum_cin(String num_cin) {
		this.num_cin = num_cin;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMot_de_passe() {
		return mot_de_passe;
	}

	public void setMot_de_passe(String mot_de_passe) {
		this.mot_de_passe = mot_de_passe;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getNum_telephone() {
		return num_telephone;
	}

	public void setNum_telephone(String num_telephone) {
		this.num_telephone = num_telephone;
	}

}

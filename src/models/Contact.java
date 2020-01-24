package models;

public class Contact {
	private int id;
	private String nom;
	private String email;
	private String sujet;
	private String message;
	private String type_emetteur;

	public Contact() {
		super();
	}

	public Contact(String nom, String email, String sujet, String message, String type_emetteur) {
		super();
		this.nom = nom;
		this.email = email;
		this.sujet = sujet;
		this.message = message;
		this.type_emetteur = type_emetteur;
	}

	public Contact(int id, String nom, String email, String sujet, String message, String type_emetteur) {
		super();
		this.id = id;
		this.nom = nom;
		this.email = email;
		this.sujet = sujet;
		this.message = message;
		this.type_emetteur = type_emetteur;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getType_emetteur() {
		return type_emetteur;
	}

	public void setType_emetteur(String type_emetteur) {
		this.type_emetteur = type_emetteur;
	}

}

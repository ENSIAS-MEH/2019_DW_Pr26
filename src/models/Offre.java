package models;

import java.io.InputStream;

public class Offre {
	private int id;
	private int id_hote;
	private String date_offre;
	private String categorie;
	private int nombre_personne;
	private String adresse;
	private String pays;
	private String ville;
	private String date_debut;
	private String date_fin;
	private float prix;
	private String devise;
	private int salle_bain;
	private int nb_chambre;
	private String description;
	private String etat;
	private InputStream photo;
	private String base64Image;

	public Offre(int id_hote, String date_offre, String categorie, int nombre_personne, String adresse, String pays,
			String ville, String date_debut, String date_fin, float prix, String devise, int salle_bain, int nb_chambre,
			String description, InputStream photo) {
		super();

		this.id_hote = id_hote;
		this.date_offre = date_offre;
		this.categorie = categorie;
		this.nombre_personne = nombre_personne;
		this.adresse = adresse;
		this.pays = pays;
		this.ville = ville;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.prix = prix;
		this.devise = devise;
		this.salle_bain = salle_bain;
		this.nb_chambre = nb_chambre;
		this.description = description;
		this.photo = photo;

	}

	public Offre() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_hote() {
		return id_hote;
	}

	public void setId_hote(int id_hote) {
		this.id_hote = id_hote;
	}

	public int getNombre_personne() {
		return nombre_personne;
	}

	public void setNombre_personne(int nombre_personne) {
		this.nombre_personne = nombre_personne;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
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

	public String getDate_debut() {
		return date_debut;
	}

	public void setDate_debut(String date_debut) {
		this.date_debut = date_debut;
	}

	public String getDate_fin() {
		return date_fin;
	}

	public void setDate_fin(String date_fin) {
		this.date_fin = date_fin;
	}

	public float getPrix() {
		return prix;
	}

	public void setPrix(float prix) {
		this.prix = prix;
	}

	public String getDevise() {
		return devise;
	}

	public void setDevise(String devise) {
		this.devise = devise;
	}

	public int getSalle_bain() {
		return salle_bain;
	}

	public void setSalle_bain(int salle_bain) {
		this.salle_bain = salle_bain;
	}

	public int getNb_chambre() {
		return nb_chambre;
	}

	public void setNb_chambre(int nb_chambre) {
		this.nb_chambre = nb_chambre;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public InputStream getPhoto() {
		return photo;
	}

	public void setPhoto(InputStream photo) {
		this.photo = photo;
	}

	public String getDate_offre() {
		return date_offre;
	}

	public void setDate_offre(String date_offre) {
		this.date_offre = date_offre;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	public String getBase64Image() {
		return base64Image;
	}

	public void setBase64Image(String base64Image) {
		this.base64Image = base64Image;
	}

	@Override
	public String toString() {
		return "Offre [id=" + id + ", id_hote=" + id_hote + ", date_offre=" + date_offre + ", categorie=" + categorie
				+ ", nombre_personne=" + nombre_personne + ", adresse=" + adresse + ", pays=" + pays + ", ville="
				+ ville + ", date_debut=" + date_debut + ", date_fin=" + date_fin + ", prix=" + prix + ", devise="
				+ devise + ", salle_bain=" + salle_bain + ", nb_chambre=" + nb_chambre + ", description=" + description
				+ ", etat=" + etat + "]";
	}


}

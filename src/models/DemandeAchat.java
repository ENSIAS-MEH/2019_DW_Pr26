package models;

public class DemandeAchat {
	private int id;
	private int id_demandeur;
	private int id_vendeur;
	private int id_offre;
	private String dateDemande;
	private String statut;
	private String date_acceptaion; 
	private String confirmation; 

	public DemandeAchat() {
		super();
	}

	public DemandeAchat(int id, int id_demandeur, int id_vendeur, int id_offre, String dateDemande, String statut) {
		super();
		this.id = id;
		this.id_demandeur = id_demandeur;
		this.id_vendeur = id_vendeur;
		this.id_offre = id_offre;
		this.dateDemande = dateDemande;
		this.statut = statut;
	}

	public DemandeAchat(int id_demandeur, int id_vendeur, int id_offre, String dateDemande, String statut) {
		super();
		this.id_demandeur = id_demandeur;
		this.id_vendeur = id_vendeur;
		this.id_offre = id_offre;
		this.dateDemande = dateDemande;
		this.statut = statut;
	}
	
	public String getDate_acceptaion() {
		return date_acceptaion;
	}

	public void setDate_acceptaion(String date_acceptaion) {
		this.date_acceptaion = date_acceptaion;
	}

	public String getConfirmation() {
		return confirmation;
	}

	public void setConfirmation(String confirmation) {
		this.confirmation = confirmation;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_demandeur() {
		return id_demandeur;
	}

	public void setId_demandeur(int id_demandeur) {
		this.id_demandeur = id_demandeur;
	}

	public int getId_vendeur() {
		return id_vendeur;
	}

	public void setId_vendeur(int id_vendeur) {
		this.id_vendeur = id_vendeur;
	}

	public int getId_offre() {
		return id_offre;
	}

	public void setId_offre(int id_offre) {
		this.id_offre = id_offre;
	}

	public String getDateDemande() {
		return dateDemande;
	}

	public void setDateDemande(String dateDemande) {
		this.dateDemande = dateDemande;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	@Override
	public String toString() {
		return "DemandeAchat [id=" + id + ", id_demandeur=" + id_demandeur + ", id_vendeur=" + id_vendeur
				+ ", id_offre=" + id_offre + ", dateDemande=" + dateDemande + ", statut=" + statut + "]";
	}

}

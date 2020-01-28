package models;

public class DemandeLocation {
	private int id;
	private String date_debut;
	private String date_fin;
	private int id_demandeur;
	private int id_vendeur;
	private int id_offre;
	private String dateDemande;
	private int nb_nuit;
	private String statut;

	public DemandeLocation() {
		super();
	}

	public DemandeLocation(String date_debut, String date_fin, int id_demandeur, int id_vendeur, int id_offre,
			String dateDemande, int nb_nuit, String statut) {
		super();
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.id_demandeur = id_demandeur;
		this.id_vendeur = id_vendeur;
		this.id_offre = id_offre;
		this.dateDemande = dateDemande;
		this.nb_nuit = nb_nuit;
		this.statut = statut;
	}

	public DemandeLocation(int id, String date_debut, String date_fin, int id_demandeur, int id_vendeur,
			int id_offre, String dateDemande, int nb_nuit, String statut) {
		super();
		this.id = id;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.id_demandeur = id_demandeur;
		this.id_vendeur = id_vendeur;
		this.id_offre = id_offre;
		this.dateDemande = dateDemande;
		this.nb_nuit = nb_nuit;
		this.statut = statut;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getNb_nuit() {
		return nb_nuit;
	}

	public void setNb_nuit(int nb_nuit) {
		this.nb_nuit = nb_nuit;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	@Override
	public String toString() {
		return "DemandeReservation [id=" + id + ", date_debut=" + date_debut + ", date_fin=" + date_fin
				+ ", id_demandeur=" + id_demandeur + ", id_vendeur=" + id_vendeur + ", id_offre=" + id_offre
				+ ", dateDemande=" + dateDemande + ", nb_nuit=" + nb_nuit + ", statut=" + statut + "]";
	}

}

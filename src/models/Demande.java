package models;

public class Demande {
	private DemandeAchat demandeAchat;
	private DemandeLocation demandeLocation;
	private Client client;

	public Demande(DemandeLocation demandeLocation, Client client) {
		super();
		this.demandeLocation = demandeLocation;
		this.client = client;
	}

	public Demande(DemandeAchat demandeAchat, Client client) {
		super();
		this.demandeAchat = demandeAchat;
		this.client = client;
	}

	public DemandeAchat getDemandeAchat() {
		return demandeAchat;
	}

	public void setDemandeAchat(DemandeAchat demandeAchat) {
		this.demandeAchat = demandeAchat;
	}

	public DemandeLocation getDemandeLocation() {
		return demandeLocation;
	}

	public void setDemandeLocation(DemandeLocation demandeLocation) {
		this.demandeLocation = demandeLocation;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

}

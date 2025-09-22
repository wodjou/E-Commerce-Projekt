package models;

public class Payment {
	
	private String userName;
	private int gesamtPreis;
	
	public Payment(String userName, int gesamtPreis) {
		this.userName = userName;
		this.gesamtPreis = gesamtPreis;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getGesamtPreis() {
		return gesamtPreis;
	}

	public void setGesamtPreis(int gesamtPreis) {
		this.gesamtPreis = gesamtPreis;
	}
	
	
	

}

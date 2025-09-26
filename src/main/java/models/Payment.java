package models;

import java.time.LocalDate;

public class Payment {
	
	private String userName;
	private int gesamtPreis;
	private LocalDate date;
	
	public Payment(String userName, int gesamtPreis, LocalDate date) {
		this.userName = userName;
		this.gesamtPreis = gesamtPreis;
		this.date = date;
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

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}
	
	
	
	

}

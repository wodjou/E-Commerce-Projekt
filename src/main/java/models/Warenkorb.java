package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import dao.DbConnection;

public class Warenkorb {
	
	private Map<Product, Integer> warenkorbProdukt;
	private String removedMessage = "";
	private String bestellungsMessage ="";
	private String username;

	public Warenkorb() {
		warenkorbProdukt = new HashMap<>();
	}
	public Map<Product, Integer> getWarenkorbProdukt() {
		return warenkorbProdukt;
	}

	public void setWarenkorbProdukt(Map<Product, Integer> warenkorbProdukt) {
		this.warenkorbProdukt = warenkorbProdukt;
	}
	
	public boolean addProdukt(Product product, int menge) {
		if(product!= null && !checkIfProduktExists(product) ) {
			warenkorbProdukt.put(product, menge);
			return true;
		}
		return false;
	}
	
	public boolean checkIfProduktExists(Product p) {
		for(Product pro: warenkorbProdukt.keySet()) {
			if(pro.getName().equals(p.getName())) {
				return true;
			}
		}
		return false;
	}

	
	public boolean removeProduct(Product product) {
		for(Entry<Product, Integer> entry: warenkorbProdukt.entrySet()) {
			System.out.println("prod "+entry.getKey().getName()+ " "+" product "+entry.getValue());
			if(entry.getKey().getName().equals(product.getName())) {
				this.removedMessage = "";
				removedMessage += "Produkt "+product.getName()+" wurde gelöscht";
				return warenkorbProdukt.remove(entry.getKey(), entry.getValue());
			}
		}
		return false;
	}
	
	public String getInfoMessage() {
		return warenkorbProdukt.keySet().stream().toList().getLast().getName() +" wurde im Warenkorb hinzugefügt";
	}
	public String getRemovedMessage() {
		return removedMessage;
	}
	public void setRemovedMessage(String removedMessage) {
		this.removedMessage = removedMessage;
	}
	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBestellungsMessage() {
		return bestellungsMessage;
	}
	public void setBestellungsMessage(String bestellungsMessage) {
		this.bestellungsMessage = bestellungsMessage;
	}
	public boolean productBestellen(Product product) throws SQLException {
		Connection conn = new DbConnection().etablishConnection();
		String query = "INSERT INTO orders (productname, menge, username, gesamtpreis) VALUES (?, ?, ?, ?)";
		String insertToPayments = "INSERT INTO payments (username, gesamtpreis) VALUES (?, ?)"; 
		PreparedStatement preparedStatement = conn.prepareStatement(query);
		PreparedStatement prepStatPayments = conn.prepareStatement(insertToPayments);
		preparedStatement.setString(1, product.getName());
		int value= -500;
		for(Entry<Product, Integer> entry: warenkorbProdukt.entrySet()) {
			//System.out.println("prod "+entry.getKey().getName()+ " "+" product "+entry.getValue());
			if(entry.getKey().getName().equals(product.getName())) {
				value = entry.getValue();
				this.bestellungsMessage="";
				this.bestellungsMessage += "Produkt "+product.getName()+" "+"wurde bestellt";
				warenkorbProdukt.remove(entry.getKey(), entry.getValue());
				break;
			}
		}
		preparedStatement.setInt(2, value);
		preparedStatement.setString(3, "testUser");
		preparedStatement.setInt(4, value*1000);
		prepStatPayments.setString(1, this.username);
		prepStatPayments.setInt(2, value*1000);
		
		preparedStatement.executeUpdate();
		prepStatPayments.executeUpdate();
		System.out.println("Bestellung wurde gespeichert");
		return false;
	}
	
	
	
	


}

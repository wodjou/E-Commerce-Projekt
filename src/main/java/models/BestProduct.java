package models;

public class BestProduct {
	
	private String productname;
	private Double umsatz;
	
	public BestProduct(String productname, Double umsatz) {
		this.productname = productname;
		this.umsatz = umsatz;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Double getUmsatz() {
		return umsatz;
	}

	public void setUmsatz(Double umsatz) {
		this.umsatz = umsatz;
	}
	
	

}

package models;

import java.util.ArrayList;
import java.util.List;

public class Warenkorb {
	
	private List<Product> warenkorbProdukt;

	public Warenkorb() {
		warenkorbProdukt = new ArrayList<>();
	}
	public List<Product> getWarenkorbProdukt() {
		return warenkorbProdukt;
	}

	public void setWarenkorbProdukt(List<Product> warenkorbProdukt) {
		this.warenkorbProdukt = warenkorbProdukt;
	}
	
	public boolean addProdukt(Product product) {
		if(product!= null && !warenkorbProdukt.contains(product) ) {
			warenkorbProdukt.add(product);
			return true;
		}
		return false;
	}

	
	public boolean removeProduct(Product product) {
		for(Product prod: warenkorbProdukt) {
			if(prod.getName().equals(product.getName())) {
				return warenkorbProdukt.remove(product);
			}
		}
		return false;
	}


}

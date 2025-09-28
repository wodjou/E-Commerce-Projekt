package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import models.Product;

public class ProductDao {

	
	
	private Connection conn;
	public ProductDao() {
		
		conn = new DbConnection().etablishConnection();
	
	}
	
	public void deleteTableProduct() {
		
	}
		
		public List<Product> getAllProducts() {
			List<Product> productList = new ArrayList<Product>();
			try {
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery("SELECT* FROM product");
				
				while(rs.next()) {
					int id = rs.getInt("product-id");
					String name = rs.getString("product-name");
					double price = rs.getDouble("product-price");
					String description = rs.getString("product-description");
					Product product = new Product(id, name, price, description);
					productList.add(product);
				}
				System.out.println("size...."+ productList.size());
				return productList;
			}
			catch(Exception e) {
				e.printStackTrace();
				return null;
			}
		
		}
		

	
		
}

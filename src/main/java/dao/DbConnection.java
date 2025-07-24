package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	private String dbUrl;
	
	
	public DbConnection() {
		
	}
	
	public Connection etablishConnection(String dbUrl, String user, String password) {
		
		try {
				
			Class.forName("org.postgresql.Driver");
			Connection conn = DriverManager.getConnection(dbUrl, user, password);
			System.out.println("Successful connected....");
			return conn;
			
		}
		catch(Exception e) {
			System.out.println("Connection failed");
			e.printStackTrace();
			return null;
		}
		
	}

}

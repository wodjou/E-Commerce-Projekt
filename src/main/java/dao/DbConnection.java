package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	private String dbUrl;
	private String user;
	private String password;
	
	public DbConnection() {
		dbUrl = "jdbc:postgresql://localhost:5432/E-Commerce";
		user = "postgres";
		password = "postgres";
	}
	
	public Connection etablishConnection() {
		
		try {
				
			Class.forName("org.postgresql.Driver");
			Connection conn = DriverManager.getConnection(this.dbUrl, this.user, this.password);
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

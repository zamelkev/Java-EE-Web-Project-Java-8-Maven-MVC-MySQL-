package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnection {
	private String user;
	private String password;
	private Connection conn;
	
	public DatabaseConnection(String user, String password) {
		super();
		this.user = user;
		this.password = password;
	}
	
	public Connection getConn() throws ClassNotFoundException {
		String urlConnection;
		Properties infoConnection;
		
		urlConnection = "jdbc:mysql://localhost:3306/gestionDeAdoptar";
		infoConnection = new Properties();
		infoConnection.put("user", this.user);
		infoConnection.put("password", this.password);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(urlConnection, infoConnection);
			System.err.println("Conexion Establecidad");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	
	
	

}

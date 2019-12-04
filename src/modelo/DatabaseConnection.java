package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
		
		urlConnection = "jdbc:mysql://localhost:3306/gestiondeadoptar";
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
	
	public ResultSet dameTipoTel ( ) throws SQLException {
		ResultSet rs = null;
		String query = "select * from tipoTelefono";
		
		Statement st;
		
		try {
			conn = getConn();
			st = conn.createStatement();
			rs = st.executeQuery(query);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public ResultSet dameMascotaMos() throws SQLException {
		ResultSet rs = null;
String query = "Select m.id,  m.nombre, m.fechaNacimento, m.images, tm.descmascota\n" + 
		"from mascota m left join tipomascota tm\n" + 
		"on m.idTipoMascota = tm.id";
		
		Statement st;
		
		try {
			conn = getConn();
			st = conn.createStatement();
			rs = st.executeQuery(query);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}

}

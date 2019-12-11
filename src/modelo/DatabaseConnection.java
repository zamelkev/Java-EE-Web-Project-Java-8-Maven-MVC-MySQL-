package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

	public ResultSet dameTipoTel() throws SQLException {
		ResultSet rs = null;
		String query = "select * from tipotelefono";

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
		String query = "Select m.id,  m.nombre, m.fechaNacimento, m.images, tm.descmascota\n"
				+ "from mascota m left join tipomascota tm\n" + "on m.idTipoMascota = tm.id";

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

	public void insertaPersona(Persona p) throws SQLException {
		String query1 = "INSERT INTO `gestiondeadoptar`.`persona` (`nombre`, `primerApellido`, "
				+ "`segundoApellido`, `direccion`, `correo`, `usuario`, `password`) " + "VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = null;
		PreparedStatement ps1 = null ;

		try {
			conn = getConn();
			conn.setAutoCommit(false);

			Long lastInsertId = 0L;

			ps = conn.prepareStatement(query1, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, p.getNombre());
			ps.setString(2, p.getPrimerApellido());
			ps.setString(3, p.getSegundoApellido());
			ps.setString(4, p.getDireccion());
			ps.setString(5, p.getCorreo());
			ps.setString(6, p.getUsuario());
			ps.setString(7, p.getPassword());

			int totalInsert = ps.executeUpdate();

			if (totalInsert > 0 && p.getTelefono() != null) {
				ResultSet generatedKeys = ps.getGeneratedKeys();

				if (generatedKeys.next()) {
					lastInsertId = generatedKeys.getLong(1);
				}
				
				String query2 ="INSERT INTO `gestiondeadoptar`.`telefono` (`numero`, `idTipoTelefono`, `idPersona`) "
						+ "VALUES (?, ?, ?)";
				ps1 = conn.prepareStatement(query2);
				
				ps1.setString(1, p.getTelefono());
				ps1.setInt(2, p.getTipoTelefono());
				ps1.setLong(3, lastInsertId);
				ps1.executeUpdate();
			}
			
			conn.commit();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			ps.close();
			ps1.close();
			conn.setAutoCommit(true);
		}

	}
     
	public ResultSet damePersona(int id) throws SQLException {
		ResultSet rs = null;
		String query = "select * from persona where id = ?";
		PreparedStatement ps;
		
		try {
			conn = getConn();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public ResultSet damePersona() throws SQLException {
		ResultSet rs = null;
		String query = "select * from persona";
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
	
	public ResultSet dameLogin(Persona pu) throws SQLException {
		ResultSet rs = null;
		String query = "select * \n" + 
				"from persona p \n" + 
				"where p.usuario = ?  and p.password = ? ";
		PreparedStatement stmt;
		try {
			conn = getConn();
			stmt = conn.prepareStatement(query);
			stmt.setString(1, pu.getUsuario());
			stmt.setString(2, pu.getPassword());
			rs = stmt.executeQuery();
			//stmt.getString(1, .login);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
		
	}

	public ResultSet dameEventos() throws SQLException {
		ResultSet rs = null;
		String query = "Select e.id, e.titulo, e.fechaPublicacion, e.texto, e.images, e.referencias,\n" + 
				"	e.autor from eventos e;";

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

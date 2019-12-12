package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.Local;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class Modelo
 */
@Stateless
@Local
public class Modelo {
	private List<Mascota> mascotas;
	private Persona persona;
	private Persona personaId;
	private List<Persona>personas;
	private List<TipoTelefono> tipoTelefonos;
    private Persona personaUsuPwd;
	private Persona personaUsuario;
	private List<Evento> eventos;
	private Adopcion adopcion;
    private List<TipoMascota> tipoMascotas;
    private List<Mascota> mascotass;
	

	/**
	 * Default constructor.
	 */
	public Modelo() {
		// TODO Auto-generated constructor stub
	}
	
	
    // Chris: para mostrar todos los Mascota 
	public List<Mascota> getMascotas() {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		mascotas = new ArrayList<>();
		
		try {
			ResultSet rs = db.dameMascotaMos();
			while(rs.next()) {
				mascotas.add(new Mascota(rs.getInt("id"), 
						rs.getString("nombre"), rs.getObject("fechaNacimento", LocalDate.class), 
						rs.getString("images"), rs.getString("descMascota")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mascotas;
	}



	public void setMascotas(List<Mascota> mascotas) {
		this.mascotas = mascotas;
	}

	public Persona getPersona() {
		return persona;
	}

   
    // Chris : para guarda persona
	public void setPersona(Persona persona) {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		 try {
			db.insertaPersona(persona);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


//Chris: para mostrar una persona 
	public Persona getPersonaId(int id) {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		
		try {
			ResultSet rs = db.damePersona(id);
			while (rs.next()) {
				personaId = new Persona(rs.getInt("id"), 
						rs.getString("nombre"), rs.getString("primerApellido"), rs.getString("segundoApellido"), 
						rs.getString("direccion"), rs.getString("correo"), rs.getString("usuario"), rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return personaId;
	}


   
	public void setPersonaId(Persona personaId) {
		
		this.personaId = personaId;
	}

    

	public Persona getPersonaUsuPwd(String usuario, String password) {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		
		try {
			ResultSet rs = db.damePersonaU(usuario, password);
			while (rs.next()) {
				personaUsuPwd = new Persona(rs.getInt("id"), 
						rs.getString("nombre"), rs.getString("primerApellido"), rs.getString("segundoApellido"), 
						rs.getString("direccion"), rs.getString("correo"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return personaUsuPwd;
	}


	public void setPersonaUsuPwd(Persona personaUsuPwd) {
		this.personaUsuPwd = personaUsuPwd;
	}


	public List<Persona> getPersonas() {
		return personas;
	}



	public void setPersonas(List<Persona> personas) {
		this.personas = personas;
	}


	//Chris : para mostrar tipoTelefono
	public List<TipoTelefono> getTipoTelefonos() {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");

		tipoTelefonos = new ArrayList<>();

		try {
			ResultSet rs = db.dameTipoTel();
			while (rs.next()) {
				tipoTelefonos.add(new TipoTelefono(rs.getInt("id"), 
						rs.getString("descTipotel")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tipoTelefonos;
	}

	
	
	
	public void setTipoTelefonos(List<TipoTelefono> tipoTelefonos) {

		this.tipoTelefonos = tipoTelefonos;
	}
    // Chris : para el login 
	public Persona getPersonaUsuario(Persona pu) {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		personaUsuario = null;
		
		try {
			ResultSet rs =db.dameLogin(pu);
			if(rs.next()) {
				personaUsuario= new Persona(rs.getString("usuario"), rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return personaUsuario;
	}



	public void setPersonaUsuario(Persona personaUsuario) {
		this.personaUsuario = personaUsuario;
	}
	
	
	
	public Adopcion getAdopcion() {
		return adopcion;
	}



	public void setAdopcion(Adopcion adopcion) {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		try {
			db.adopcion(adopcion);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	//	KZ - Inicio
	public List<Evento> getEventos() {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		eventos = new ArrayList<>();
		
		try {
			ResultSet rs = db.dameEventos();
			while(rs.next()) {
				eventos.add(new Evento(rs.getInt("id"), rs.getString("titulo"), rs.getObject("fechaPublicacion",
						LocalDate.class), rs.getString("texto"), rs.getString("images"), rs.getString("autor"),
						rs.getString("referencias")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return eventos;
	}



	public void setEventos(List<Evento> eventos) {
		this.eventos = eventos;
	}
	// KZ - Fin


	public List<TipoMascota> getTipoMascotas() {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");

		tipoMascotas = new ArrayList<>();
		try {
			ResultSet rs = db.dameTipoMas();
			while(rs.next()) {
				tipoMascotas.add(new TipoMascota(rs.getInt("id"), 
						rs.getString("descMascota")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tipoMascotas;
	}


	public void setTipoMascotas(List<TipoMascota> tipoMascotas) {
		this.tipoMascotas = tipoMascotas;
	}


	public List<Mascota> getMascotass() throws SQLException {
		DatabaseConnection db = new DatabaseConnection("christian", "Temp2019$$");
		mascotas = new ArrayList<>();
		try {
			ResultSet rs = db.dameMascotak();
			while(rs.next()) {
				mascotass.add(new Mascota(rs.getInt("id"), 
						rs.getString("nombre")));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mascotass;
	}


	public void setMascotass(List<Mascota> mascotass) {
		this.mascotass = mascotass;
	}

	
   
}

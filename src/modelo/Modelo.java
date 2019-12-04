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
	private List<TipoTelefono> tipoTelefonos;
	

	/**
	 * Default constructor.
	 */
	public Modelo() {
		// TODO Auto-generated constructor stub
	}
	
	

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

}

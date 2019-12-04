package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
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
	private List<TipoTelefono> tipoTelefonos;

	/**
	 * Default constructor.
	 */
	public Modelo() {
		// TODO Auto-generated constructor stub
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

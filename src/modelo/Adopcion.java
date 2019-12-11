package modelo;

public class Adopcion {
	private int id;
	private int idPersona;
	private int idMascota;
	
	
	public Adopcion(int id, int idPersona, int idMascota) {
		super();
		this.id = id;
		this.idPersona = idPersona;
		this.idMascota = idMascota;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(int idPersona) {
		this.idPersona = idPersona;
	}
	public int getIdMascota() {
		return idMascota;
	}
	public void setIdMascota(int idMascota) {
		this.idMascota = idMascota;
	}
	
	

}

package modelo;

public class TipoMascota {
	private int id;
	private String descMascota;
	
	public TipoMascota(int id, String descMascota) {
		super();
		this.id = id;
		this.descMascota = descMascota;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescMascota() {
		return descMascota;
	}

	public void setDescMascota(String descMascota) {
		this.descMascota = descMascota;
	}
	
	
	

}

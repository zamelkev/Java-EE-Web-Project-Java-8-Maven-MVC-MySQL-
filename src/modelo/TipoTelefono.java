package modelo;

public class TipoTelefono {
	private int id;
	private String  descTipotel;
	
	
	
	public TipoTelefono(int id, String descTipotel) {
		super();
		this.id = id;
		this.descTipotel = descTipotel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescTipotel() {
		return descTipotel;
	}
	public void setDescTipotel(String descTipotel) {
		this.descTipotel = descTipotel;
	}
	
	
	
	
	
	

}

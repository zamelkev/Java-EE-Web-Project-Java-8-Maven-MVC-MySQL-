package modelo;

public class TipoTelefono {
	private int id;
	private String  descTel;
	
	public TipoTelefono(int id, String descTel) {
		super();
		this.id = id;
		this.descTel = descTel;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescTel() {
		return descTel;
	}

	public void setDescTel(String descTel) {
		this.descTel = descTel;
	}
	
	

}

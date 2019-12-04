package modelo;

public class Persona {
	private int id;
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	private String direccion;
	
	private String correo;
	private String password;
	private String telefono;
	
	
	
	public Persona(String primerApellido, String telefono, String password, String nombre, String segundoApellido,
			String correo, int id, String direccion) {
		super();
		this.primerApellido = primerApellido;
		this.telefono = telefono;
		this.password = password;
		this.nombre = nombre;
		this.segundoApellido = segundoApellido;
		this.correo = correo;
		this.id = id;
		this.direccion = direccion;
	}

	public Persona(int id, String nombre, String primerApellido, String segundoApellido, String direccion,
			String telefono, String correo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.primerApellido = primerApellido;
		this.segundoApellido = segundoApellido;
		this.direccion = direccion;
		this.telefono = telefono;
		this.correo = correo;
	}

	public Persona(int id, String nombre, String primerApellido, String segundoApellido, String direccion) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.primerApellido = primerApellido;
		this.segundoApellido = segundoApellido;
		this.direccion = direccion;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPrimerApellido() {
		return primerApellido;
	}
	public void setPrimerApellido(String primerApellido) {
		this.primerApellido = primerApellido;
	}
	public String getSegundoApellido() {
		return segundoApellido;
	}
	public void setSegundoApellido(String segundoApellido) {
		this.segundoApellido = segundoApellido;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	

}

package modelo;

import java.time.LocalDate;

public class Mascota {
	private int id;
	private String nombre;
	private LocalDate fechaNacimento;
	private String images;
	private String descMascota;
	private int idTipoMascota;
	
	
	
	public Mascota() {
		super();
	}
	
	public Mascota(int id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}

	public Mascota(int id, String nombre, int idTipoMascota) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.idTipoMascota = idTipoMascota;
	}
	public Mascota(int id, String nombre, LocalDate fechaNacimento, String images, String descMascota) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.fechaNacimento = fechaNacimento;
		this.images = images;
		this.descMascota = descMascota;
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
	public LocalDate getFechaNacimento() {
		return fechaNacimento;
	}
	public void setFechaNacimento(LocalDate fechaNacimento) {
		this.fechaNacimento = fechaNacimento;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getDescMascota() {
		return descMascota;
	}
	public void setDescMascota(String descMascota) {
		this.descMascota = descMascota;
	}
	public int getIdTipoMascota() {
		return idTipoMascota;
	}
	public void setIdTipoMascota(int idTipoMascota) {
		this.idTipoMascota = idTipoMascota;
	}
	
	
	

}

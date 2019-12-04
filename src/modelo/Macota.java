package modelo;

import java.time.LocalDate;

public class Macota {
	private int id;
	private String nombre;
	private LocalDate fechaNacimento;
	private String descMascota;
	
	public Macota(int id, String nombre, LocalDate fechaNacimento, String descMascota) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.fechaNacimento = fechaNacimento;
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

	public String getDescMascota() {
		return descMascota;
	}

	public void setDescMascota(String descMascota) {
		this.descMascota = descMascota;
	}
	
	
	

}

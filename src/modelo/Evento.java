package modelo;

import java.time.LocalDate;

public class Evento {
	private int id;
	private String titulo;
	private LocalDate fechaPublicacion;
	private String texto;
	private String images;
	private String autor;
	private String referencias;
	
	public Evento(int id, String titulo, LocalDate fechaPublicacion, String texto, String images, String autor,
			String referencias) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.fechaPublicacion = fechaPublicacion;
		this.texto = texto;
		this.images = images;
		this.autor = autor;
		this.referencias = referencias;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public LocalDate getFechaPublicacion() {
		return fechaPublicacion;
	}

	public void setFechaPublicacion(LocalDate fechaPublicacion) {
		this.fechaPublicacion = fechaPublicacion;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getReferencias() {
		return referencias;
	}

	public void setReferencias(String referencias) {
		this.referencias = referencias;
	}
	
	
}

package com.proyecto.entidad;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "enlace")

public class EnlaceBean {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="idenlace")
	private int idEnlace;
	private String estilo;
	private String icono;
	public String getEstilo() {
		return estilo;
	}
	public void setEstilo(String estilo) {
		this.estilo = estilo;
	}
	public String getIcono() {
		return icono;
	}
	public void setIcono(String icono) {
		this.icono = icono;
	}
	
	
	public int getIdEnlace() {
		return idEnlace;
	}
	public void setIdEnlace(int idEnlace) {
		this.idEnlace = idEnlace;
	}
	private String  descripcion;
	private String  ruta;
	
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getRuta() {
		return ruta;
	}
	public void setRuta(String ruta) {
		this.ruta = ruta;
	}

	
	
	
}

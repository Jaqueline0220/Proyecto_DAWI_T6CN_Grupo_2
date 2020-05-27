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
	private String idEnlace;
	private String  descripcion;
	private String  ruta;
	public String getIdEnlace() {
		return idEnlace;
	}
	public void setIdEnlace(String idEnlace) {
		this.idEnlace = idEnlace;
	}
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

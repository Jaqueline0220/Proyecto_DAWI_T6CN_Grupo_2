package com.proyecto.servicio;

import com.proyecto.entidad.UsuarioBean;

public interface UsuarioServicio {
	
	public abstract UsuarioBean ActualizaUsuario(UsuarioBean obj) throws Exception;
	public abstract UsuarioBean InsertarUsuario(UsuarioBean obj) throws Exception;
	public UsuarioBean  login(UsuarioBean bean) throws Exception;
	

}

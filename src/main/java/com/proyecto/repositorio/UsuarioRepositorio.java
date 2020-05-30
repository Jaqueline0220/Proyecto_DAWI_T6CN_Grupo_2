package com.proyecto.repositorio;

import com.proyecto.entidad.UsuarioBean;

public interface UsuarioRepositorio  {
	public UsuarioBean  ValidarUsuario(UsuarioBean bean) throws Exception;
	public UsuarioBean  ValidarUsuarioExiste(String correo) throws Exception;
}

package com.proyecto.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.proyecto.repositorio.UsuarioRepositorio;
import com.proyecto.entidad.UsuarioBean;

@Service
public class UsuarioServicioImpl implements UsuarioServicio{
 @Autowired
 private UsuarioRepositorio service;

@Override
public UsuarioBean ActualizaUsuario(UsuarioBean obj) throws Exception {
	// TODO Auto-generated method stub
	return null ;
}

@Override
public UsuarioBean InsertarUsuario(UsuarioBean obj) throws Exception {
	// TODO Auto-generated method stub
	return null;
}

@Override
public UsuarioBean ValidarUsuario(UsuarioBean bean) throws Exception {
	return service.ValidarUsuario(bean);
}

@Override
public UsuarioBean ValidarUsuarioExiste(String correo) throws Exception {
	// TODO Auto-generated method stub
	return service.ValidarUsuarioExiste(correo);
}




}

package com.proyecto.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.proyecto.entidad.EnlaceBean;
import com.proyecto.repositorio.EnlaceRepositorio;

public class EnlaceServiceImpl implements EnlaceService{

	@Autowired
	private EnlaceRepositorio service;

	@Override
	public List<EnlaceBean> listaEnlace(int IdUsuario) {
	return service.listaEnlace(IdUsuario);
	}
	
}

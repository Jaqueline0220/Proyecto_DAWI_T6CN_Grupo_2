package com.proyecto.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entidad.EnlaceBean;
import com.proyecto.repositorio.EnlaceRepositorio;
@Service
public class EnlaceServiceImpl implements EnlaceService{

	@Autowired
	private EnlaceRepositorio service;

	@Override
	public List<EnlaceBean> listaEnlace(int IdUsuario) {
	return service.listaEnlace(IdUsuario);
	}
	
}

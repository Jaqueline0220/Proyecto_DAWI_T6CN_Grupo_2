package com.proyecto.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.proyecto.repositorio.TriajeRepositorio;
import com.proyecto.entidad.TriajeBean;

@Service
public class TriajeServicioImpl implements TriajeServicio{
 @Autowired
 private TriajeRepositorio service;

@Override
public int insertarTriaje(TriajeBean obj) throws Exception {
return service.insertarTriaje(obj);
}





}

package com.proyecto.repositorio;

import java.util.List;
import com.proyecto.entidad.EnlaceBean;

public interface EnlaceRepositorio {
	public abstract List<EnlaceBean> listaEnlace(int IdUsuario);
}

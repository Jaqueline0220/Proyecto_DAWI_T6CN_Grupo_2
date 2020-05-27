package com.proyecto.servicio;
import java.util.List;
import com.proyecto.entidad.EnlaceBean;

public interface EnlaceService {
	public abstract List<EnlaceBean> listaEnlace(int IdUsuario);
}

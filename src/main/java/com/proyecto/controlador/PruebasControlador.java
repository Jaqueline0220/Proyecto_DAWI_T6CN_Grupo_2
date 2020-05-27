package com.proyecto.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entidad.EnlaceBean;
import com.proyecto.servicio.EnlaceService;

@Controller
public class PruebasControlador {

	@Autowired
	private EnlaceService enlace;
	
	
	@RequestMapping("/verProveedor")
	public String ver() {
		return "registraProveedor";
	}
	

	@RequestMapping("/cargaCategoria")
	@ResponseBody
	public List<EnlaceBean> lista() {
		return enlace.listaEnlace(2);
	}
	

	


}

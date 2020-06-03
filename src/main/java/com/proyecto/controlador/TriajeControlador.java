package com.proyecto.controlador;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.proyecto.entidad.TriajeBean;
import com.proyecto.servicio.TriajeServicio;
@Controller
public class TriajeControlador {
	@Autowired
	private TriajeServicio triajeService;

	

	@RequestMapping("/verregistroTriaje")
	public String ver() {
		return "registroTriaje";
	}

	@RequestMapping(value="/registroTriaje",method = RequestMethod.POST )
	public String metRegistra
	(TriajeBean obj, HttpSession session, HttpServletRequest request, HttpServletResponse response, Model m) throws Exception {
		
		int s = triajeService.insertarTriaje(obj);
		if (s>0) {
			request.setAttribute("MENSAJES", "Registro correcto");	
		}else {
			request.setAttribute("MENSAJES", "Registro incorrecto");
		}
		return "registroTriaje";
	}

}

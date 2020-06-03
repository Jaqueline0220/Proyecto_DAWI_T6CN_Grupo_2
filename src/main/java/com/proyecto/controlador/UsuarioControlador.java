package com.proyecto.controlador;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proyecto.entidad.EnlaceBean;
import com.proyecto.entidad.UsuarioBean;
import com.proyecto.servicio.EnlaceService;
import com.proyecto.servicio.UsuarioServicio;
@Controller
public class UsuarioControlador {
	@Autowired
	private UsuarioServicio userService;
	@Autowired
	private EnlaceService enlaceService;
	

	@RequestMapping("/verregistroUsuario")
	public String ver() {
		return "registroUsuario";
	}

	@RequestMapping(value="/registroUsuario",method = RequestMethod.POST )
	public String metRegistra(UsuarioBean obj, HttpSession session, HttpServletRequest request, HttpServletResponse response, Model m) throws Exception {
		UsuarioBean isExiste = userService.ValidarUsuarioExiste(obj.getCorreo());
		
		if(isExiste != null) {		
			m.addAttribute("MENSAJES", "email ya esta registrado");
			
			
		}else {
		int s = userService.insertarUsuario(obj);
		if (s>0) {
			request.setAttribute("MENSAJE", "Registro correcto");
			UsuarioBean aux = userService.ValidarUsuario(obj);
			  if(aux == null) {	request.setAttribute("MENSAJE", "Error");	}	
			
			session=request.getSession();
			session.setAttribute("objUsuario", aux);	
			System.out.println("aux "+ aux);
			//se obtiene los menus del usuario logeado y se guarda en la memoria sesion
			List<EnlaceBean> menus = enlaceService.listaEnlace(aux.getIdUsuario());
			session.setAttribute("objMenus", menus);

			return "Index";
			
		}
		else
			request.setAttribute("MENSAJE", "Registro erroneo");
		}
		return "registroUsuario";
	}

}

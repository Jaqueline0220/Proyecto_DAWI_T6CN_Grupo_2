package com.proyecto.controlador;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.proyecto.entidad.UsuarioBean;
import com.proyecto.servicio.UsuarioServicio;

@Controller
public class LogInControlador {
	@Autowired
	private UsuarioServicio userService;



	@RequestMapping(value="/ProcesarLogin", method = RequestMethod.POST)
	public String regLogin(UsuarioBean bean, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
		UsuarioBean aux = userService.ValidarUsuario(bean);

			if(aux == null) {	
			
				session.setAttribute("MENSAJE", "Usuario Erroneo");
			
			}else {
				session=request.getSession();
				session.setAttribute("objUsuario", aux);
			
				return "Index";
			}
		
		
		return "login";
	}

	


}

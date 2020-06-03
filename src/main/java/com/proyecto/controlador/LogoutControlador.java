package com.proyecto.controlador;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogoutControlador {
	@RequestMapping("/logout")
	public String ver() {
		return "login";
	}
	@RequestMapping(value="/logout", method = RequestMethod.POST )
	public String regLogin(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{	
		//Se obtiene la session
		session = request.getSession();
		
		//Se destruye la sesión
		session.invalidate();
		
		//elimina los elementos del cache del browser
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Expires", "0");
		response.setHeader("Pragma", "no-cache");

		//se envia un mensaje al login.jsp
		String mensaje = "El usuario salió de sesión";
		request.setAttribute("mensaje", mensaje);
		return "login";
	}
	

}

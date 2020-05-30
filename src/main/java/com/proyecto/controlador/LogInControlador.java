package com.proyecto.controlador;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.proyecto.entidad.UsuarioBean;
import com.proyecto.servicio.UsuarioServicio;

@Controller
public class LogInControlador {
	@Autowired
	private UsuarioServicio userService;
	
	@RequestMapping("/verlogin")
	public String ver() {
		return "login";
	}


	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String regLogin(UsuarioBean bean, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{	
	boolean emailCorrecto;
	boolean contraCorrecto;
	
	  if(bean.getPassword()=="" && bean.getCorreo()==""){
		  request.setAttribute("MENSAJES", "Ingrese Email y Contraseña");
	  }else 
	  if(bean.getPassword()=="") {
		 request.setAttribute("MENSAJES", "Ingrese Contraseña");
	  }else
	  if (bean.getCorreo()=="") {
		  request.setAttribute("MENSAJES", "Ingrese Email");
		 
      }else {	 
    	  
    	    emailCorrecto=bean.getCorreo().matches("^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$");
    	    contraCorrecto=bean.getPassword().matches("[a-z]{3,10}");
    	    
    	    if(!emailCorrecto) {
    	    	request.setAttribute("MENSAJES", "Formato inadecuado de email");
    	    
    	    }else
    	    if(!contraCorrecto) {
    	    	request.setAttribute("MENSAJES", "Formato inadecuado de contraseña");
    	    
    	    }else
    	    if(contraCorrecto && emailCorrecto) {
    	    	UsuarioBean isExiste = null;
    	    	isExiste = userService.ValidarUsuarioExiste(bean.getCorreo());
    	    	System.out.println(isExiste);
    	    	if(isExiste != null) {
    	    	  UsuarioBean aux = userService.ValidarUsuario(bean);
    			  if(aux == null) {	
    				request.setAttribute("MENSAJES", "Contraseña incorrecta");			
    			  }else {
    				session=request.getSession();
    				session.setAttribute("objUsuario", aux);			
    				return "Index";
    			   }	
    	        }else {
    	        	request.setAttribute("MENSAJES", "Usuario no encontrado");	
    	        }
    	    }
	   }
	return "login";
	}
	


}

package com.proyecto.repositorio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.proyecto.entidad.TriajeBean;
import com.proyecto.entidad.UsuarioBean;
@Repository
public class TriajeMysqlRepositorio implements TriajeRepositorio{

    @Autowired
	JdbcTemplate jdbcTemplate;
    
	
	@Override
	public int insertarTriaje(TriajeBean obj) throws Exception {
		String sql = "call usp_insertarTriaje(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,
				new Object[]{ obj.getNombres(),
						      obj.getApellidos(), 
						      obj.getNacionalidad(),
						      obj.getDepartamento(),
						      obj.getTipoDocumento(),
						      obj.getNumeroDocumento(),						    
						      obj.getRespuesta1(),
						      obj.getRespuesta2(),
						      obj.getRespuesta3(),
						      obj.getRespuesta4(),
						      obj.getRespuesta5(),
						     // obj.getRespuesta6(),
						    				     
						      obj.getDireccion(),
						      obj.getLat(),
						      obj.getLog(),
						     
						      });     
		
	}
	class TriajeMapper implements RowMapper<TriajeBean> {
		  public TriajeBean mapRow(ResultSet rs, int arg1) throws SQLException {
			  TriajeBean user = new TriajeBean();
		    user.setNombres(rs.getString("nombres"));
		    user.setApellidos(rs.getString("apellidos"));	
		    user.setTipoDocumento(rs.getString("tipoDocumento"));
		    user.setNumeroDocumento(rs.getString("numeroDocumento"));
		    
		    return user;
		  }
	}
	

}

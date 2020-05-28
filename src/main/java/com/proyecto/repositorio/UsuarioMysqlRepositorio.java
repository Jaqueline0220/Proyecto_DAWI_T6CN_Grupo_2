package com.proyecto.repositorio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.proyecto.entidad.UsuarioBean;
@Repository
public class UsuarioMysqlRepositorio implements UsuarioRepositorio{

    @Autowired
	JdbcTemplate jdbcTemplate;
    
	@Override
	public UsuarioBean ValidarUsuario(UsuarioBean bean) throws Exception {
		String sql = "select * from usuario where correo='" + bean.getCorreo() + "' and password='" + bean.getPassword()
	    + "'";
	    List<UsuarioBean> users = jdbcTemplate.query(sql, new UsuarioMapper());
	   
	    return users.size() > 0 ? users.get(0) : null;
	    
	}
	class UsuarioMapper implements RowMapper<UsuarioBean> {
		  public UsuarioBean mapRow(ResultSet rs, int arg1) throws SQLException {
			  UsuarioBean user = new UsuarioBean();
			user.setIdUsuario(rs.getInt("idusuario"));
		    user.setCorreo(rs.getString("correo"));
		    user.setPassword(rs.getString("password"));
		    user.setNombres(rs.getString("nombres"));
		    user.setApellidos(rs.getString("apellidos"));	
		    user.setTipoDocumento(rs.getString("tipoDocumento"));
		    user.setNumeroDocumento(rs.getString("numeroDocumento"));
		    System.out.println("dao datos--------------------->"+user.getApellidos());
		    return user;
		  }
	}

}

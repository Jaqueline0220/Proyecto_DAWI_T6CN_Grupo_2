package com.proyecto.repositorio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.proyecto.entidad.EnlaceBean;

public class EnlaceMysqlRepositorio implements EnlaceRepositorio {

		@Autowired
		private JdbcTemplate jdbcTemplate;
		
		@Override
		public List<EnlaceBean> listaEnlace(int IdUsuario) {
			List<EnlaceBean> empresas = jdbcTemplate.query(
				    "SELECT DISTINCT	r.idEnlace,	r.descripcion,	r.ruta " + 
				    "	FROM ENLACE r, ROL_ENLACE p, ROL t,USUARIO_ROL q" + 
				    "    WHERE r.idEnlace = p.idEnlace AND	p.idRol = t.idRol AND" + 
				    "	 t.idRol = q.idRol  AND	q.idUsuario =?  ORDER BY 2",
				    new Object[]{IdUsuario},
				    new RowMapper<EnlaceBean>() {
				    public EnlaceBean mapRow(ResultSet result, int rowNum) throws SQLException {
				    	EnlaceBean empresa = new EnlaceBean();
				        empresa.setIdEnlace( result.getInt("id_empresa") );
				        empresa.setDescripcion( result.getString("descripcion") );
				        empresa.setRuta( result.getString("ruta") );
				        return empresa;
				      
				    }
				});
           return empresas;
           
          
		}
		
		
}

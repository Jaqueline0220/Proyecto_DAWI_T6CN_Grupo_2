package com.proyecto.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import com.proyecto.entidad.UsuarioBean;

public interface UsuarioRepositorio extends JpaRepository<UsuarioBean, Integer> {

}

package com.companhia.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.companhia.entities.Usuario;
@Repository
@Component
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

}

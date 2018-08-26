package com.companhia.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.companhia.entities.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {

}

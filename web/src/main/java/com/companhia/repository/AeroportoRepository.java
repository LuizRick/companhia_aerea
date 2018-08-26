package com.companhia.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.companhia.entities.Aeroporto;

public interface AeroportoRepository extends JpaRepository<Aeroporto, Long> {

}

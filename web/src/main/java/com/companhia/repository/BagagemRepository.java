package com.companhia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.companhia.entities.Bagagem;

@Repository
public interface BagagemRepository extends JpaRepository<Bagagem, Long> {

}

package com.companhia.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class Voo extends EntidadeDominio {

	
	private String nomeCompanhia;
	
	@OneToOne(fetch=FetchType.LAZY)
	@MapsId
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Endereco endereco;
	
	@OneToMany
	private List<Telefone> telefones;
	
	private String cnpjCompanhia;
	
	private String email;
	
	@OneToOne(fetch=FetchType.LAZY)
	@MapsId
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Aeroporto origem;
	
	
	@OneToOne(fetch=FetchType.LAZY)
	@MapsId
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Aeroporto destino;
	
	
}

package com.companhia.entities;

import javax.persistence.Entity;

@Entity
public class Telefone extends EntidadeDominio {
	private String numero;

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}
}

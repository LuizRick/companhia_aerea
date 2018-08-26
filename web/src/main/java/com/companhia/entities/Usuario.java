package com.companhia.entities;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

import com.companhia.entities.enums.TipoUsuario;

@Entity
@Inheritance(strategy=InheritanceType.JOINED)
public class Usuario extends EntidadeDominio {
	
	private String email;
	private String senha;
	
	@Enumerated(EnumType.STRING)
	private TipoUsuario tipo;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}

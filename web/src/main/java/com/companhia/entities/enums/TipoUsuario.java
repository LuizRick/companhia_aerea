package com.companhia.entities.enums;

public enum TipoUsuario {

	ADMIN("admin"),
	OPERADOR("operador");
	
	private String TipoUsuario;
	
	private TipoUsuario(String tipo) {
		// TODO Auto-generated constructor stub
		this.TipoUsuario = tipo;
	}
	
	public String getTipo() {
		return this.TipoUsuario;
	}
}

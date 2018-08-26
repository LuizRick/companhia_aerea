package com.companhia.rns;

import org.springframework.stereotype.Component;

import com.companhia.entities.EntidadeDominio;

@Component
public interface IStrategy {
	public String processar(EntidadeDominio entidade);
}

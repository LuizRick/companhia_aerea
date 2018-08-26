package com.companhia.command;

import org.springframework.stereotype.Component;

import com.companhia.entities.EntidadeDominio;
import com.companhia.web.facade.Resultado;

@Component
public interface ICommand {
	public Resultado execute(EntidadeDominio entidade);
}
package com.companhia.command;

import org.springframework.stereotype.Component;

import com.companhia.entities.EntidadeDominio;
import com.companhia.web.facade.Resultado;

@Component
public class DeletarCommand extends AbstractCommand{

	@Override
	public Resultado execute(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		return fachada.excluir(entidade);
	}
	
	
}

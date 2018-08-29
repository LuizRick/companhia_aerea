package com.companhia.dao;

import com.companhia.entities.EntidadeDominio;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public interface IDAO {
	public void salvar(EntidadeDominio entidade);
	public void alterar(EntidadeDominio entidade);
	public List<EntidadeDominio> consultar(EntidadeDominio entidade);
	public void deletar(EntidadeDominio entidade);
}

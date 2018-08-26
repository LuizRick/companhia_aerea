package com.companhia.web.facade;
import org.springframework.stereotype.Component;

import com.companhia.entities.EntidadeDominio;
import com.companhia.web.facade.Resultado;

@Component
public interface IFacade {
	public Resultado salvar(EntidadeDominio entidade);
	public Resultado alterar(EntidadeDominio entidade);
	public Resultado excluir(EntidadeDominio entidade);
	public Resultado consultar(EntidadeDominio entidade);
	public Resultado visualizar(EntidadeDominio entidade);
}

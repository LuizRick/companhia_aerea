package com.companhia.rns.bagagem;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.companhia.dao.ClienteDAO;
import com.companhia.entities.Bagagem;
import com.companhia.entities.Cliente;
import com.companhia.entities.EntidadeDominio;
import com.companhia.rns.IStrategy;

@Component
public class ValidarClienteAtivo implements IStrategy {

	@Override
	public String processar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		Bagagem bagagem = (Bagagem) entidade;

		if (bagagem.getCliente().getId() <= 0 || bagagem.getCliente().isAtivo() == false)
			return "cliente invalido";

		return null;
	}

}

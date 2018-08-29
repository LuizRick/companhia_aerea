package com.companhia.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.companhia.entities.EntidadeDominio;
import com.companhia.repository.ClienteRepository;

@Component
public class ClienteDAO extends AbstractDAO {

	@Autowired
	ClienteRepository repository;
	
	@Override
	public void salvar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		repository.save(noCast(entidade));

	}

	@Override
	public void alterar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		repository.save(noCast(entidade));
	}

	@Override
	public List<EntidadeDominio> consultar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		return noCast(repository.findAll());
	}

	@Override
	public void deletar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		repository.delete(noCast(entidade));
	}

}

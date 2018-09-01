package com.companhia.dao;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.companhia.entities.Cliente;
import com.companhia.entities.EntidadeDominio;
import com.companhia.helpers.StringHelper;
import com.companhia.repository.ClienteRepository;
import java.util.function.Predicate;

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
		Cliente cliente = (Cliente) entidade;
		List<Cliente> clientes = repository.findAll();
		List<Predicate<Cliente>> allPredicates = new ArrayList<>();
		if(!StringHelper.isNullOrEmpty(cliente.getNome()))
			allPredicates.add(c -> c.getNome().contains(cliente.getNome()));
		if(!StringHelper.isNullOrEmpty(cliente.getEmail()))
			allPredicates.add( c -> c.getEmail().contains(cliente.getEmail()));
		if(!StringHelper.isNullOrEmpty(cliente.getCpf()))
			allPredicates.add(c -> c.getCpf().contains(cliente.getCpf()));
		if(!StringHelper.isNullOrEmpty(cliente.getRg()))
			allPredicates.add(c -> c.getRg().contains(cliente.getRg()));
		
		Predicate<Cliente> compositePredicate = allPredicates.stream().reduce( c -> true, Predicate::and);
		clientes = clientes.stream().filter(compositePredicate).collect(Collectors.toList());
		return noCast(clientes);
		
	}

	@Override
	public void deletar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		repository.delete(noCast(entidade));
	}

}

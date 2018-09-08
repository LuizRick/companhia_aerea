package com.companhia.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.companhia.entities.Bagagem;
import com.companhia.entities.EntidadeDominio;
import com.companhia.repository.BagagemRepository;

@Component
public class BagagemDAO extends AbstractDAO {

	@Autowired
	private BagagemRepository repository;
	
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
		Bagagem bagagem = (Bagagem) entidade;
		List<Bagagem> bagagems = repository.findAll();
		List<Predicate<Bagagem>> allPredicates = new ArrayList<>();
		if(bagagem.getId() > 0)
			allPredicates.add(b -> b.getId() == bagagem.getId());
		Predicate<Bagagem> compisitePradicate = allPredicates.stream().reduce(b -> true, Predicate::and);
		bagagems = bagagems.stream().filter(compisitePradicate).collect(Collectors.toList());
		return noCast(bagagems);
	}

	@Override
	public void deletar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		repository.delete(noCast(entidade));
	}

}

package com.companhia.web.facade;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.companhia.dao.ClienteDAO;
import com.companhia.dao.IDAO;
import com.companhia.entities.Aeroporto;
import com.companhia.entities.Cliente;
import com.companhia.entities.EntidadeDominio;
import com.companhia.entities.Usuario;
import com.companhia.rns.IStrategy;
import com.companhia.repository.*;

@Component
public class Facade implements IFacade {
	private Resultado resultado;

	private Map<String, Map<String, List<IStrategy>>> rns;
	private Map<String, IDAO> repositories;

	@Autowired private UsuarioRepository usuarioRepo;
	@Autowired private AeroportoRepository aeroportoRepo;
	@Autowired private ClienteDAO clienteDAO;
	
	@PostConstruct
	public void init() {
		repositories = new HashMap<>();
		rns = new HashMap<>();
		//repositories.put(Usuario.class.getName(), usuarioRepo);
		//repositories.put(Aeroporto.class.getName(),aeroportoRepo);
		repositories.put(Cliente.class.getName(), clienteDAO);
	}

	@Override
	public Resultado salvar(EntidadeDominio entidade) {
		resultado = new Resultado();
		String nmClass = entidade.getClass().getName();
		String msg = executaRegras(entidade, "SALVAR");
		if (msg == null) {
			try {
				repositories.get(nmClass).salvar(entidade);
			}catch(Exception ex) {
				ex.printStackTrace();
				resultado.setMsg("Não foi possivel salvar os dados");
			}
		} else {
			resultado.setMsg(msg);
			List<EntidadeDominio> entidades = new ArrayList<>();
			entidades.add(entidade);
			resultado.setEntidades(entidades);
		}
		return resultado;
	}

	@Override
	public Resultado alterar(EntidadeDominio entidade) {
		resultado = new Resultado();
		String nmClass = entidade.getClass().getName();
		String msg = executaRegras(entidade, "ALTERAR");
		if (msg == null) {
			try {
				repositories.get(nmClass).alterar(entidade);
			}catch(Exception ex) {
				ex.printStackTrace();
				resultado.setMsg("Não foi possivel salvar os dados");
			}
		} else {
			resultado.setMsg(msg);
		}
		return resultado;
	}

	@Override
	public Resultado excluir(EntidadeDominio entidade) {
		resultado = new Resultado();
		String nmClass = entidade.getClass().getName();
		String msg = executaRegras(entidade, "EXCLUIR");
		if (msg == null) {
			try {
				repositories.get(nmClass).deletar(entidade);
			}catch(Exception ex) {
				ex.printStackTrace();
				resultado.setMsg("Não foi possivel salvar os dados");
			}
		} else {
			resultado.setMsg(msg);
		}
		return resultado;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Resultado consultar(EntidadeDominio entidade) {
		resultado = new Resultado();
		String nmClass = entidade.getClass().getName();
		String msg = executaRegras(entidade, "CONSULTAR");
		if (msg == null) {
			try {
				resultado.setEntidades(repositories.get(nmClass).consultar(entidade));
			}catch(Exception ex) {
				ex.printStackTrace();
				resultado.setMsg("Não foi possivel salvar os dados");
			}
		} else {
			resultado.setMsg(msg);
		}
		return resultado;
	}

	@Override
	public Resultado visualizar(EntidadeDominio entidade) {
		resultado = new Resultado();
		resultado.setEntidades(new ArrayList<EntidadeDominio>(1));
		resultado.getEntidades().add(entidade);
		return resultado;
	}

	private String executaRegras(EntidadeDominio entidade, String operacao) {
		String nmClass = entidade.getClass().getName();
		StringBuilder msg = new StringBuilder();
		Map<String, List<IStrategy>> regrasOperacao = rns.get(nmClass);
		if (regrasOperacao != null) {
			List<IStrategy> regras = regrasOperacao.get(operacao);
			if (regras != null) {
				for (IStrategy s : regras) {
					String m = s.processar(entidade);
					if (m != null) {
						msg.append(m);
						msg.append("\n");
					}
				}
			}
		}

		if (msg.length() > 0)
			return msg.toString();
		else
			return null;
	}

	
}

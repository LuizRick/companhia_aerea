package com.companhia.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.jca.cci.object.MappingCommAreaOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.companhia.entities.Bagagem;
import com.companhia.entities.Cliente;
import com.companhia.entities.EntidadeDominio;
import com.companhia.web.facade.Resultado;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;

@Controller
@RequestMapping("/bagagem")
public class BagagemController extends BaseController {

	
	@GetMapping("/cadastro")
	public String cadastro() {
		return "/bagagem/cadastro";
	}
	
	
	@PostConstruct
	public void init() {
		commands = new HashMap<>();
		commands.put("SALVAR", salvarCmd);
		commands.put("ALTERAR", alterarCmd);
		commands.put("CONSULTAR", consultarCmd);
		commands.put("EXCLUIR", deletarCmd);
		commands.put("VISUALIZAR", visualizarCmd);
	}
	
	
	@PostMapping("/salvar")
	@ResponseBody
	public String salvar(String action, String bagagem) throws JsonParseException, JsonMappingException, IOException {
		Bagagem entidade  = mapper.readValue(bagagem, Bagagem.class);
		Resultado resultado = commands.get("CONSULTAR").execute(entidade.getCliente());
		if(resultado.getEntidades().size() > 0)
			entidade.setCliente((Cliente)resultado.getEntidades().get(0));
		return mapper.writeValueAsString(commands.get(action).execute(entidade));
	}
}

package com.companhia.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.PostConstruct;

import org.apache.logging.log4j.util.PerformanceSensitive;
import org.springframework.jca.cci.object.MappingCommAreaOperation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@PostConstruct
	public void init() {
		commands = new HashMap<>();
		commands.put("SALVAR", salvarCmd);
		commands.put("ALTERAR", alterarCmd);
		commands.put("CONSULTAR", consultarCmd);
		commands.put("EXCLUIR", deletarCmd);
		commands.put("VISUALIZAR", visualizarCmd);
	}
	
	@GetMapping("/cadastro")
	public String cadastro() {
		return "/bagagem/cadastro";
	}
	
	
	@GetMapping("/consultar")
	public String consultar() {
		return "/bagagem/consultar";
	}
	
	@RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
	public String editar(@PathVariable Long id, Model model) {
		Bagagem bagagem = new Bagagem();
		bagagem.setId(id);
		Resultado resultado = commands.get("CONSULTAR").execute(bagagem);
		model.addAttribute("resultado", resultado);
		if(resultado.getMsg() == null && resultado.getEntidades().size() > 0)
			model.addAttribute("bagagem", (Bagagem) resultado.getEntidades().get(0));
		return "/bagagem/editar";
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
	
	@PostMapping("/editar")
	@ResponseBody
	public String editar(String action, String bagagem) throws JsonParseException, JsonMappingException, IOException {
		Bagagem entidade  = mapper.readValue(bagagem, Bagagem.class);
		Resultado resultado = commands.get("CONSULTAR").execute(entidade.getCliente());
		if(resultado.getEntidades().size() > 0)
			entidade.setCliente((Cliente)resultado.getEntidades().get(0));
		return mapper.writeValueAsString(commands.get(action).execute(entidade));
	}
	
	
	@PostMapping("/buscar")
	@ResponseBody
	public String buscar(String action, String bagagem) throws Exception {
		Bagagem entidade= mapper.readValue(bagagem, Bagagem.class);
		return mapper.writeValueAsString(commands.get(action).execute(entidade));
	}
	
	@PostMapping("/deletar")
	@ResponseBody
	public String deletar(String action, String bagagem) throws Exception {
		Bagagem entidade= mapper.readValue(bagagem, Bagagem.class);
		return mapper.writeValueAsString(commands.get(action).execute(entidade));
	}
}

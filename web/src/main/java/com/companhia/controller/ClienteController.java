package com.companhia.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.companhia.command.AbstractCommand;
import com.companhia.command.AlterarCommand;
import com.companhia.command.ConsultarCommand;
import com.companhia.command.DeletarCommand;
import com.companhia.command.SalvarCommand;
import com.companhia.command.VisualizarCommand;
import com.companhia.entities.Cliente;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/clientes")
public class ClienteController {
	
	
	@Autowired private SalvarCommand salvarCmd;
	@Autowired private AlterarCommand alterarCmd;
	@Autowired private ConsultarCommand consultarCmd;
	@Autowired private DeletarCommand deletarCmd;
	@Autowired private VisualizarCommand visualizarCmd;
	private Map<String, AbstractCommand> commands;
	
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
		return "/clientes/cadastro";
	}
	
	@PostMapping("/processar")
	@ResponseBody
	public String processar(String action, Cliente entidade) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(commands.get(action).execute(entidade));
	}
}

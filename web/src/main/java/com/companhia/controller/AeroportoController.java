package com.companhia.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.companhia.command.AbstractCommand;
import com.companhia.command.AlterarCommand;
import com.companhia.command.ConsultarCommand;
import com.companhia.command.DeletarCommand;
import com.companhia.command.SalvarCommand;
import com.companhia.command.VisualizarCommand;

@Controller
@RequestMapping("/aeroporto")
public class AeroportoController {

	
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
	public String cadastroAeroporto() {
		return "/aeroporto/cadastroAeroporto";
	}
}

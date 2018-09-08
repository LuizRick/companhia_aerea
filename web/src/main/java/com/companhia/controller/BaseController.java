package com.companhia.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.companhia.command.AbstractCommand;
import com.companhia.command.AlterarCommand;
import com.companhia.command.ConsultarCommand;
import com.companhia.command.DeletarCommand;
import com.companhia.command.SalvarCommand;
import com.companhia.command.VisualizarCommand;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class BaseController {
	@Autowired
	protected SalvarCommand salvarCmd;
	@Autowired
	protected AlterarCommand alterarCmd;
	@Autowired
	protected ConsultarCommand consultarCmd;
	@Autowired
	protected DeletarCommand deletarCmd;
	@Autowired
	protected VisualizarCommand visualizarCmd;
	protected Map<String, AbstractCommand> commands;
	@Autowired
	protected ObjectMapper mapper;
}

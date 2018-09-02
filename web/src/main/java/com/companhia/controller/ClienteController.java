package com.companhia.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.companhia.command.AbstractCommand;
import com.companhia.command.AlterarCommand;
import com.companhia.command.ConsultarCommand;
import com.companhia.command.DeletarCommand;
import com.companhia.command.SalvarCommand;
import com.companhia.command.VisualizarCommand;
import com.companhia.entities.Cliente;
import com.companhia.web.facade.Resultado;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/clientes")
public class ClienteController {

	@Autowired
	private SalvarCommand salvarCmd;
	@Autowired
	private AlterarCommand alterarCmd;
	@Autowired
	private ConsultarCommand consultarCmd;
	@Autowired
	private DeletarCommand deletarCmd;
	@Autowired
	private VisualizarCommand visualizarCmd;
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

	@GetMapping("/consultar")
	public String consultar() {
		return "/clientes/consultar";
	}

	@RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
	public String editar(@PathVariable Long id, Model model) {
		Cliente cliente = new Cliente();
		cliente.setId(id);
		Resultado resultado = commands.get("CONSULTAR").execute(cliente);
		model.addAttribute("resultado", resultado);
		if(resultado.getMsg() != null && resultado.getEntidades().size() > 0)
			model.addAttribute("cliente", resultado.getEntidades().get(0));
		return "/clientes/editar";
	}

	@PostMapping("/processar")
	@ResponseBody
	public String processar(@RequestParam("action") String action, @RequestParam("cliente") String entidade)
			throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		Cliente cliente = (Cliente) mapper.readValue(entidade, Cliente.class);
		return mapper.writeValueAsString(commands.get(action).execute(cliente));
	}
}

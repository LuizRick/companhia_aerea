package com.companhia.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/voos")
public class VoosController {

	@GetMapping("/gerenciar")
	public String gerenciar() {
		return "/voos/gerenciamento";
	}
}

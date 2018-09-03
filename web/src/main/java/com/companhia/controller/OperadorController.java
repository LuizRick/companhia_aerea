package com.companhia.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/operador")
public class OperadorController {

	
	@GetMapping("/login")
	public String login() {
		return "/operador/login";
	}
	
	@GetMapping("/criar-conta")
	public String criar_conta() {
		return "/operador/nova_conta";
	}
	
	@GetMapping("/alfandega")
	public String alfandega() {
		return "/operador/alfandega";
	}
}

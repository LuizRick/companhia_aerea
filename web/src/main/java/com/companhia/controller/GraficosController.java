package com.companhia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/graficos")
public class GraficosController {

	@GetMapping("/showcase")
	public String showcase() {
		return "/graficos/showcase";
	}
}

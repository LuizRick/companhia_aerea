package com.companhia.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


@SpringBootApplication
@EntityScan("com.companhia.entities")
@EnableJpaRepositories({"com.companhia.repository"})
@ComponentScan({"com.companhia.web.facade" , "com.companhia.controller" , "com.companhia.repository" , "com.companhia.command" ,
	"com.companhia.dao" , "com.companhia.helpers"})
public class WebApplication {

	
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WebApplication.class);
	}

	
	public static void main(String[] args) {
		SpringApplication.run(WebApplication.class, args);
	}
}

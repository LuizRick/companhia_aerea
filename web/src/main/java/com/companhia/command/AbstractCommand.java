package com.companhia.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Component;

import com.companhia.web.facade.Facade;

@Component
public abstract class AbstractCommand implements ICommand {
	
	@Autowired
	protected Facade fachada;
}

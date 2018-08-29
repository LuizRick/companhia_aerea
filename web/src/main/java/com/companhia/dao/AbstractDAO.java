package com.companhia.dao;

import org.springframework.stereotype.Component;

@Component
public abstract class AbstractDAO implements IDAO{
	@SuppressWarnings({ "unchecked", "unused" })
	protected <T> T noCast(Object entidade) {
		return (T) entidade;
	}
}

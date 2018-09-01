package com.companhia.helpers;

import org.springframework.stereotype.Component;

@Component
public class StringHelper {

	static public boolean isNullOrEmpty(String s) {
		return s == null || s.length() <= 0;
	}
}

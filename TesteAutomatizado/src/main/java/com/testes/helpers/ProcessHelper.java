package com.testes.helpers;

import java.io.IOException;

public class ProcessHelper {
	
	public static void killAllChromeDriveIntances() throws IOException {
		Runtime.getRuntime().exec("taskkill /im chromedriver.exe /f");
	}
}

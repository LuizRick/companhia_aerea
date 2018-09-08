package org.testes.selenium;

import java.io.IOException;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

import com.testes.helpers.ProcessHelper;

public class BagagemTest {

	@Test
	public void deveCadastarCorretamente() throws IOException {
		WebDriver driver = new ChromeDriver();
		driver.navigate().to("http://localhost:8888/bagagem/cadastro");
		driver.findElement(By.id("txt-cpf")).sendKeys("40515297895");
		driver.findElement(By.id("txt-voo")).sendKeys("00041");
		driver.findElement(By.id("txt-altura")).sendKeys("25,33");
		driver.findElement(By.id("txt-largura")).sendKeys("12,33");
		driver.findElement(By.id("txt-comprimento")).sendKeys("15,33");
		driver.findElement(By.id("txt-peso")).sendKeys("1.500");
		WebElement elt =  driver.findElement(By.id("sel-status"));
		Select combo = new Select(elt);
		combo.selectByVisibleText("Ativo");
		driver.findElement(By.id("txt-quantidade")).sendKeys("2");
		driver.findElement(By.id("btnSalvar")).click();
		ProcessHelper.killAllChromeDriveIntances();
	}
}

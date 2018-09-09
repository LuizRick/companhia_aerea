package org.testes.selenium;

import java.io.IOException;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.testes.helpers.DSL;
import com.testes.helpers.ProcessHelper;

public class BagagemTest {

	private WebDriver driver;
	private DSL dsl;

	@Before
	public void inicializa() {
		ChromeOptions options = new ChromeOptions();
		//options.addArguments("--headless");
		driver = new ChromeDriver(options);
		driver.manage().window().maximize();
		driver.navigate().to("http://localhost:8888/bagagem/cadastro");
		dsl = new DSL(driver);
	}

	@After
	public void finaliza() {
		driver.quit();
		try {
			ProcessHelper.killAllChromeDriveIntances();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Test
	public void deveCadastarCorretamente() {
		// TODO usar a dsl no lugar do driver
		driver.findElement(By.id("txt-cpf")).sendKeys("405.152.978-95");
		driver.findElement(By.id("txt-voo")).sendKeys("00041");
		driver.findElement(By.id("txt-altura")).sendKeys("25,33");
		driver.findElement(By.id("txt-largura")).sendKeys("12,33");
		driver.findElement(By.id("txt-comprimento")).sendKeys("15,33");
		driver.findElement(By.id("txt-peso")).sendKeys("1.500");
		WebElement elt = driver.findElement(By.id("sel-status"));
		Select combo = new Select(elt);
		combo.selectByVisibleText("Inativo");
		driver.findElement(By.id("txt-quantidade")).sendKeys("2");
		driver.findElement(By.id("btnSalvar")).click();
		WebDriverWait wait = new WebDriverWait(driver, 5);
		wait.until(ExpectedConditions.alertIsPresent());
		Alert alert = driver.switchTo().alert();
		String msg = alert.getText();
		alert.accept();
		Assert.assertEquals("Bagagem salva com sucesso", msg);
	}
	
	
	
}

package org.testes.selenium;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.testes.helpers.DSL;
import com.testes.helpers.ProcessHelper;

public class BagagemTestConsulta {
	private WebDriver driver;
	private DSL dsl;

	@Before
	public void inicializa() {
		ChromeOptions options = new ChromeOptions();
		//options.addArguments("--headless");
		driver = new ChromeDriver(options);
		driver.manage().window().maximize();
		driver.navigate().to("http://localhost:8888/bagagem/consultar");
		dsl = new DSL(driver);
	}

	@After
	public void finaliza() {
		driver.quit();
	}
	
	@Test
	public void deveRetornarResultado() {
		dsl.clicarBotao("btnConsultar");
		//TODO colocar depois na classe dsl
		WebDriverWait wait = new WebDriverWait(driver, 5);
		wait.until(ExpectedConditions.numberOfElementsToBeMoreThan(By.xpath("//tbody[@id='resultado_pesquisa']/tr"), 0));
		int rowCount = driver.findElement(By.id("resultado_pesquisa")).findElements(By.tagName("tr")).size();
		Assert.assertTrue(rowCount > 0);
	}
	
	
	@Test
	public void naoDeveRetornarResultado() {
		dsl.escrever(By.id("txt-cpf"), "555.666.555-95");
		dsl.clicarBotao("btnConsultar");
		WebDriverWait wait = new WebDriverWait(driver, 10);
		wait.until(ExpectedConditions.alertIsPresent());
		Alert alert = driver.switchTo().alert();
		String msg = alert.getText();
		alert.accept();
		Assert.assertEquals("Nao foram encontrados resultados", msg);
	}
	
	
	@Test
	public void deveDeletarCorretamente() {
		dsl.clicarBotao("btnConsultar");
		WebDriverWait wait = new WebDriverWait(driver, 5);
		wait.until(ExpectedConditions.numberOfElementsToBeMoreThan(By.xpath("//tbody[@id='resultado_pesquisa']/tr"), 0));
		driver.findElements(By.className("deletar")).get(0).click();
		dsl.alertaObterTextoEAceita();
		wait.until(ExpectedConditions.alertIsPresent());
		Alert alert = driver.switchTo().alert();
		String msg = alert.getText();
		alert.accept();
		Assert.assertEquals("Deletado com sucesso", msg);
	}
	
	
	@Test
	public void deveEditarVooCorretamente() {
		dsl.clicarBotao("btnConsultar");
		WebDriverWait wait = new WebDriverWait(driver, 5);
		wait.until(ExpectedConditions.numberOfElementsToBeMoreThan(By.xpath("//tbody[@id='resultado_pesquisa']/tr"), 0));
		driver.findElements(By.className("editar")).get(0).click();
		driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
		dsl.escrever("txt-voo", "000" +  (int) (Math.random() * 100));
		dsl.clicarBotao("btnSalvar");
		wait.until(ExpectedConditions.alertIsPresent());
		String msg = dsl.alertaObterTextoEAceita();
		Assert.assertEquals("Bagagem salva com sucesso", msg);
	}

}

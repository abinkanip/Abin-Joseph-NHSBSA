package pages;

import static org.junit.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import utils.Driver;

import io.cucumber.java.en.Given;

public class PageObjects extends Driver {

	public static void getUrl(String url) {
		driver.get(url);
//		driver.findElement(By.xpath("//*[@id='nhsuk-cookie-banner__link_accept_analytics']")).click();
	}

	public void startNow(final String start)
	{
		 driver.findElement(By.xpath("//*[@value='"+start+"']")).click();
	
	}
	
	public void countryPage(final String pageTitile)
	{
		   String actualTitle = driver.getTitle().replace(" - Check what help you could get to pay for NHS costs - NHSBSA", "");
		   System.out.println("Page title is :" + actualTitle);
		   assertEquals(pageTitile,actualTitle);
	
	}
	public void countrySelection(final String country)
	{
		driver.findElement(By.xpath("//*[contains(text(),'"+country+"')]")).click(); 
	
	}
	public void nextPage(final String nextPage)
	{
        driver.findElement(By.xpath("//*[@value='"+nextPage+"']")).click();
	
	}
	public void dob()
	{
		driver.findElement(By.xpath("//*[@id='dob-day']")).sendKeys("17");
    	driver.findElement(By.xpath("//*[@id='dob-month']")).sendKeys("11");
    	driver.findElement(By.xpath("//*[@id='dob-year']")).sendKeys("2001");
	
	}
	public void resulPage(final String string, String string2)
	{
		String actualTitle = driver.getTitle().replace(" - Check what help you could get to pay for NHS costs - NHSBSA", "");
		System.out.println("Page title is :" + actualTitle);
		driver.findElement(By.xpath("//*[contains(text(),'"+string+"')]")).isDisplayed(); 
		driver.findElement(By.xpath("//*[contains(text(),'"+string2+"')]")).isDisplayed();
	}
	public void resulPage1(final String string)
	{
		String actualTitle = driver.getTitle().replace(" - Check what help you could get to pay for NHS costs - NHSBSA", "");
		System.out.println("Page title is :" + actualTitle);
		driver.findElement(By.xpath("//*[contains(text(),'"+string+"')]")).isDisplayed(); 
	}
	
	public void selectEngland()
	{
		 driver.findElement(By.xpath("//*[contains(text(),'England')]")).click(); 
	
	}
	public void selectScotland()
	{
		 driver.findElement(By.xpath("//*[contains(text(),'Scotland')]")).click(); 
	
	}
	public void selectWales()
	{
		 driver.findElement(By.xpath("//*[contains(text(),'Wales')]")).click(); 
	}
	public void errorMesage1()
	{
		 driver.findElement(By.xpath("//*[contains(text(),'There is a problem')]")).isDisplayed(); 
		 driver.findElement(By.xpath("//*[contains(text(),'Select the country you live in')]")).isDisplayed(); 
	}
	public void invalidDob()
	{
		driver.findElement(By.xpath("//*[@id='dob-day']")).sendKeys("17");
    	driver.findElement(By.xpath("//*[@id='dob-month']")).sendKeys("10");
    	driver.findElement(By.xpath("//*[@id='dob-year']")).sendKeys("234");
	
	}
	public void doberror()
	{
		 driver.findElement(By.xpath("//*[contains(text(),'There is a problem')]")).isDisplayed(); 
		 driver.findElement(By.xpath("//*[contains(text(),'Check the year you were born is correct')]")).isDisplayed(); 
	}
	public void timeouterror()
	{
		 driver.findElement(By.xpath("//*[contains(text(),'need to start again')]")).isDisplayed(); 
		 driver.findElement(By.xpath("//*[contains(text(),'been timed out as you stopped using the service for 30 minutes')]")).isDisplayed(); 
	}
	public void timeout()
	{
		driver.manage().timeouts().implicitlyWait(31, TimeUnit.MINUTES);
	}

}

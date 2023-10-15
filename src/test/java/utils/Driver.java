package utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class Driver {
	public static WebDriver driver= getDriver();
	public static WebDriver getDriver() {
		
//		System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
	    System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir")+ "/src/test/java/utils/chromedriver.exe");
	    driver =new ChromeDriver();
        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
		return driver;
	  }
	public void close() {
		driver.close();
		
	}
}






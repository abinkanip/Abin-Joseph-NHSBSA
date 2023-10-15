package steps;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.*;
import pages.PageObjects;
import utils.Driver;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.Assert.assertEquals;

import java.util.List;

public class Stepdef extends PageObjects{
	
	 @Given("I go to url {string}")
	    public static void iGoToUrl(String url){
		 getUrl(url);
	 }
	
	 @Given("I Click  the {string} button")
		public void i_click_the_button(String string) {
		 startNow(string);

	}


	@Then("I should be on the {string} page")
	public void i_should_be_on_the_page(String string) {
		countryPage(string);
	}

	@When("I Select {string} radio-button")
	public void i_select_radio_button(String string) {
		countrySelection(string); 
	}

	@When("I click the {string} button")
	public void i_click_the_button1(String string) {
		nextPage(string);	   
	}

	   @When("I Enter valid DOB")
	   public void i_enter_valid_dob() {
    	dob();
    }
	   @Then("I should get a result of {string} items and {string} items")
	   public void i_should_get_a_result_of_items_and_items(String string, String string2) {
		   resulPage(string,string2);
	   }
	   @Then("I should get results of {string}")
	   public void i_should_get_results_of(String string) {
		   resulPage1(string);
	   }
	   @When("I Select Engalnd radio-button")
	   public void i_select_engalnd_radio_button() {
		 selectEngland();
	   }

	   @When("I Select Scotland radio-button")
	   public void i_select_scotland_radio_button() {
		   selectScotland();
	   }

	   @When("I Select Wales radio-button")
	   public void i_select_wales_radio_button() {
		 selectWales();
	   }
	   @Then("I should be on the Error page")
	   public void i_should_be_on_the_error_page() {
		   errorMesage1();
	   }
	   @When("I Enter invalid DOB")
	   public void i_enter_invalid_dob() {
		   invalidDob();
	   }
	   @Then("I should be on the doberror page")
	   public void i_should_be_on_the_doberror_page() {
		doberror();
	   }
	   @Then("I should be on the timeouterror page")
	   public void i_should_be_on_the_timeouterror_page() {
		  timeouterror();
	   }
	   @When("the session idle for more than {int} minuntes")
	   public void the_session_idle_for_more_than_minuntes(Integer int1) {
	      timeout();
	   }
	   @Then("I close the browser")
	   public void i_close_the_browser() {
		   driver.close();
	   }

}

package steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class WebSteps {
	@Given("El usuario esta en pagina {string}")
	public void el_usuario_esta_en_pagina(String pagina) {
	    System.out.println("---------El usuario esta en la"+pagina);
	    throw new io.cucumber.java.PendingException();
	}

	@When("El usuario acceda a url {string}")
	public void el_usuario_acceda_a_url_home(String url) {
		System.out.println("---------El usuario esta de camino a"+url);
		throw new io.cucumber.java.PendingException();
	}

	@Then("Se le muestra la informacion de dicha pagina")
	public void se_le_muestra_la_informacion_de_dicha_pagina() {
		System.out.println("---------El usuario esta en Home");
		throw new io.cucumber.java.PendingException();
	}
}

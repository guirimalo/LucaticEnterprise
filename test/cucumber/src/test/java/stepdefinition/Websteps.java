package stepdefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Websteps {

	
	@Given("^El usuario esta en home$")
	public void el_usuario_esta_en_home() {
	    System.out.println("------El usuario esta en home");
	}

	@When("^El usuario acceda a home.html$")
	public void el_usuario_acceda_a_home_html() {
		System.out.println("------El usuario acceda a home");
	}

	@Then("^Se le muestra la informacion de dicha pagina$")
	public void se_le_muestra_la_informacion_de_dicha_pagina() {
		System.out.println("------Se le muestra la informacion de la pagina");
	}
	
	@Given("^El usuario esta en servicios$")
	public void el_usuario_esta_en_servicios() {
		System.out.println("------El usuario esta en servicios");
	}

	@When("^El usuario acceda a service.html$")
	public void el_usuario_acceda_a_service_html() {
		System.out.println("-------El usuario acceda a service");
	}

	@Given("^El usuario esta en contacto$")
	public void el_usuario_esta_en_contacto() {
		System.out.println("-------El usuario esta en contacto");
	}

	@When("^El usuario acceda a contacto.html$")
	public void el_usuario_acceda_a_contacto_html() {
		System.out.println("--------El usuario acceda a contacto");
	}

	@Given("^El usuario esta en equipo$")
	public void el_usuario_esta_en_equipo() {
		System.out.println("--------El usuario esta en equipo");
	}

	@When("^El usuario acceda a equipo.html$")
	public void el_usuario_acceda_a_equipo_html() {
		System.out.println("--------El usuario acceda a equipo");
	}
	//MostrarServicioSNIPPETS
	
	@When("^El usuario accede a service.html$")
	public void el_usuario_accede_a_service_html() {
		System.out.println("--------El usuario accede a service.html");
	}
	@Then("^Se le muestra la informacian de service.html$")
	public void se_le_muestra_la_informacian_de_service_html() {
		System.out.println("--------Se le muestra la informacian de service.html");
	}
	//MostrarContactoSNIPPETS
	
	@When("^El usuario accede a contacto.html$")
	public void el_usuario_accede_a_contacto_html() {
		System.out.println("--------El usuario accede a contacto.html");
	}

	@Then("^Se le muestra la informacian de contacto.html$")
	public void se_le_muestra_la_informacian_de_contacto_html() {
		System.out.println("--------Se le muestra la informacian de contacto.html");
	}
	//MostrarEquipoSNIPPETS
	
	@When("^El usuario accede a equipo.html$")
	public void el_usuario_accede_a_equipo_html() {
		System.out.println("--------El usuario accede a equipo.html");
	}

	@Then("^Se le muestra la informacian de equipo.html$")
	public void se_le_muestra_la_informacian_de_equipo_html() {
		System.out.println("--------Se le muestra la informacian de equipo.html");
	}
	
	//AccederNav
	@Given("^El usuario esta en otro dominio$")
	public void el_usuario_esta_en_otro_dominio() {
		System.out.println("--------El usuario esta en otro dominio");
	}
	//AccederNavMant
	@Given("^La pagina esta en mantenimiento$")
	public void la_pagina_esta_en_mantenimiento() {
		System.out.println("--------La pagina esta en mantenimiento");
	}

	@Then("^Se le muestra que la pagina esta en mantenimiento$")
	public void se_le_muestra_que_la_pagina_esta_en_mantenimiento() {
		System.out.println("--------Se le muestra que la pagina esta en mantenimiento");
	}
}

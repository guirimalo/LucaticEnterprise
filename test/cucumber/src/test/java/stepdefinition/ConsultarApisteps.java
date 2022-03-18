package stepdefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class ConsultarApisteps {
	
	@Given("^El usuario tiene permisos de la API REST$")
	public void el_usuario_tiene_permisos_de_la_api_rest() {
	    System.out.println("------El usuario tiene permisos de la API REST");
	}

	@When("^El usuario pide consulta de los datos de todos los empleados$")
	public void el_usuario_pide_consulta_de_los_datos_de_todos_los_empleados() {
	    System.out.println("------El usuario pide consulta de los datos de todos los empleados");
	}

	@Then("^Se le muestra la informacion json de todos los empleados de la API REST$")
	public void se_le_muestra_la_informacion_json_de_todos_los_empleados_de_la_api_rest() {
	    System.out.println("------Se le muestra la informacion json de todos los empleados de la API REST");
	}

	@When("^El usuario pide consulta de los datos de empleados$")
	public void el_usuario_pide_consulta_de_los_datos_de_empleados() {
	    System.out.println("------El usuario pide consulta de los datos de empleados");
	}

	@Then("^Se le devuelve un mensaje con error para informarle de que esta en mantenimiento$")
	public void se_le_devuelve_un_mensaje_con_error_para_informarle_de_que_esta_en_mantenimiento() {
	    System.out.println("------Se le devuelve un mensaje con error 500 para informarle de que esta en mantenimiento");
	}

	@When("^El usuario pide consulta de los datos de un empleado por Id$")
	public void el_usuario_pide_consulta_de_los_datos_de_un_empleado_por_id() {
	    System.out.println("------El usuario pide consulta de los datos de un empleado por Id");
	}

	@Then("^Se le muestra la informacion json de un empleado por Id de la API REST$")
	public void se_le_muestra_la_informacion_json_de_un_empleado_por_id_de_la_api_rest() {
	    System.out.println("------Se le muestra la informacion json de un empleado por Id de la API REST");
	}

}

Feature: Consultar datos API REST

  Scenario: Mostrar los datos de todos los empleados
    Given: El usuario tiene permisos de la API REST
    When: el usuario pide consulta de los datos de los empleados
    Then: al usuario se le muestra la informacion del json  de empleados de la API REST


  Scenario: Mostrar todos los datos de los empleados API REST en mantenimiento
    Given: El usuario tiene permisos de la API REST
    When: el usuario pide consulta de los empleados
    And: la pagina esta en mantenimiento
    Then: al usuario se le devuelve un mensaje con error(500)para informarle de que esta en mantenimiento
    
    
  Scenario: Comprobar datos empleado 3
		Given: Usuario esta en otra pagina exterior del navegador
		When: el usuario accede a https://lucaticenterprise.herokuapp.com/empleados?id=3
		Then: al usuario se le mostrara los datos de dicho empleado
		
	Scenario: Comprobar datos empleado 1
		Given: Usuario esta en otra pagina exterior del navegador
		When: el usuario accede a https://lucaticenterprise.herokuapp.com/empleados?id=1
		Then: al usuario se le mostrara los datos de dicho empleado
	
	Scenario: Comprobar datos empleado 200
		Given: Usuario esta en otra pagina exterior del navegador
		When: el usuario accede a https://lucaticenterprise.herokuapp.com/empleados?id=200
		Then: al usuario se le mostrara un error del usuario no existe
	
	Scenario: Comprobar datos empleado 0
		Given: Usuario esta en otra pagina exterior del navegador
		When: el usuario accede a https://lucaticenterprise.herokuapp.com/empleados?id=0
		Then: al usuario se le mostrar� un error del usuario no existe
	
	Scenario: Comprobar datos empleado 100
		Given: Usuario esta en otra pagina exterior del navegador
		When: el usuario accede a https://lucaticenterprise.herokuapp.com/empleados?id=100
		Then: al usuario se le mostrara los datos de dicho empleado
  
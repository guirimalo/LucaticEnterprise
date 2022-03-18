Feature: Consultar datos API REST

  Scenario: Mostrar los datos de todos los empleados
    Given: El usuario tiene permisos de la API REST
    When: el usuario pide consulta de los datos de los empleados
    Then: al usuario se le muestra la informaci�n del json  de empleados de la API REST


  Scenario: Mostrar todos los datos de los empleados API REST en mantenimiento
    Given: El usuario tiene permisos de la API REST
    When: el usuario pide consulta de los empleados
    And: la pagina esta en mantenimiento
    Then: al usuario se le devuelve un mensaje con error(500)para informarle de que esta en mantenimiento
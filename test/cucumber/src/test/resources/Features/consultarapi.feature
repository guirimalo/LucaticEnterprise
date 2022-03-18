Feature: Consultar datos de API REST

  Scenario: Mostrar los datos de todos los empleados
    Given El usuario tiene permisos de la API REST
    When El usuario pide consulta de los datos de todos los empleados
    Then Se le muestra la informacion json de todos los empleados de la API REST


  Scenario: Mostrar los datos de los empleados y API REST en mantenimiento
    Given El usuario tiene permisos de la API REST
    When El usuario pide consulta de los datos de empleados
    And La pagina esta en mantenimiento
    Then Se le devuelve un mensaje con error(500) para informarle de que esta en mantenimiento
    
  Scenario: Mostrar los datos de un empleado por Id
    Given El usuario tiene permisos de la API REST
    When El usuario pide consulta de los datos de un empleado por Id
    Then Se le muestra la informacion json de un empleado por Id de la API REST
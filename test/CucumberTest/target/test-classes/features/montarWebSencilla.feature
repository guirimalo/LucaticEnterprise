Feature: Montar web sencilla

  Scenario: Mostrar página home
    Given: El usuario está en <pagina>
    When: el usuario acceda a url /home
    Then: al usuario se le muestra la información dicha página
    | pagina   |
    | home |
    | servicios |


  Scenario: Acceder a la web desde navegador
     	Given: El usuario está en otra página externa
     	When: el usuario pone la <url> en el navegador
     	Then: al usuario se le muestra la página
     	| url   |
      | home |
      | servicios |


  Scenario: Acceder a la web en mantenimiento desde navegador
    Given: El usuario está en  otra página externa
    When: el usuario pone la <url> en el navegador
    And: la página está en mantenimiento
    Then: al usuario se le muestra que la página está en mantenimiento
    | url   |
    | home |
    | servicios |


  Scenario: Mostrar página productos/servicios
    Given: El usuario está en <pagina>
    When: el usuario acceda a url /servicios
    Then: al usuario se le muestra la información dicha página
    | pagina   |
    | home |
    | servicios |
    
    
   Scenario: Mostrar página Contacto
		Given: El usuario está en <pagina>
		When: el usuario acceda a url /contacto
		Then: al usuario se le muestra la información dicha página
		| pagina   |
    | home |
   	| servicios |
		| contacto |
		| equipo|
		
	Scenario: Acceder a la web desde navegador
   	Given: El usuario está en otra página externa
   	When: el usuario pone la <url> en el navegador
   	Then: al usuario se le muestra la página
   	| url   |
    | home |
    | servicios |
		| contacto |
		| equipo|
	
   Scenario: Acceder a la web en mantenimiento desde navegador
   	Given: El usuario está en  otra página externa
   	When: el usuario pone la <url> en el navegador
		And: la página está en mantenimiento
   	Then: al usuario se le muestra que la página está en mantenimiento
   	| url   |
    | home |
    | servicios |
		| contacto |
		| equipo|
   


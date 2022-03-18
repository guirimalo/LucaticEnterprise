Feature: Montar web sencilla

  Scenario: Mostrar pagina home
    Given: El usuario esta en <pagina>
    When: el usuario acceda a url /home
    Then: al usuario se le muestra la informacion dicha pagina
    | pagina   |
    | home |
    | servicios |


  Scenario: Acceder a la web desde navegador
     	Given: El usuario esta en otra pagina externa
     	When: el usuario pone la <url> en el navegador
     	Then: al usuario se le muestra la pagina
     	| url   |
      | home |
      | servicios |


  Scenario: Acceder a la web en mantenimiento desde navegador
    Given: El usuario esta en  otra pagina externa
    When: el usuario pone la <url> en el navegador
    And: la pagina esta en mantenimiento
    Then: al usuario se le muestra que la pagina esta en mantenimiento
    | url   |
    | home |
    | servicios |


  Scenario: Mostrar pagina productos/servicios
    Given: El usuario esta en <pagina>
    When: el usuario acceda a url /servicios
    Then: al usuario se le muestra la informacion dicha pagina
    | pagina   |
    | home |
    | servicios |
    
    
   Scenario: Mostrar pagina Contacto
		Given: El usuario esta en <pagina>
		When: el usuario acceda a url /contacto
		Then: al usuario se le muestra la informacion dicha pagina
		| pagina   |
    | home |
   	| servicios |
		| contacto |
		| equipo|
		
	Scenario: Acceder a la web desde navegador
   	Given: El usuario esta en otra pagina externa
   	When: el usuario pone la <url> en el navegador
   	Then: al usuario se le muestra la pagina
   	| url   |
    | home |
    | servicios |
		| contacto |
		| equipo|
	
   Scenario: Acceder a la web en mantenimiento desde navegador
   	Given: El usuario esta en  otra pagina externa
   	When: el usuario pone la <url> en el navegador
		And: la pagina esta en mantenimiento
   	Then: al usuario se le muestra que la pagina esta en mantenimiento
   	| url   |
    | home |
    | servicios |
		| contacto |
		| equipo|
   


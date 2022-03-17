Feature: Montar web sencilla

  Scenario: Mostrar p�gina home
    Given: El usuario est� en <pagina>
    When: el usuario acceda a url /home
    Then: al usuario se le muestra la informaci�n dicha p�gina
    | pagina   |
    | home |
    | servicios |


  Scenario: Acceder a la web desde navegador
     	Given: El usuario est� en otra p�gina externa
     	When: el usuario pone la <url> en el navegador
     	Then: al usuario se le muestra la p�gina
     	| url   |
      | home |
      | servicios |


  Scenario: Acceder a la web en mantenimiento desde navegador
    Given: El usuario est� en  otra p�gina externa
    When: el usuario pone la <url> en el navegador
    And: la p�gina est� en mantenimiento
    Then: al usuario se le muestra que la p�gina est� en mantenimiento
    | url   |
    | home |
    | servicios |


  Scenario: Mostrar p�gina productos/servicios
    Given: El usuario est� en <pagina>
    When: el usuario acceda a url /servicios
    Then: al usuario se le muestra la informaci�n dicha p�gina
    | pagina   |
    | home |
    | servicios |
    
    
   Scenario: Mostrar p�gina Contacto
		Given: El usuario est� en <pagina>
		When: el usuario acceda a url /contacto
		Then: al usuario se le muestra la informaci�n dicha p�gina
		| pagina   |
    | home |
   	| servicios |
		| contacto |
		| equipo|
		
	Scenario: Acceder a la web desde navegador
   	Given: El usuario est� en otra p�gina externa
   	When: el usuario pone la <url> en el navegador
   	Then: al usuario se le muestra la p�gina
   	| url   |
    | home |
    | servicios |
		| contacto |
		| equipo|
	
   Scenario: Acceder a la web en mantenimiento desde navegador
   	Given: El usuario est� en  otra p�gina externa
   	When: el usuario pone la <url> en el navegador
		And: la p�gina est� en mantenimiento
   	Then: al usuario se le muestra que la p�gina est� en mantenimiento
   	| url   |
    | home |
    | servicios |
		| contacto |
		| equipo|
   


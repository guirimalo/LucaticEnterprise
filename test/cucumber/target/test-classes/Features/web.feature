Feature: Lucatic Enterprise WEB
 
	@MostrarMismaPagina
  Scenario: Mostrar misma pagina
    Given El usuario esta en <pagina>
    When El usuario acceda a <url>
    Then Se le muestra la informacion de dicha pagina
 
    Examples:
      | pagina  	| url 				|
      | home 			|home.html 		|
      | servicios |service.html |
      | contacto 	|contacto.html|
      | equipo 		|equipo.html  |
  @MostrarServicios
  Scenario: Mostrar pagina servicios desde dominio
    Given El usuario esta en <dominio>
    When El usuario accede a service.html
    Then Se le muestra la informacian de service.html
    
    Examples:
    	| dominio		|
    	| home 			|
    	| contacto 	|
			| equipo		|   
			
	@MostrarContacto
  Scenario: Mostrar pagina Contacto
		Given El usuario esta en <dominio>
		When El usuario accede a contacto.html
		Then Se le muestra la informacian de contacto.html
		
		Examples:
    	| dominio		|
    	| home 			|
    	| servicios |
			| equipo		|   
			
	@MostrarEquipo
  Scenario: Mostrar pagina Equipo
		Given El usuario esta en <dominio>
		When El usuario accede a equipo.html
		Then Se le muestra la informacian de equipo.html
		
		Examples:
    	| dominio		|
    	| home 			|
    	| servicios |
			| contacto	|
			
	@AccederNav	
	Scenario: Acceder a la web desde otro dominio
   	Given El usuario esta en otro dominio
   	When El usuario acceda a <url>
   	Then Se le muestra la informacion de dicha pagina
   	
   	Examples:
   	| url				    |
    | home.html			|
    | service.html	|
		| contacto.html	|
		| equipo.html		|
		
	@AccederNavMant	
	Scenario: Acceder a la web en mantenimiento desde otro dominio
   	Given El usuario esta en otro dominio
   	And La pagina esta en mantenimiento
   	When El usuario acceda a <url>
   	Then Se le muestra que la pagina esta en mantenimiento
   	
   	Examples:
   	| url				    |
    | home.html			|
    | service.html	|
		| contacto.html	|
		| equipo.html		|
Feature: Lucatic Enterprise WEB

	@MostrarPagina
  Scenario Outline: Mostrar pagina
    Given El usuario esta en <pagina>
    When El usuario acceda a <url>
    Then Se le muestra la informacion de dicha pagina
    
    Examples:
      | pagina  	| url 				|
      | home 			|home.html 		|
      | servicios |service.html |
      | contacto 	|contacto.html|
      | equipo 		|equipo.html  |


	

load 'agenda/modelo/Persona.rb'
load 'videoclub/modelo/Persona.rb'
load 'agenda/negocio/GestorPersonas.rb'

personaAgenda = Agenda::Modelo::Persona.new
personaVideoclub = Videoclub::Modelo::Persona.new

personaAgenda.edad = 34
personaAgenda.nombre = "pepe"

personaVideoclub.dni = "00000000A"
personaVideoclub.nombre = "Luis"

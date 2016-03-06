
load 'modelo/Persona.rb'
load 'dao/LogDAO.rb'
load 'dao/PersonasDAO.rb'
load 'negocio/GestionPersonasLN.rb'

puts "Inicializando..."
negocio = GestionPersonasLN.new(PersonasDAO.new, LogDAO.new)

negocio.guardarPersona(Persona.new "Pablo" "Sanchez")
negocio.borrarPersonas [3, 4]
persona = negocio.buscarPersona 1

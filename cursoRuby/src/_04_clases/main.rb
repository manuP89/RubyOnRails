#lo primero que hay que hacer es cargar el archivo dnd están las clases. A partir de una ruta relativa                                                                                                            
load 'Persona.rb'

#para construirla se pone el nombre de la clase seguido de '.new' y pasarle todos los atributos
persona = Persona.new("12345678A", "Manu", "Hombre", 26)
persona2 = Persona.new("87654321B", "Pedro", "Hombre", 35)

#Esta linea da error porque no existe el constructor (initialize) por defecto o sin parametros
#persona3 = Persona.new

puts "El numero de personas creado es: #{Persona.getNumeroDePersonas}"

#OJO!! estamos escribiendo "persona", que es el objeto dentro de la clase.
persona.setColorOjos "Azules"
persona2.setColorOjos "Verdes"
puts persona.getColorOjos
puts persona2.getColorOjos

#despues de dar los permisos, es decir, de crear el attr_accessor, el get se podría hacer de la siguiente forma:
puts persona.nombre

#despues de crear el attr_accessor, el set se puede hacer de la siguiente manera:
persona.nombre = "Felix"
puts persona.nombre

persona.colorOjos= "Marrones"
puts persona.colorOjos

#podemos acceder al atributo pero no modificarlo, xq el attr_reader solo da acceso de lectura.
puts persona.dni
#persona.dni = "otrodni"

puts persona

persona.saludar

#persona edad 23
#persona2 edad 45
persona2 = persona
#en esta igualdad lo que estamos haciendo es decir que persona2 apunte al mismo espacio de memoria de persona. 
#persona2 es una referencia, deja de existir el objeto al que apuntaba persona2
persona2.edad = 44
#por eso mismo ahora si imprimieramos por pantalla persona2 y persona, ambas tendrian de edad 44, porque ambas apuntan al mismo espacio de memoria, y a éste le hemos cambiado la edad a 44.





#puedo crear el modulo en cualquier sitio y hacer que todo dependa de el llamándolos así.
#lo unico que hay que tener en cuenta es que hay que cargar el archivo que define el modulo primero.
=begin
module ModeloAgenda
  
end
=end

load 'contacto.rb'
load 'direccion.rb'

#hemos cargado el archivo contacto que es el que tiene el modelo. a partir de ahora habra que utilizar el nombre del modelo junto con las clases...
def mostrar (valor)
  puts valor
  puts "-------------------------------------------------------------"
end

#para llamar a la clase direccion la llamamos a traves tambien del nombre del modulo.
direccion = ModeloAgenda::Direccion.new("Calle", "Linneo", 33, 2, "A")

pepe = ModeloAgenda::Contacto.new("Pepe", "García", 30, direccion)


mostrar pepe

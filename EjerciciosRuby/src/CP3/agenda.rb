
load 'direccion.rb'
load 'contacto.rb'

def mostrar (valor)
  puts valor
  puts "-------------------------------------------------------------"
end

direccion = Direccion.new("Calle", "Linneo", 33, 2, "A")
direccion2 = Direccion.new("Paseo", "Melancólicos", 15, 3, "B")
direccion3 = Direccion.new("Calle", "Linneo", 33, 3)
direccion4 = Direccion.new("Plaza", "de las Descalzas")

pepe = Contacto.new("Pepe", "García", 30, direccion)
juan = Contacto.new("Juan", "Sánchez", 25, direccion2)
manu = Contacto.new("Manu", "Pérez", 26, direccion3)
pedro = Contacto.new("Pedro", "Pérez", 26, direccion4)

mostrar pepe
mostrar juan
mostrar manu
mostrar pedro
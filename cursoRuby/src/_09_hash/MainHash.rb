                                                                                                                                                                                                                            
#Un hash es una coleccion de datos que mantiene una estructura clave => valor
#los hashes son conocidos como arrays asociativos
#los arrays son indexados, los hashes no

#creamos un hash vacio
hash = {}
otroHash = Hash.new

#añadir elementos
hash["clave"] = "valor"
hash["otraClave"] = 3

#recuperar elementos
puts "El valor de la clave es #{hash["clave"]}"

#solo se admite una clave para un valor dado. Si repitieramos una clave se cambiaria el valor
hash["clave"] = "otro valor"
puts hash["clave"]

#podemos inicializar un hash con valores
otroHash = {"clave1" => "valor1", "clave2" => "valor2"}
puts otroHash
puts otroHash["clave1"]

#para poner claves en un hash, ruby recomienda el uso de los simbolos ':simbolo'
hashSimbolos = {:clave1 => "valorSimbolo1"}
puts hashSimbolos[:clave1]
hashSimbolos[:clave2] = "valorSimbolo2"
hashSimbolos[:clave3] = "valorSimbolo3"
puts hashSimbolos[:clave3]

unless hashSimbolos[:clave4]
  puts "El valor no existe"
end

if !hashSimbolos[:clave4]
  puts "El valor sigue sin existir"
end

#los simbolos son inmutables y unicos en todo el programa
#inmutable quiere decir que una vez los atributos hayan sido establecidos, no se pueden cambiar
variable1 = "hola1"
variable2 = "hola1"

if variable1 == variable2
  puts "Tienen el mismo valor"
end

#'equal?' compara posiciones de memoria
if variable1.equal? variable2
  puts "el mismo objeto"
else
  puts "distinto objeto"
end

#convertimos un string a simbolo
hash[variable1.to_sym] = "Otra cosa"
puts hash[:hola1]

if variable1.to_sym.equal? variable2.to_sym
  puts "Son iguales los simbolos"
end

hashEquipos = {}
hashEquipos[:madrid] = ["C.Ronaldo", "Casillas", "Raul"]

hashEquipos[:rayo] = ["Trashorras", "Lass", "Embarba"]

for jugador in hashEquipos[:madrid]
  puts jugador
end

puts "------------"

#podemos mostrar un array con todas las "keys" del hash
puts hashEquipos.keys
puts hashEquipos.keys.inspect

#podemos mostrar un array con todos los "values" del hash
puts hashEquipos.values.inspect

#como recorrer todo el hash
puts "---Equipos de la liga Talentum---"
for equipo in hashEquipos.keys
  puts "- Equipo: #{equipo.capitalize}"
  for jugador in hashEquipos[equipo]
    puts "-- Jugador: #{jugador}"
  end
end


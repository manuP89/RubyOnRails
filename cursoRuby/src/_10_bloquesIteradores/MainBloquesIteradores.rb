
#un bloque es una porcion de codigo encerrada entre llaves {} o entre do..end
#el bloque solo puede aparecer despues de usar un metodo. Dicho metodo deberia estar preparado para usar dicho bloque

3.times {
  puts "hola times"
}

3.times do
  puts "hola times con do..end"
end

#en los bloques tambien podemos poner una variable
#en el caso del metodo times representara cada una de las iteraciones

3.times {
  |var|
  puts "Hola time, vamos por la iteracion #{var}"
}

array = ["Pepe", "pepin", "pepon"]
array.size.times {
  |var|
  puts "Hola time, vamos por la iteracion #{var} y el valor es #{array[var]}"
}

#ejecutamos (3-1) +1
0.upto 3 do
  |var|
  puts "hola upto #{var}"
  puts "hola array #{array[var]}"
end

#mas metodos
puts "----"
array = [1,2,3,4]
array.each {
  |var| #contendra cada uno de los elementos del array
  puts "valor del array #{var}"
}

array.each_with_index {
  |valor, indice|
  puts "El valor del indice #{indice} es #{valor}"
}

#select, va a devolver un valor que coincide con la condicion
resultado = array.select{
  |var|
  var == "pepe"
}

load "../_04_clases/Persona.rb"
arrayPersonas = [Persona.new("12345678A", "Manu", "Hombre", 26), Persona.new("87654321B", "Pedro", "Hombre", 35)]
resultado = arrayPersonas.select {
  |persona|
  persona.nombre == "Manu"
}
puts resultado

puts "---Borrar elemento con condicion---"
arrayPersonas.delete_if{
  |persona|
  persona.nombre == "Manu"
}

puts arrayPersonas

#todos los metodos pueden recibir un bloque como argumento implicito, pudiendo invocar dicho bloque en cualquier momento de nuestro codigo usando la palabra reservada 'yield'
puts "------------------"
def metodo
  puts "Esto es un metodo de ejemplo"
  yield
end

metodo {
  puts "Esto es un bloque de ejemplo"
}

def metodo
  puts "Esto es otro metodo de ejemplo"
  variable = "valor1"
  yield variable
end

metodo {
  |var|
  puts "Esto es otro bloque de ejemplo con el parametro #{var}"
}

def metodo parametro
  puts "Esto es otro metodo MAS de ejemplo"
  yield parametro
end

metodo("Pepe"){
  |var|
  puts "Esto es otro bloque de ejemplo con el parametro #{var}"
}






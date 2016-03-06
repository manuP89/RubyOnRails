                                                                                                                                                                                                                                
#los métodos en ruby se crean mediante la palabra reservada 'def'

#método length. Mide la longitud de una cadena de texto.
long = "Hola".length
puts "La longitud de la cadena 'Hola' es: #{long}"

#método reverse. Se usa igual q el length, pero te devuelve la cadena al revés.
rev = "Manu".reverse
puts "La cadena inversa a 'Manu' es: #{rev}"

#upcase. convierte toda la cadena de texto a mayúsculas
puts "Manu".upcase
#downcase. convierte toda la cadena de texto a minusculas
puts "MANU".downcase
#capitalize. pone la primera letra mayuscula
puts "manu".capitalize

#se pueden encadenar los métodos, de manera que vaya haciendo uno a uno, pero ocupar una única linea.
nombre = "Manu"
puts nombre.downcase.reverse.upcase

#si añadimos el símbolo '!' al final de un método, cambiamos lo que tenga guardado la variable. 
ciudad = "madrid"
ciudad.capitalize!
puts ciudad

#metodo()
#esta linea fallaria debido a q todavia no esta declarado el metodo
def metodo
  puts "Hola método."
end

metodo()    #se puede llamar al metodo con paréntesis o sin ellos

#sobreescribir un método quiere decir que el metodo se llama igual pero la firma es diferente, es decir, tiene un número diferente de parámetros de entrada
#si damos a un metodo el mismo nombre que otro anterior lo eliminamos

def metodo
  puts "Hola metodo 2."
end

metodo()

def saludar(nombre)
  puts "Hola #{nombre}!"
end

#se pueden poner paréntesis o no, a ruby se la suda y se lo traga todo. 
saludar("Manu")
saludar "Manu"

#Los parametros van separados por comas
def saludar(nombre, apellido)
  puts "Hola #{nombre} #{apellido}!"
end

saludar "Manu", "Perez"


#valores de retorno. sin necesidad de poner return ni nada, el método te devuelve por definición la última línea
def devolverSaludo
  "Hola devolverSaludo"
end

valorDeRetorno = devolverSaludo
puts devolverSaludo
puts valorDeRetorno

#se le puede poner la palabra return también, se lo traga todo. Pero por defecto se devuelve la última línea del código
def devolverSaludo
  return "Hola devolverSaludo"
end

puts devolverSaludo

#en ruby podemos dar valores por defecto a los parámetros.
#Por ejemplo, si no le dices lo q va a valer el valor2 el lo sustituye por 1.
#Si le pasas los dos valores, el coge los dos valores que tu le has pasado. Tenemos la neceisdad de mandar un parámetro, pero el segundo es optativo.
def sumar(valor1, valor2=1)
  valor1 + valor2
end

puts sumar 1,2
puts "El resultado es: #{sumar 50,25}"

valor1 = 20
valor2 = 50
puts sumar valor1, valor2
#como solo le paso el valor1, en el valor2 coge el que tiene por defecto.
puts sumar valor1


def suma(val1, val2=0, val3)
  puts "#{val1}, #{val2}, #{val3}"
  val1 + val2 + val3
end

puts suma 2,5,6
puts suma 2,5

#una variable solo tiene alcance dentro de su propio bloque, es decir, en este caso daría error porque el método es un bloque distinto.
variableExterna = 1
def metodo
  #la siguiente linea da error ya que no hay visibilidad de main al metodo
  #puts "La variable externa #{variableExterna}"
  variableInterna = "Pepe"
end

#por lo tanto tampoco podríamos hacer la siguiente, ya que desde el main no hay visibilidad al metodo
#puts variableInterna

#a un método podemos darle un número variable de parámetros.
def metodo(*valores)
  puts valores
  puts "------"
  puts valores[0] #valores en un array
end

metodo "hola", "como estas", "yo bien", "etc..."
metodo

def sumaCompleta(*valores)
  resultado = 0
  for valor in valores
    resultado += valor
  end
  #return resultado
  resultado
end

puts sumaCompleta 1,2,3,8
puts sumaCompleta 99,23
puts sumaCompleta





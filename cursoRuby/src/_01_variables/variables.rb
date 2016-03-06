#esto es un comentario en ruby
=begin
esto seria un comentario
de varias lineas  
=end

#TODO: esto es una tarea. te marca que tienes una tarea pendiente.
#Para ver todas las tareas pendientes a desarrollar...'Window/Show view/Task'

#puts imprime por pantalla incluyendo un salto de linea después de lo que queremos imprimir, mientras que print imprime sobre la misma línea
print [nil, 1, 2]
puts [nil, 1, 2]

puts "Hola mundo!", "Hola"
print "Hola mundo!", "Hola"


#variables
#no empiezan con ninguna palabra reservada (no hace falta definir que tipo de dato va a contener)
# deben empezar por '_' o por una letra
variable1 = 1
puts variable1
variable1 = 2
puts variable1

sVariable = "Variable de texto"
iVariable = 3

puts "El valor de la variable sVariable es: "+sVariable
#no podemos concatenar a una cadena de texto un valor numérico(Fixnum) directamente, hay que utilizar una funcion para convertirlo a string (xxx.to_s)                                              
puts "El valor de la variable iVariable es "+iVariable.to_s
#expandir o interpolar la variable
puts "El valor de la variable sVariable es: #{sVariable} mientras que el de la variable iVariable es #{iVariable}"

#podemos declarar strings con comillas simples, pero escribe tal cual lo que haya dentro de ellas
puts 'El valor de la variable sVariable es: #{sVariable}'

#podemos inicializar la variables a nil(la nada, atreyu)
variable = nil
puts "El valor de la variable variable es: #{variable}"

#por convenciones el nombre de las variables se suelen poner en camel case o en snake case
#camel case --> estoEsUnaVariable
#snake case --> esto_es_una_variable

#Constantes. En ruby se pueden cambiar la referencia, aunque nos daria un warning
#se declaran poniendo la primera letra en mayuscula
#ruby es un lenguaje case sensitive
EstoEsUnaConstante = "Manu"
Constante = "Ramon"
Constantedelamuerte = "Pepe"
#normalmente, por convencion, las constantes van todas en mayuscula y en snake case
CONSTANTE = "Isabel"
CONSTANTE_DE_LA_MUERTE = "Sara"
puts CONSTANTE_DE_LA_MUERTE
puts "La constante es: #{CONSTANTE_DE_LA_MUERTE}"
#CONSTANTE = "Pedro"
#puts CONSTANTE

#tenemos tambien algunas pseudovariables. Son variables predefinidas
#nos da la ruta del archivo
puts __FILE__
#nos da el número de líneas del fichero
puts __LINE__

#Acumulaciones
valor1 = 3
valor1=valor1+5
puts valor1
valor1 += 5
puts valor1
valor1-=3
puts valor1
valor1*=2
puts valor1
valor1/=2
puts valor1

#cosas equivalentes
valor2 = "pepe"
valor2 += " te saludo"
puts valor2

valor3 = nil
#en caso de q no este asignado un valor a la variable, se establece el valor 8
#en caso contrario, es decir, que ya este asignado, no se cambiará el valor
valor3 ||= 8
puts valor3

#en ruby podemos hacer asignaciones multiples
var1 = var2 = var3 = 98
puts var1
puts var2
puts var3

#todas las variables que hemos visto hasta ahora son de tipo local
#Ruby tb soporta variables globales, es decir, son visibles desde cualquier parte de nuestro programa
#se declaran con el simbolo $ delante
$variableGlobal = 50
puts "El valor de la variable global es: #{$variableGlobal}"

#tipos básicos en ruby
tipoFixnum = 3; #numeros enteros
#tambien tenemos el tipo bignum, que tiene mayor rango que fixnum. No hay que preocuparse x las conversiones, lo hace ruby automaticamente.
tipoString = "Literal"
tipoFloat = 3.0 #numeros reales. poniendo un '.' ya se convierte en float.
tipoTrue = true
tipoFalse = false #existe una clase para true y otra para false
tipoNil = nil

puts tipoFixnum.class   #nos dice la clase a la que pertenece
puts tipoFloat.class
puts tipoString.class
puts tipoTrue.class
puts tipoFalse.class
puts tipoNil.class

#conversiones
puts "El número " + 3.to_s  #.to_s convierte a string el objeto que quieras
puts "3".to_i + 5   #.to_i convierte a entero los números que puedas tener en un tipo string
puts "3pepe".to_i + 10    #si el literal empieza x un numero, va a coger ese valor y lo suma
puts "pepe3".to_i + 10    #si no puede convertir el literal a integer, devuelve un 0
puts 3.to_f   #.to_f convierte a float

puts 2 + 3 * 5    #como en matematica, el operador * tiene preferencia sobre el +
puts "#{(2 + 3) * 5}"

#puts 2 / 0   error de division por 0
puts 2.0 / 0  #en los números reales se obtiene infinito





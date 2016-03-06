
puts " Bienvenido a nuestro programa "
puts "-------------------------------"
puts " Introduzca su nombre: "
#se quedara esperando en la linea siguiente hasta que el usuario introduzca algo y le de al enter
#para recuperar datos del teclado, es decir, recoger lo que el usuario escriba
#el valor a recoger va a ser tipo string
#el método para recoger la respuesta del usuario es 'gets'. 

#el metodo strip elimina los espacios en blanco al inicio y al final de la cadena de texto
#el método chomp no elimina los espacios, sino que elimina los saltos de linea al final de la cadena.
nombre = gets.strip
puts "Hola #{nombre}! Nice to meet you"

puts "Por favor, dígame su edad"
edad = gets.strip

puts "Introduzca su provincia o procedencia"
procedencia = gets.strip
puts "Perfecto! Su edad es de #{edad} años y procede de #{procedencia}"

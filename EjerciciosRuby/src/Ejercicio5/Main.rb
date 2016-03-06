load 'negocio/Calculadora.rb'

#Añadir una nueva opcion que permita mostrar todas las operaciones realizadas con anterioridad.
def generarMenu
  puts "¿Qué quieres hacer?"
  puts "\t1. Suma \n\t2. Resta \n\t3. Multiplicar \n\t4. Dividir \n\t5. Mostrar histórico de operaciones \n\t6. Salir"
  print ":>"
end

#Crear un array en el que se guardarán las operaciones conforme se vayan haciendo.E inicializar a nil
memoria = []

#añadir una línea de código en cada caso que guarde la operación con el número de operación que es.(longitud array)
         #array = array << "#{array.lenght+1}. Suma #{num1} y #{num2}. Resultado: #{resultado}"
         #array = array << [array.lenght+1, "Suma", num1, num2, resultado]

=begin
el array debería quedar así.
1. Suma 5 y 6 resultado 11
2. Suma 4 y 8 resultado 12 
[3,Suma,5,7,12] (otra opcion)
=end

begin

  generarMenu
  respuesta = gets.to_i

  case respuesta 
  when 1 then
    print "Primer número:>"
    var1 = gets.strip.to_f
    print "Segundo número:>"
    var2 = gets.strip.to_f
    
    puts "Calculando..."
    sleep(0.5)
    resultado = Calculadora.suma var1,var2
    memoria = memoria << "#{memoria.length+1}. Suma entre #{var1} y #{var2}. Resultado: #{resultado}"
    puts "El resultado de la suma es #{resultado}"
    sleep(1)
  when 2 then
    print "Primer número:>"
    var1 = gets.strip.to_f
    print "Segundo número:>"
    var2 = gets.strip.to_f
    
    puts "Calculando..."
    sleep(0.5)
    resultado = Calculadora.resta var1,var2
    memoria = memoria << "#{memoria.length+1}. Resta entre #{var1} y #{var2}. Resultado: #{resultado}"
    puts "El resultado de la resta es #{resultado}"
    sleep(1)
  when 3 then
    print "Primer número:>"
    var1 = gets.strip.to_f
    print "Segundo número:>"
    var2 = gets.strip.to_f
    
    puts "Calculando..."
    sleep(0.5)
    resultado = Calculadora.multiplicacion var1,var2
    memoria = memoria << "#{memoria.length+1}. Multiplicacion entre #{var1} y #{var2}. Resultado: #{resultado}"
    puts "El resultado de la multiplicación es #{resultado}"
    sleep(1)
  when 4 then
    print "Primer número:>"
    var1 = gets.strip.to_f
    print "Segundo número:>"
    var2 = gets.strip.to_f
    
    puts "Calculando..."
    sleep(0.5)
    resultado = Calculadora.division var1,var2
    memoria = memoria << "#{memoria.length+1}. Division entre #{var1} y #{var2}. Resultado: #{resultado}"
    puts "El resultado de la división es #{resultado}"
    sleep(1)
  #Añadir una nueva opcion que permita mostrar todas las operaciones realizadas con anterioridad.Añadir comprobación para saber que la memoria no está vacía.  
  when 5 then
    if memoria==[] then
      puts "No existen operaciones previas"
    else
      puts "Histórico de operaciones:", memoria
    end
    sleep(1)
  when 6 then
    puts "Saliendo del programa. Gracias por venir"
  else
    puts "Opción incorrecta"
    sleep(1)
  end

end while respuesta != 6   

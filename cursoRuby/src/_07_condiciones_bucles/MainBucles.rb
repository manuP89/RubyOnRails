                                                                                                                                                                                                                                          
valor = 5

#bucle while, como en los otros lenguajes. No se pone then despues de la condición, se puede poner DO.
#el contenido se va a ejecutar tantas veces como se cumpla la condicion.No tienes ninguna garantia de ejecutar el codigo.
while valor < 10 do
  puts "valor es: #{valor}"
  valor +=1
end

#bucle for. La variable i es temporal. Va aumentando la variable paso a paso, 1 a 1
for i in 5..10
  puts "Valor del for :#{i}"
end

#se va a ejecutar minimo una vez, el begin, y dejará de ejecutarse cuando deje de cumplirse el while final.
begin
  puts "El valor de i es mayor de 5, es #{i}"
  i -=1
end while i > 5
#acabalo siempre que no se cumpla la condicion
puts i

#sentencia a la inversa del while. "Mientras no se cumpla la condicion se ejecuta el bucle."
until i == 0
  puts "i no es 0, es #{i}"
  i-=1
end

#los bucles for son anidables. Todos son anidables. Funciona con el mismo mecanismo que en java x ejemplo.
for i in 0..2 do
  for j in 0..2 do
    puts "Fila #{i}, columna #{j}"
  end
end





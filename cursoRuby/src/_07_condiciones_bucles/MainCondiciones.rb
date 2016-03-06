                                                                                                                                                                                                                    
variable1 = 0
#bucles condicionales, se escriben como en todos.
#puedo poner el then o no. sirve más de separador para saber cuando termina la condicion y empieza el codigo a ejecutar.igual que los parentesis, puedo ponerlos o no.
if variable1 == 1 then
  puts "Pues si!"
end

if variable1 != 1
  puts "Pues no!"
end

if variable1 == 2
  puts "Pues no!"
else
  puts "Llego al else"
end

if variable1 == 2 || variable1 == 1
  puts "Pues es 1 o 2"
end

if variable1 >= 0
  puts "Pues va a ser positivo"
end

if variable1 > 0 then
  puts "Mayor que 0"
elsif variable1 < 0 then
  puts "Menor que 0"
else
  puts "Es 0"
end

#ruby permite escribir el bucle if al revés, es decir, diciendole que tiene que hacer antes de ponerle la condicion.
puts "por huevos es 0!!" if variable1 == 0
#podemos también crear una condición if a través de los simbolos '?:'. No es un if como tal, no se debe utilizar al principio, es complejo. Permite la modificación de manera muy facil, pudiendo entrar en bucles infinitos.
puts variable1==0?"Es cero":"No es cero"
puts variable1==0?"Es cero":variable1>0?"Es mayor que 0":"Es menor que 0"
#resultado = condicion?valorSiTrue:valorSiFalse

variable = nil

if !variable then   #si no hay nada en la variable, entonces entra. Pero tengo que negarla....
  puts "La variable es nula!"
end

#Es como un if not. Es decir, un if pero al revés. No utilizar y utilizar el if not.
unless variable
  puts "La variable es nula!"
end

#el caso siguiente podría solucionarlo con un if con condiciones en un OR, o con un switch case.
variable = 3
if variable == 1 then
  puts "es 1"
elsif variable == 2 then
  puts "es dos"
elsif variable == 3 then
  puts "es 3"
else
  "No es ni 1 ni 2 ni 3"
end

#El switch case se puede hacer como un if:
case
when variable == 1 then
  puts "es 1 con el case"
when variable == 2 then
  puts "es 2 con el case"
else
  puts "No es ni 1 ni 2 con el case"
end

#o más reducido
case variable
when 1 then
  puts "Es 1"
when 2 then
  puts "Es 2"
when 3 then
  puts "Es 3"
else
  puts "ni idea"
end

#En este caso le decimos q evalue la variable dentro de un rango de opciones. Para ello se ponen dos puntos entre las opciones, es decir, '1..10.
#si ponemos dos puntos, incluye los dos valores. Si ponemos 3 puntos, el valor final no lo incluye.
case variable
when 1..10
  puts "Esta entre el 1 y el 10"
when 11..20
  puts "Esta entre el 11 y el 20"
else
  puts "Ni idea"
end






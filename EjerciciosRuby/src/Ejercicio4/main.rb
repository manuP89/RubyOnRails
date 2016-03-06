
load 'calculadora.rb'

def mostrar (valor)
  puts valor
end

mostrar "Introduzca el primer número"
valor1 = gets.strip.to_f
mostrar "Introduzca el segundo número"
valor2 = gets.strip.to_f


mostrar "Los valores introducidos son: #{valor1}, #{valor2}"
  
calculadora1 = Calculadora.new
  
mostrar "El resultado de la suma entre ellos es: #{calculadora1.suma(valor1, valor2)}"
mostrar "El resultado de la resta entre ellos es: #{calculadora1.resta(valor1, valor2)}"
mostrar "El resultado de la multiplicacion entre ellos es: #{calculadora1.multi(valor1, valor2)}"
mostrar "El resultado de la division entre ellos es: #{calculadora1.divis(valor1, valor2)}"

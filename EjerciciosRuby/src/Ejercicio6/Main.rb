
load 'negocio/Calculadora.rb'
load 'negocio/CalculadoraMemoria.rb'

def generarMenu
  puts "Hola!!"
  puts "Bienvenido a nuestra calculadora"
  CalculadoraMemoria.borrar
end
generarMenu
begin
  puts "Para finalizar el programa pulse 0"
  puts "Introduzca la operación"
  operacion = gets.strip
  puts "Introduzca el número"
  a = gets.to_i
   
  puts CalculadoraMemoria.operar(a,operacion)
  
end while a != 0
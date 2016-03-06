
def funcionInversa (numero)
  #el raise, con ',' define primero el nombre y luego la descripcion
  raise ArgumentError, "Solo admitimos numeros" unless numero.is_a? Numeric
  raise Exception, "No admito 0" if numero == 0
  1.0/numero
end

#puedes tener tantos rescue como quieras, pero solo entra en uno, en el primero que cumple. Por eso exception solo debe ir el ultimo
begin
  puts funcionInversa 5
  puts funcionInversa 0
  puts funcionInversa "Manu"
rescue ArgumentError => ae
  puts "Ha ocurrido un error de argumentos"
  puts ae.message
#exception es la clase padre de todas las excepciones
rescue Exception => e
  puts "Ha ocurrido un error al introducir el dato."
  puts e.message
ensure
  puts "Este codigo de aqui se ejecutara siempre, tanto si ha habido error como si no"
end

puts "Fin del programa"

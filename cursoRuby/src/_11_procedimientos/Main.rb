
#los bloques no son objetos y por tanto no pueden ser manipulados, es decir, no tienen metodos asociados al mismo.
#los procedimientos si son objetos y por tanto tienen metodos asociados a ellos.
#el objetivo principal es evitar repetir bloques

proc = Proc.new {
  |v|
  puts "Esto es un procedimiento con la variable #{v}"
}

#esto lo interpretaria como un hash
#proc = {|v| puts "Esto que es?"}

#con el metodo call invocamos al procedimiento
proc.call 3
proc.call 3,4
proc.call(3)

3.times{
  puts "hola"
}

3.times(&proc)

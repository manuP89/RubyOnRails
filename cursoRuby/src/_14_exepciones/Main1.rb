
#las exepciones son errores que ocurren en tiempo de ejecucion y que pueden romper la ejecución del programa.

def lanzarExcepcion
  puts "Antes de lanzar la excepcion"
  #lanzamos un error
  raise "Ha ocurrido un error inesperado"
  puts "Despues de lanzar una excepcion"
end

lanzarExcepcion
puts "Despues de llamar a lanzarExcepcion"

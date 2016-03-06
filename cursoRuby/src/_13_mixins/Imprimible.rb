
#un modulo puede servir tambien como biblioteca de funciones
#ya que ruby no permite la herencia multiple, mediante el mixin podemos incluir todos los modulos que queramos a una clase.
#seria como emular la herencia multiple
#a la hora de cargarlo, hay que cargar antes el module que la clase, para que cuando cree la clase el modulo ya exista.
module Imprimible
  
  def imprimirPantalla (texto)
    puts "Imprimimos por pantalla: #{texto}"
  end
  
  def imprimirFichero (fichero, texto)
    File.open(fichero, 'w'){
      |f| #representa el fichero
       f.puts "-- #{texto}"
    }
  end
  
end

class Contacto
 
  attr_accessor :nombre, :apellidos, :edad
 
  def initialize(nombre, apellidos, edad, direccion)
    @nombre = nombre
    @apellidos = apellidos
    @edad = edad
    @direccion = direccion
  end
  
  def to_s
    "#{@nombre} #{@apellidos}, #{@edad}, #{@direccion}"
  end
  
end

class Contacto
 
  attr_accessor :nombre, :apellidos, :edad
 
  def initialize(nombre, apellidos, edad, direccion)
    @nombre = nombre
    @apellidos = apellidos
    @edad = edad
    @domicilio = direccion
  end
  
  def to_s
    "Cliente: \n\t#{@nombre} #{@apellidos}, #{@edad} años \n\t#{@domicilio}"
  end
  
end

class Persona
  
  attr_accessor :id, :nombre, :apellido
  
  def initialize(nombre, apellido, id=nil)
    @nombre = nombre
    @apellido = apellido
    @id = id
  end
  
  def to_s
    "#{@id}. #{@nombre} #{@apellido}"
  end
  
  
end
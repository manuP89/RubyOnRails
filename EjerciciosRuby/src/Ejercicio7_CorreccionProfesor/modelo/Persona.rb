class Persona
  attr_accessor :nombre
  
  def initialize nombre
    @nombre = nombre
  end
  
  def to_s
    "#{@nombre}"
  end
end
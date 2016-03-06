class Actor < Persona
  attr_accessor :sexo
  def initialize nombre, sexo
    super nombre
    @sexo = sexo
  end
  
  def to_s
    "#{super}, #{@sexo}"
  end
  
end
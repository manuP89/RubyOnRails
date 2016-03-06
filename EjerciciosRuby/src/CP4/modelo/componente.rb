#esta es la clase padre. en ella se definen los atributos que vayan a ser comunes a todas las clases. en este caso solo el precio.
class Componente
  
  attr_accessor :precio
  
  def initialize(precio)
    @precio = precio
  end

#el initialize podríamos no ponerlo, solo se pone para las variables que son obligatorias
#no haria falta definir este método to_s, ya que no pretendemos mostrarlo por pantalla.  
  def to_s
    "#{@precio}"
  end
  
end
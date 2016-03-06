
#mediante la palabra include podemos incluir otras librerias
class Datos
  
  include Imprimible
  
  attr_reader :valor1, :valor2
  
  def initialize (valor1, valor2)
    @valor1, @valor2 = valor1, valor2
  end
  
end
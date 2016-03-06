#creamos la clase tarjeta de red, a la que ira relacionada la direccion mac e ip
class Ordenador::TarjetaRed < Componente
  
  attr_accessor :direccion, :marca, :velocidad
  
  def initialize(direccion, marca, velocidad, precio)
    super(precio)
    @direccion = direccion
    @marca = marca
    @velocidad = velocidad
  end
  
  def to_s
    "Tarjeta de Red: \n\t\t#{@direccion} \n\t\tMarca: #{@marca} \n\t\tVelocidad: #{@velocidad} \n\t\tPrecio: #{@precio} €"
  end
  
end
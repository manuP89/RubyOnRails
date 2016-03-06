#la clase padre es inventario y esta hereda de ella
class Ordenador::Grafica < Componente
  
  attr_accessor :marca, :modelo, :velocidad

#definimos el constructor, heredando el atributo precio de la clase padre.   
  def initialize(marca, modelo, velocidad, precio)
    super(precio)
    @marca = marca
    @modelo = modelo
    @velocidad = velocidad
  end

#definimos el metodo para la impresion por pantalla.
  def to_s
    "Tarjeta gráfica: \n\t\tMarca: #{@marca} #{@modelo} \n\t\tVelodidad: #{@velocidad} \n\t\tPrecio: #{@precio} €"
  end
    
end
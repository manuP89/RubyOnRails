#la clase padre es inventario y esta hereda de ella
class Ordenador::Procesador < Componente
  
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
    "Procesador: \n\t\tMarca: #{@marca} #{@modelo} \n\t\tVelocidad: #{@velocidad} \n\t\tPrecio: #{@precio} €"
  end
     
end
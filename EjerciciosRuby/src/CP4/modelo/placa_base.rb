#la clase padre es inventario y esta hereda de ella
class Ordenador::PlacaBase < Componente
  
  attr_accessor :marca, :modelo

#definimos el constructor, heredando el atributo precio de la clase padre.   
  def initialize(marca, modelo, precio)
    super(precio)
    @marca = marca
    @modelo = modelo
  end

#definimos el metodo para la impresion por pantalla.
  def to_s
    "Placa base: \n\t\tMarca: #{@marca} #{@modelo} \n\t\tPrecio: #{@precio} €"
  end
    
end
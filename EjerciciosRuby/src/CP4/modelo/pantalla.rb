#la clase padre es inventario y esta hereda de ella
class Ordenador::Pantalla < Componente
  
  attr_accessor :marca, :modelo, :tamaño

#definimos el constructor, heredando el atributo precio de la clase padre.   
  def initialize(marca, modelo, tamaño, precio)
    super(precio)
    @marca = marca
    @modelo = modelo
    @tamaño = tamaño
  end

#definimos el metodo para la impresion por pantalla.
  def to_s
    "Monitor: \n\t\tMarca: #{@marca} #{@modelo} \n\t\tTamaño: #{@tamaño}'' \n\t\tPrecio: #{@precio} €"
  end
    
end


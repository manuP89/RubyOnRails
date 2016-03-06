#la clase padre es inventario y esta hereda de ella
class Ordenador::DiscoDuro < Componente
  
  attr_accessor :marca, :modelo, :tipo, :tamaño

#definimos el constructor, heredando el atributo precio de la clase padre.  
  def initialize(marca, modelo, tipo, tamaño, precio)
    super(precio)
    @marca = marca
    @modelo = modelo
    @tipo = tipo
    @tamaño = tamaño
  end

#definimos el metodo para la impresion por pantalla.
  def to_s
    "Disco duro:\n\t\tMarca: #{@marca} #{@modelo} \n\t\tTipo: #{@tipo} \n\t\tTamaño: #{@tamaño} \n\t\tPrecio: #{@precio} €"
  end
    
end
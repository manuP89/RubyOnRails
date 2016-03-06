class Pizza
  
  attr_reader :precio
  attr_accessor :tamano, :ingredientes
  
  def initialize (tamano,ingredientes)
    @tamano = tamano
    @ingredientes = ingredientes
    @precio = calculaPrecio
  end
  
  def calculaPrecio
    @precio = @ingredientes.size*0.9  #0.9€ por ingrediente

    if tamano == "peque"
      @precio += 10
    elsif tamano == "mediana"
      @precio += 15
    elsif tamano == "grande"
      @precio += 20
    end
    
    return @precio
  end
  
  def to_s
    "Tamaño: #{@tamano}. Ingredientes: #{@ingredientes}. Precio: #{@precio}"
  end
  
end
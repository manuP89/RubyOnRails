class Pizza
  
  attr_reader :precio
  attr_accessor :tamano, :ingredientes
  
  def initialize (tamano,ingredientes)
    @tamano = tamano
    @ingredientes = ingredientes
    @precio = @ingredientes.size*1  #1€ por ingrediente

    if tamano == "peque"
      @precio += 10
    elsif tamano == "mediana"
      @precio += 15
    elsif tamano == "grande"
      @precio += 20
    end

  end
  
  def to_s
    "Pizza:\n\tTamaño: #{@tamano}\n\tIngredientes: #{@ingredientes}\n\tPrecio: #{@precio}"
  end
  
end
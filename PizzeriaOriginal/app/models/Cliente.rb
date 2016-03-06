class Cliente
  
  attr_accessor :direccion, :telefono
  
  def initialize (direccion, telefono)
    @direccion = direccion
    @telefono = telefono
  end
  
  def to_s
    "Direccion: #{@direccion}\nTeléfono: #{@telefono}"
  end
  
end
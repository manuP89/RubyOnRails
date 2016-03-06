#hacemos que direccion pertenezca a contacto.
class Contacto::Direccion
  
  attr_accessor :tipoVia, :nombreVia, :numero, :piso, :letra
  
  def initialize(tipoVia, nombreVia, numero, piso, letra)
    @tipoVia = tipoVia
    @nombreVia = nombreVia
    @numero = numero
    @piso = piso
    @letra = letra
  end

  def to_s
    "#{@tipoVia} #{@nombreVia} #{@numero}, #{@piso}º #{@letra}"
  end

end




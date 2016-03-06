
class Direccion
  
  attr_accessor :tipoVia, :nombreVia, :numero, :piso, :letra
  
  def initialize(tipoVia, nombreVia, numero='s/n', piso=nil, letra=nil)
    @tipoVia = tipoVia
    @nombreVia = nombreVia
    @numero = numero
    @piso = piso
    @letra = letra
  end

  def to_s
    "#{@tipoVia} #{@nombreVia} #{@numero}, #{@piso} #{@letra}"
  end

end




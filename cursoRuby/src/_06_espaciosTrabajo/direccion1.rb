#una vez creado el modulo, llamamos a la clase con su nombre para decirle que pertenece a el.
class ModeloAgenda::Direccion
  
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




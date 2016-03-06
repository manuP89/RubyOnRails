#creo un modulo nuevo para aglutinar la clase contacto
module ModeloAgenda
  
  class Contacto
   
    attr_accessor :nombre, :apellidos, :edad
   
    def initialize(nombre, apellidos, edad, direccion)
      @nombre = nombre
      @apellidos = apellidos
      @edad = edad
      @direccion = direccion
    end
    
    def to_s
      "#{@nombre} #{@apellidos}, #{@edad}, #{@direccion}"
    end
    
  end
=begin  
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
=end
end
#esta es la clase principal que engloba todas.
class Ordenador
  
  attr_accessor :marca, :procesador, :ram, :disco_duro, :grafica, :placa_base, :monitor
  
#constructor general con todos los componentes  
  def initialize(marca, procesador, ram, tarjetaRed, disco_duro, grafica, placa_base, monitor)
    @marca = marca
    @procesador = procesador
    @ram = ram
    @tarjetaRed = tarjetaRed
    @disco_duro = disco_duro
    @grafica = grafica
    @placa_base = placa_base
    @monitor = monitor
  end

#definimos el método para obtener la suma del precio de todos los componentes. se añade el to_f por si acaso el valor que venga no esta en numérico.
#lo creamos aqui porque la capa main no deberia tener ninguna logica de negocio.
  def precioTotal
    @procesador.precio.to_f + @ram.precio.to_f + @disco_duro.precio.to_f + @grafica.precio.to_f + @placa_base.precio.to_f + @monitor.precio.to_f
  end

#definimos el metodo para la impresion por pantalla.
#el self.precioTotal lo que hace es llamar al metodo precioTotal para el objeto que está usando en el momento.
  def to_s
    "Ordenador: \n\t#{@marca} \n\tPrecio total: #{self.precioTotal} €\n\t#{@ram}\n\t#{@tarjetaRed}\n\t#{@procesador}\n\t#{@disco_duro}\n\t#{@grafica}\n\t#{@monitor}\n\t#{@placa_base}\n-------------------------------------------------------"
  end

end
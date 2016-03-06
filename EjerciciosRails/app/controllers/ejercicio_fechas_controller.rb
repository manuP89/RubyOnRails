class EjercicioFechasController < ApplicationController
  
  def getFechaActual
    fechaAux = Time.now
    # %d representa el dia
    # %m representa el mes
    # %h representa el mes en texto
    # %Y representa el año (en mayuscula con 4 digitos y en minuscula con 2)
    # %H representa la hora en formato 24h
    # %M representa los minutos
    # %S representa los segundos
    @fechaActual = fechaAux.strftime("%d/%m/%Y %H:%M:%S")
  end
  
end

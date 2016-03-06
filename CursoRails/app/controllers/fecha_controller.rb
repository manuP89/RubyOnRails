class FechaController < ApplicationController
  
  def getFecha
    puts "mostrarFecha -> entrando en el método"
    @fecha = Time.now
    @fecha2 = Time.new
    @holaputiiii = Time.new
    @losdelatletisoismuyfeo = "feooo putooo guarrooo// pero yo no he sido eeh (SARA)"
  end
  
end

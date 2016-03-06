class ParametrosController < ApplicationController
  
  def pasarParametros
    if params[:nombre] && params[:apellidos]
      @saludo = "Hola q ase #{params[:nombre]} #{params[:apellidos]}?"
    else
      @saludo = "ola q ase?desconosido o q ase?"
    end
  end
  
end


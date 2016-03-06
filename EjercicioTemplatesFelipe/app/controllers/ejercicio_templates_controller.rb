class EjercicioTemplatesController < ApplicationController

def mostrar
  
  @mostrar = params[:name]
  
end

def route
  @accion = params[:name]
  
end

def index
  
end

end

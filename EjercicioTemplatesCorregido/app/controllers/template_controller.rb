class TemplateController < ApplicationController
  def index
  end

  def enrutar
  end

  def mostrar
  end

  def resultado
  end
  
  def ruta
    puts "Parametro: #{params[:enrutar]}"
    puts "Parametro: #{params[:mostrar]}"
    if params[:enrutar] != nil
      render params[:enrutar]
    else
      @resultado = params[:mostrar]
      render :resultado
    end
  end
  
end

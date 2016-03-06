class CalculadoraController < ApplicationController
  
  def resultado
    if params[:operaciones] =="suma"
      @resultado = params[:val1].to_f + params[:val2].to_f
    elsif params[:operaciones]=="resta"
      @resultado = params[:val1].to_f - params[:val2].to_f
    elsif params[:operaciones]=="multiplicacion"
      @resultado = params[:val1].to_f * params[:val2].to_f
    elsif params[:operaciones]=="division"
      @resultado = params[:val1].to_f / params[:val2].to_f
    end
    
  end

end

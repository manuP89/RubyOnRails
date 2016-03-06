class ZapateriaController < ApplicationController
  
  def index
    @zapatos = Zapato.all
  end

  def alta
    tipo = params[:tipo]
    color = params[:color]
    talla = params[:talla].to_i
    zapatosHash = {}
    zapatosHash[:tipo] = tipo
    zapatosHash[:color] = color
    zapatosHash[:talla] = talla
    Zapato.create(zapatosHash)
    @zapatos = Zapato.all
    render :index
  end

  def baja
    id = params[:id]
    Zapato.delete id
    @zapatos = Zapato.all
    render :index
  end

  def modificar_vista
    id = params[:id]
    #para hacer una búsqueda por id se usa el find
    @zapato = Zapato.find id
  end

  def modificar
    id = params[:id]
    tipo = params[:tipo]
    color = params[:color]
    talla = params[:talla].to_i
    zapatoModificar = Zapato.find id
    modificarHash = {}
    modificarHash[:tipo] = tipo
    modificarHash[:color] = color
    modificarHash[:talla] = talla
    zapatoModificar.update_attributes(modificarHash)
    @zapatos = Zapato.all
    render :index
  end
  
end

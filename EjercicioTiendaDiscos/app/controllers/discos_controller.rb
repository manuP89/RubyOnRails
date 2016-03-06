class DiscosController < ApplicationController
  def index
    @disco = Disco.new
  end
  
  def create
    @disco = Disco.new
    @disco.nombre = params[:nombre]
    @disco.artista = params[:artista]
    @disco.anio = params[:anio].to_i
    @disco.save#Con esto salvamos el disco en la bd
    
    render :index
  end
  
  def update_mostrar
    id = params[:id].to_i
    @disco = Disco.find id
    
    render :index
  end
  
  def update
    id = params[:id].to_i
    @disco = Disco.find id
    @disco.nombre = params[:nombre]
    @disco.artista = params[:artista]
    @disco.anio = params[:anio].to_i
    @disco.save
    
    @disco = Disco.new
    render :index
  end
  
  def borrar
    arrayIds = params[:ids]
    Disco.delete arrayIds

    @disco = Disco.new
    render :index
  end

  def buscar_anio
    anio = params[:valor]
    @resultadosBusqueda = Disco.where(:anio => anio)

    @disco = Disco.new
    render :index
  end
  
  def buscar_artista
    artista = params[:valor]
    @resultadosBusqueda = Disco.where(artista: artista)
    
    @disco = Disco.new
    render :index
  end
end

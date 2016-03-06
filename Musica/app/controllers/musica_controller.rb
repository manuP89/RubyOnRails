class MusicaController < ApplicationController
  
  def index
    @discos = Album.all
  end
  
  def alta
    titulo = params[:titulo]
    artista = params[:artista]
    anio = params[:anio].to_i
    discoHash = {}
    discoHash[:titulo] = titulo
    discoHash[:artista] = artista
    discoHash[:anio] = anio
    @disco = Album.create(discoHash)
    if @disco.errors.any? then
      puts "BDERROR: Error"
      render :alta_vista
    else
      @discos = Album.all
      render :index
    end
  end
  
  def buscar
    artista = params[:artista]
    anio = params[:anio].to_i
    puts "El artista es '#{artista}'"
    puts "El anio es '#{anio}'"
    if artista != "" && anio != 0
      puts "Buscando por las dos a la vez"
      @discosEncontrados = Album.where("artista=? AND anio=?", artista, anio)
      render :busqueda
    elsif artista != ""
      puts "Buscando por artista"
      @discosEncontrados = Album.where(:artista => artista)
      render :busqueda
    elsif anio != nil
      puts "Buscando por año"
      @discosEncontrados = Album.where(:anio => anio)
      render :busqueda
    end
  end
  
  def buscar_artista
    artista = params[:artista]
    anio = params[:anio].to_i
    @discosEncontrados = Album.where(:artista => artista)
    render :busqueda
  end
  
  def buscar_anio
    anio = params[:anio].to_i
    @discosEncontrados = Album.where(:anio => anio)
    render :busqueda
  end
  
  def borrar
    id = params[:idBorrar]
    Libro.delete id

    render :index
  end
  
  def modificar_vista
    @disco = nil
    id = params[:id].to_i
    @disco = Album.find id
  end
  
  def modificar
    # id = params[:id].to_i
    # @disco = Album.find id
    # @disco.titulo = params[:titulo]
    # @disco.artista = params[:artista]
    # @disco.anio = params[:anio].to_i
    # @disco.save
    id = params[:id].to_i
    titulo = params[:titulo]
    artista = params[:artista]
    anio = params[:anio].to_i
    @disco = Album.find id
    hashModificar = {}
    hashModificar[:titulo] = titulo
    hashModificar[:artista] = artista
    hashModificar[:anio] = anio
    update = @disco.update_attributes(hashModificar)
    if update
      puts "Disco actualizado"
      @discos = Album.all
      render :index
    else
      puts "Error en la actualización"
      render :modificar_vista
    end
  end
  
end

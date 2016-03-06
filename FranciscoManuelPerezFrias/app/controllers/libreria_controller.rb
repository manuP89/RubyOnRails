class LibreriaController < ApplicationController
  
  def index
    #como lo estamos haciendo todo en la misma página, para que no de errror y nos aparezca el formulario de crear en blanco.
    @libro = Libro.new
  end
  
  def create
    #se crea un nuevo libro
    @libro = Libro.new
    @libro.titulo = params[:titulo]
    @libro.autor = params[:autor]
    @libro.genero = params[:genero]
    @libro.save
    
    render :index
  end
  
  def delete
    #se borrará a partir de un array de ids, ya que se seleccionan mediante checkbox los libros a borrar.
    idBorrar = params[:idBorrar]
    Libro.delete idBorrar
    
    #para que el formulario aparezca vacío al recargar la página y no de error.
    @libro = Libro.new
    render :index
  end
  
  def update_mostrar
    #con este método lo que hacemos es buscar el libro seleccionado para poder mostrar sus valores en el formulario.
    id = params[:id].to_i
    @libro = Libro.find id
    
    render :index
  end
  
  def update
    #se actualiza un libro a partir de su id, por lo que primero hay que buscarlo y luego sustituir los valores viejos por los nuevos.
    id = params[:id].to_i
    @libro = Libro.find id
    @libro.titulo = params[:titulo]
    @libro.autor = params[:autor]
    @libro.genero = params[:genero]
    @libro.save
    
    #por el mismo motivo de antes, para que una vez modificado, el formulario vuelva a aparecer vacío y no de error.
    @libro = Libro.new
    render :index
  end
  
  def search_title
    #búsqueda del libro por título
    titulo = params[:titulo]
    @librosEncontrados = Libro.where(:titulo => titulo)
    
    #para que el formulario aparezca vacío al recargar la página y no de error.
    @libro = Libro.new
    render :index
  end
  
  def search_author
    #búsqueda del libro por autor
    autor = params[:autor]
    @librosEncontrados = Libro.where(:autor => autor)
    
    #para que el formulario aparezca vacío al recargar la página y no de error.
    @libro = Libro.new
    render :index
  end
  
  def search_genero
    #búsqueda del libro por género
    genero = params[:genero]
    @librosEncontrados = Libro.where(:genero => genero)
    
    #para que el formulario aparezca vacío al recargar la página y no de error.
    @libro = Libro.new
    render :index
  end
  
  def search
    titulo = params[:titulo]
    autor = params[:autor]
    genero = params[:genero]
    if titulo != "" && autor != "" && genero != ""
      puts "Buscando por las tres a la vez"
      @librosEncontrados = Libro.where("titulo=? AND autor=? AND genero=?", titulo, autor, genero)
      
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index
    elsif titulo != "" && autor != ""
      puts "Buscando por titulo y autor"
      @librosEncontrados = Libro.where("titulo=? AND autor=?", titulo, autor)
      
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index
    elsif titulo != "" && genero != ""
      puts "Buscando por titulo y genero"
      @librosEncontrados = Libro.where("titulo=? AND genero=?", titulo, genero)
      
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index  
    elsif autor != "" && genero != ""
      puts "Buscando por genero y autor"
      @librosEncontrados = Libro.where("genero=? AND autor=?", genero, autor)
      
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index  
    elsif titulo != ""
      puts "Buscando por titulo"
      @librosEncontrados = Libro.where(:titulo => titulo)
      
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index
    elsif autor != ""
      puts "Buscando por autor"
      @librosEncontrados = Libro.where(:autor => autor)
      
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index
    elsif genero != ""
      puts "Buscando por genero"
      @librosEncontrados = Libro.where(:genero => genero)
      
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index
    else
      #para que el formulario aparezca vacío al recargar la página y no de error.
      @libro = Libro.new
      render :index
    end
  end
  
end

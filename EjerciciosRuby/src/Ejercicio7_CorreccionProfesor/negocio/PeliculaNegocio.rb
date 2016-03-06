class PeliculaNegocio
  attr_accessor :tamañoMaximo, :peliculaDao
  #En vez de pasar por constructor ss
  
  def initialize
    @tamañoMaximo = 10
  end
  
  #Params:
  #=>pelicula de la clase Pelicula
  #output:
  #=> true si ha sido insertada
  #=> false en caso de que este llena la memoria
  def insertarPelicula pelicula
    if @peliculaDao.listar.size < @tamañoMaximo 
      @peliculaDao.insertar pelicula
      return true
    else
      return false
    end
  end
  
  def borrarPelicula idPelicula
     @peliculaDao.delete idPelicula
  end
  
  def listar
    @peliculaDao.listar
  end
  
  def modificar id
   @peliculaDao.update id
  end
  
  
end
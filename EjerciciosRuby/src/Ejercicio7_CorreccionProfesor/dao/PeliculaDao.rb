class PeliculaDao

  def initialize
    @almacenPeliculas = []
    @id = 1
  end
  
  def insertar pelicula
    pelicula.id = @id
    @id+=1
    @almacenPeliculas << pelicula
  end
  
  def update pelicula
    idPeliculaNueva = pelicula.id
    i = 0
    for pelicula in @almacenPeliculas do
      if pelicula.id == idPeliculaNueva then 
        @almacenPeliculas [i] = pelicula 
        return 
      end
       i += 1
    end
  end
  
  def delete idPelicula
        @almacenPeliculas.delete_if {
          |pelicula|
          pelicula.id == idPelicula
        }  
  end
  
  def listar
    @almacenPeliculas
  end
end
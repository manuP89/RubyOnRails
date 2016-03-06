
class GestionPelicula
  
  #inicializamos la clase definiendole el dao y el log con el que vamos a trabajar, y añadiendole el tamaño máximo del array para la comprobacion
 
  def initialize (dao,log)
    @peliculasDao = dao
    @peliculasLog = log
    @tamañoMaximo = 10
  end
  
  #definimos el metodo insertar pelicula, llamando al método insert del dao
  #para no guardar más de 10 peliculas obtenemnos el almacen con la variable listaDePeliculas y hacemos un condicional con su tamaño para guardar las nuevas peliculas.
  #el primer if se le pone para que al añadir un libro con el almacén vacío pueda entrar en el segundo if, ya que sin el la variable seria listaDePeliculas = nil, y eso no tiene length
  def insertarPelicula (pelicula)
    listaDePeliculas = @peliculasDao.list
    if listaDePeliculas == nil then
      listaDePeliculas = []
    end
    if listaDePeliculas.length < @tamañoMaximo then
      @peliculasDao.insert pelicula
      @peliculasLog.generarLog "Película insertada:  #{pelicula}."
      return true
    else
      return false
    end
  end
  
  #definimos el metodo borrar pelicular, pudiendo entrarle un array de peliculas que borrar.
  #hacemos un bucle for para que recorra todo el array de peliculas que borrar y vaya borrando una a una.
  def borrarPelicula (arrayIdPeliculas)
    for id in arrayIdPeliculas
      @peliculasDao.delete id
      @peliculasLog.generarLog "Película #{id} borrada."
    end
  end
  
  #definimos el método listar llamando simplemente al mismo método del dao.
  def listarPeliculas
    @peliculasDao.list
  end
  
  #definimos el metodo actualizar llamando simplemente al mismo método del dao.
  def modificarPelicula (pelicula)
    @peliculasDao.update pelicula
    @peliculasLog.generarLog "Película actualizada"
  end
  
  #definimos el metodo buscar llamando simplemente al mismo método del dao.
  def buscarPelicula (idPelicula)
    @peliculasDao.buscarPelicula idPelicula 
  end
  
end
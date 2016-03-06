
class PeliculaDAO
  
  #inicializamos el almacen de películas y la variable que definirá el id de cada una.
  @@almacenPeliculas = [] #si quisieramos inicializarlo a 10 directamente seria @@almacenPeliculas.new(10)
  @@id = 1
  
  def insert (pelicula)
    #asignamos el id a la pelicula a insertar, aumentamos el id para la siguiente, y agregamos la pelicula al array
    pelicula.id = @@id
    @@id +=1
    @@almacenPeliculas << pelicula
  end
  
  def delete (idPelicula)
    #recorremos el almacen y buscamos la pelicula que tenga el id dado (if), una vez dentro del if borramos la pelicula y salimos con el return.
    for peliculaActual in @@almacenPeliculas
      if idPelicula == peliculaActual.id then
        @@almacenPeliculas.delete peliculaActual
        return
      end
    end
  end
  
  def update (pelicula)
    #recorremos el almacen y buscamos la pelicula, una vez encontrada, sustituimos la película existente por la modificación. y rompemos el metodo para q salga.
    i = 0
    idABuscar = pelicula.id
    for peliculaActual in @@almacenPeliculas
      if idABuscar == peliculaActual.id then
        @@almacenPeliculas[i] = pelicula
        return
      end
    i+=1
    end
  end
  
  def list
    #devuelve el array de almacen
    if @@almacenPeliculas.length == 0 then
      return nil
    else
      @@almacenPeliculas
    end
  end
  
  #funcion borrar en la que ponemos la condicion de que si la longitud del array es 0 (esta vacio) devuelva nada, y que si la pelicula no existe tambien.
  def buscarPelicula (idPelicula)
    #corregir que al no haber guardado películas te muestre al buscar que no hay peliculas guardadas...
    if @@almacenPeliculas.length == 0 then
      return nil
    else
      for peliculaActual in @@almacenPeliculas
        if idPelicula == peliculaActual.id then
          return peliculaActual
        else 
          return nil
        end
      end
    end
  end
  
end
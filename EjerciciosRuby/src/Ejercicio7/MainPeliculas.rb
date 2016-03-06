                                                                                                                                                                                                                                  
load 'modelo/Pelicula.rb'
load 'dao/LogDAO.rb'
load 'dao/PeliculaDAO.rb'
load 'negocio/GestionPelicula.rb'

#capitalizar todas las palabras en una cadena de texto.
#funcion encontrada en internet. lo que hace es separar las palabras de la cadena, capitalizar una a una cada una de ellas, y volver a juntarlas mediante espacios.
def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(" ")
end

def generarMenu
  puts "¿Qué quieres hacer?"
  puts "\t1. Agregar película. \n\t2. Borrar película. \n\t3. Listar películas. \n\t4. Modificar película. \n\t5. Buscar película. \n\t6. Salir"
  print ":>"
end

puts "Inicializando..."
sleep(1)
negocio = GestionPelicula.new(PeliculaDAO.new, LogDAO.new)

begin

  generarMenu
  respuesta = gets.to_i

  case respuesta
  when 1 then
    puts "Introduzca el título de la película"
    print ":>"
    titulo = gets.strip.capitalize
    puts "Introduzca el director de la película"
    print ":>"
    director = gets.strip
    director = titleize(director)
    puts "Introduzca los actores de la película, separados por comas"
    print ":>"
    actores = gets.strip.split ", "
    #esta locura de bucle sirve para capitalizar tanto nombre como apellido de los actores dentro del array.
    i = 0
    for actor in actores
      actores[i] = titleize(actores[i])
      i += 1
    end
    
    negocio.insertarPelicula(Pelicula.new(titulo, director, actores))
    
  when 2 then
    puts "Introduzca el id de la película a borrar"
    print ":>"
    arrayIdPelicula = [gets.to_i]
    negocio.borrarPelicula(arrayIdPelicula)
    
  when 3 then
    if negocio.listarPeliculas == nil
      puts "No hay películas guardadas"
    else
      puts negocio.listarPeliculas
    end
    
  when 4 then
    puts "Introduzca el id de la película a modificar"
    print ":>"
    id = gets.to_i
    puts "Introduzca el nuevo título"
    print ":>"
    titulo = gets.strip.capitalize
    puts "Introduzca el nuevo director"
    print ":>"
    director = gets.strip.capitalize
    puts "Introduzca los nuevos actores, separados por comas"
    print ":>"
    actores = gets.strip.split ", "
    i = 0
    for actor in actores
      actores[i] = titleize(actores[i])
      i += 1
    end
    
    peliculaActualizada = Pelicula.new(titulo, director, actores, id)
    negocio.modificarPelicula(peliculaActualizada)
    
  when 5 then
    puts "Introduzca el id de la película a buscar"
    print ":>"
    idPelicula = gets.to_i
    peliculaBuscada = negocio.buscarPelicula(idPelicula)
    if peliculaBuscada == nil
      puts "No se encuentra la película buscada"
    else
      puts "La pelicula buscada es: #{peliculaBuscada}"
    end
    
  when 6 then
    puts "Saliendo del programa. Gracias por venir"
    
  else
    puts "Introduzca una opción válida"
    
  end
    
end while respuesta != 6

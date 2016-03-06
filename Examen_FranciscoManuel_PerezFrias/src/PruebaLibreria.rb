
=begin
Genera una clase de prueba que realice:
1. Cuatro altas de libros
2. Lista el contenido
3. Borra un libro
4. Lista el contenido
5. Modifica un libro
6. Lista el contenido
=end

load 'modelo/Libro.rb'
load 'dao/LogDAO.rb'
load 'dao/LibrosDAO.rb'
load 'negocio/GestionLibreria.rb'

#capitalizar todas las palabras en una cadena de texto.
#lo que hace es separar las palabras de la cadena, capitalizar una a una cada una de ellas, y volver a juntarlas mediante espacios.
def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(" ")
end


#creamos un nuevo objeto de gestión, creando desde el nuevos objetos del modelo y del log.
negocio = Libreria::Negocio::GestionLibreria.new(Libreria::Memoria::LibrosDAO.new, Libreria::Memoria::LogDAO.new)

#creamos los 4 libros para darlos de alta
titulo1 = "el regreso del Catón"
titulo2 = "el psicoanalista"
titulo3 = "cometas en el cielo"
titulo4 = "el maestro del prado"

autor1 = "matilde asensi"
autor2 = "john katzenbach"
autor3 = "khaled hosseini"
autor4 = "javier sierra"

descripcion1 = "casi quince años después de que se publicara El último Catón, Matilde Asensi vuelve con El regreso del Catón, una de las novelas más esperadas."
descripcion2 = "el psicoanalista es un thriller psicológico y la novela más exitosa de John Katzenbach."
descripcion3 = "cometas en el cielo es la conmovedora historia de dos padres y dos hijos, de su amistad y de cómo la casualidad puede convertirse en hito inesperado de nuestro destino."
descripcion4 = "el maestro del Prado presenta un apasionante recorrido por las historias más desconocidas y secretas de una de las pinacotecas más importantes del mundo, el Museo del Prado."


libro1 = Libreria::Modelo::Libro.new(titulo1.capitalize!, titleize(autor1), descripcion1.capitalize!)
libro2 = Libreria::Modelo::Libro.new(titulo2.capitalize!, titleize(autor2), descripcion2.capitalize!)
libro3 = Libreria::Modelo::Libro.new(titulo3.capitalize!, titleize(autor3), descripcion3.capitalize!)
libro4 = Libreria::Modelo::Libro.new(titulo4.capitalize!, titleize(autor4), descripcion4.capitalize!)

#1. Cuatro altas de libros. 
negocio.altaLibro(libro1)
negocio.altaLibro(libro2)
negocio.altaLibro(libro3)
negocio.altaLibro(libro4)

#2. Listar el contenido. 
#puts negocio.listarLibros
puts "Los #{negocio.listarLibros.size} libros almacenados son:"
negocio.listarLibros.each {|libro| puts libro}


#3. Borrar un libro. Dos opciones. A la primera hay que darle un array, porque admite la posibilidad de borrar varios libros a la vez. A la segunda se le da el titulo.
negocio.bajaLibroId([1])
negocio.bajaLibroTitulo(titleize(titulo2))

#4. Listar el contenido.
#puts negocio.listarLibros
puts "Los #{negocio.listarLibros.size} libros almacenados tras el borrado son:"
negocio.listarLibros.each {|libro| puts libro}

#5. Modificar un libro. Dos opciones. La primera modifica buscando por id, la segunda buscando por titulo.
#Para modificar un libro hay que darle el id del libro a modificar, y los valores que queramos poner en el libro.
nuevoTitulo3 = "el pico del diablo"
nuevoAutor3 = "deon meyer"
nuevaDescripcion3 = "una ojeada al alma de la nueva Sudáfrica en toda su gloria."

libroModificado = Libreria::Modelo::Libro.new(nuevoTitulo3.capitalize, titleize(nuevoAutor3), nuevaDescripcion3.capitalize, 3) 
negocio.modificarLibroId(libroModificado)

nuevoAutor4 = "julia navarro"
nuevaDescripcion4 = "esta descripción es mentira porque este libro no es de esta autora."

libroModificado = Libreria::Modelo::Libro.new(titulo4.capitalize, titleize(nuevoAutor4), nuevaDescripcion4.capitalize, 4) 
negocio.modificarLibroTitulo(libroModificado.titulo, libroModificado)

#6. Listar el contenido.
puts "Los #{negocio.listarLibros.size} libros almacenados tras la modificación son:"
negocio.listarLibros.each {|libro| puts libro}

#fin del ejercicio
puts ""
puts "------------------------FIN DEL EJERCICIO------------------------"

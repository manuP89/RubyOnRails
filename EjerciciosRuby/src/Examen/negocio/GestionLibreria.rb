
module Libreria
  module Negocio
    class GestionLibreria
      
      #inicializamos la clase definiendole el dao y el log con el que vamos a trabajar.
      def initialize (dao,log)
        @librosDao = dao
        @librosLog = log
      end
      
      #definimos el metodo alta, llamando al método insert del dao. Agregamos el mensaje del log para tener trazas de seguimiento.
      def altaLibro (libro)
        @librosDao.insert libro
        @librosLog.generarLog "Libro agregado:  #{libro.titulo}."
      end
      
      #definimos el método baja por título, llamando al método deleteTitle del dao. Agregamos el mensaje del log para tener trazas de seguimiento.
      def bajaLibroTitulo (titulo)
        @librosDao.deleteTitle titulo
        @librosLog.generarLog "Libro '#{titulo.capitalize}' borrado."
      end
      
      #definimos el metodo baja por Id, pudiendo entrarle un array de libros que borrar.
      #hacemos un bucle for para que recorra todo el array de libros que borrar y vaya borrando uno a uno.
      def bajaLibroId (arrayIdLibros)
        for id in arrayIdLibros
          @librosDao.deleteId id
          @librosLog.generarLog "Libro #{id} borrado."
        end
      end
      
      #definimos el método modificar por título, llamando al método updateTitle del dao. Agregamos el mensaje del log para tener trazas de seguimiento.
      def modificarLibroTitulo (titulo, libroNuevo)
        @librosDao.updateTitle titulo, libroNuevo
        @librosLog.generarLog "Libro #{titulo} actualizado."
      end
      
      #definimos el metodo modificar por Id, llamando al método updateId del dao. Agregamos el mensaje del log para tener trazas de seguimiento.
      def modificarLibroId (libro)
        @librosDao.updateId libro
        @librosLog.generarLog "Libro #{libro.id} actualizado."
      end
      
      #definimos el método listar llamando simplemente al mismo método del dao.
      def listarLibros
        @librosDao.list
      end
      
    end
  end
end
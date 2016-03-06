module Biblioteca
  module Negocio
    class GestionLibreria
  
      #inicializamos la clase definiendole el dao y el log con el que vamos a trabajar.
      def initialize (dao,log)
        @librosDao = dao
        @librosLog = log
      end
      
      #definimos el metodo alta, llamando al método insert del dao
      def altaLibro (libro)
        @librosDao.insert libro
        @librosLog.generarLog "Libro agregado:  #{libro}."
      end
      
      #definimos el metodo baja, pudiendo entrarle un array de libros que borrar.
      #hacemos un bucle for para que recorra todo el array de libros que borrar y vaya borrando uno a uno.
      def bajaLibroId (arrayIdLibros)
        for id in arrayIdLibros
          @librosDao.deleteId id
          @librosLog.generarLog "Libro #{id} borrado."
        end
      end
      
      def bajaLibroTitulo (titulo)
        @librosDao.delete titulo
        @librosLog.generarLog "Libro <#{titulo.capitalize}> borrado."
      end
      
      #definimos el método listar llamando simplemente al mismo método del dao.
      def listarLibros
        @librosDao.list
      end
      
      #definimos el metodo actualizar llamando simplemente al mismo método del dao.
      def modificarLibroId (libro)
        @librosDao.updateId libro
        @librosLog.generarLog "Libro #{libro.id} actualizado"
      end
    
      def modificarLibroTitulo (titulo, libroNuevo)
        @librosDao.updateTitle titulo, libroNuevo
        @librosLog.generarLog "Libro #{titulo} actualizado"
      end
    
    end
  end
end

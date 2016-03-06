
module Libreria
  module Memoria
    class LibrosDAO
      
      #inicializamos el almacen de libros y la variable que definirá el id de cada una.
      #estas variables son de clase para que no sea necesario crear el objeto para su existencia.
      @@libreria = []
      @@id = 1
      
      #método para agregar un libro
      def insert (libro)
        #asignamos el id al libro a insertar, aumentamos el id para el siguiente, y agregamos el libro al array
        libro.id = @@id
        @@id +=1
        @@libreria << libro
      end
      
      #método para eliminar un libro por título
      def deleteTitle (titulo)
        #con la ayuda de un bloque, recorremos el array de libros en búsqueda de coincidencias por título y eliminando los objetos de dicha coincidencia.
        @@libreria.delete_if {|libro| libro.titulo == titulo}
      end
      
      #método para eliminar un libro por Id.
      def deleteId (idLibro)
        #recorremos el almacen y buscamos el libro que tenga el id dado (if), una vez dentro del if borramos el libro y salimos con el return.
        for libroActual in @@libreria
          if idLibro == libroActual.id then
            @@libreria.delete libroActual
            return
          end
        end
      end
      
      #método para actualizar un libro por título.
      def updateTitle (titulo, libroNuevo)
        #siguiendo la lógica de antes utilizamos un bloque para recorrer el array en busqueda de coincidencias por título, se elimina dicho objeto y se agrega el objeto modificado.
        busqueda = @@libreria.select {|libro| libro.titulo == titulo}
        deleteTitle(titulo) if busqueda.length > 0 
        insert(libroNuevo)
      end
      
      #método para actualizar un libro por Id.
      def updateId (libro)
        #recorremos el almacen y buscamos el libro, una vez encontrado, sustituimos el libro existente por la modificación, y rompemos el metodo para que salga.
        i = 0
        idABuscar = libro.id
        for libroActual in @@libreria
          if idABuscar == libroActual.id then
            @@libreria[i] = libro
            return
          end
        i+=1
        end
      end
      
      #método para listar el almacén.
      def list
        #se le añade una comprobación de que el array no está vacío.
        if @@libreria.length == 0 then
          return nil
        else
          @@libreria
        end
      end
      
    end
  end
end
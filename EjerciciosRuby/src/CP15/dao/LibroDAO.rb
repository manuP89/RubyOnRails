module Biblioteca
  module Memoria
    class LibroDAO
  
      #inicializamos el almacen de libros y la variable que definirá el id de cada una.
      @@libreria = []
      @@id = 1
      
      def insert (libro)
        #asignamos el id al libro a insertar, aumentamos el id para el siguiente, y agregamos el libro al array
        libro.id = @@id
        @@id +=1
        @@libreria << libro
      end
      
      def deleteId (idLibro)
        #recorremos el almacen y buscamos el libro que tenga el id dado (if), una vez dentro del if borramos el libro y salimos con el return.
        for libroActual in @@libreria
          if idLibro == libroActual.id then
            @@libreria.delete libroActual
            return
          end
        end
      end
      
      def delete (titulo)
        @@libreria.delete_if {|libro| libro.titulo == titulo}
      end
      
      def updateId (libro)
        #recorremos el almacen y buscamos el libro, una vez encontrado, sustituimos el libro existente por la modificación. y rompemos el metodo para q salga.
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
      
      def updateTitle (titulo, libroNuevo)
        busqueda = @@libreria.select {|libro| libro.titulo == titulo}
        delete(titulo) if busqueda.length > 0 
        insert(libroNuevo)
      end
      
      def list
        #devuelve el array de almacen
        if @@libreria.length == 0 then
          return nil
        else
          @@libreria
        end
      end
      
    end
  end
end

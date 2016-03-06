#es como si fura la forma de trabajar sobre una tabla de base de datos, una unica tabla.                                                                                                                                        
#deberia tener los métodos insert, update, delete y list
#es el que accede a la información final
class PersonasDAO
  
  #al crear un initialize metiendole el almacen y el id, lo que hacemos es que pasen a ser variables de instancia.
  #de esta manera podría tener varios almacenes, ya que cada vez que creara un nuevo objeto tendria un nuevo almacen diferente.
  def initialize
    @almacenPersonas = []
    @id = 1
  end
  
  def insert(persona)
    #guardar persona en almacen Personas
    persona.id = @id
    @id+=1
    @almacenPersonas << persona
  end
  
  def update(persona)
    #obtengo el id de la persona a actualizar
    idABuscar = persona.id
    #busco el id en el arrayPersonas    
    i = 0
    for personaActual in @almacenPersonas
      if personaActual.id == idABuscar then
        #sustituyo la persona vieja por la persona nueva
        @almacenPersonas[i]=persona
        return
      end
      i+=1
    end
    #en este caso particular podríamos ejecutar este código, porque la posición en el array es igual al id
    #@@almacenPersonas[idABuscar] = persona
  end
  
  def deletes(idPersona)
    #borro persona del array
    for personaActual in @almacenPersonas
      if personaActual.id == idPersona then
        @almacenPersonas.delete personaActual
        return
        #deja de recorrer el array una vez encuentra la persona a borrar y la borra.
      end
    end
  end
  
  def list
    #devuelvo el array
    @almacenPersonas 
  end
  
end
#es como si fura la forma de trabajar sobre una tabla de base de datos, una unica tabla.
#deberia tener los métodos insert, update, delete y list
#es el que accede a la información final
class PersonasDAO
  
  #si lo hiciera solo con una @, cada vez que creara un objeto, el almacen seria diferente, mientras que haciendolo global siempre se accede al mismo almacen.
  #almacen persistente
  @@almacenPersonas = []
  @@id = 1
  
  def insert(persona)
    #guardar persona en almacen Personas
    persona.id = @@id
    @@id+=1
    @@almacenPersonas << persona
    #si luego estas borrando y añadiendo se pierde y no vale
    #persona.id = @@almacenPersonas.length
  end
  
  def update(persona)
    #obtengo el id de la persona a actualizar
    idABuscar = persona.id
    #busco el id en el arrayPersonas    
    i = 0
    for personaActual in @@almacenPersonas
      if personaActual.id == idABuscar then
        #sustituyo la persona vieja por la persona nueva
        @@almacenPersonas[i]=persona
        return
      end
      i+=1
    end
    #en este caso particular podríamos ejecutar este código, porque la posición en el array es igual al id
    #@@almacenPersonas[idABuscar] = persona
  end
  
  def deletes(idPersona)
    #borro persona del array
    for personaActual in @@almacenPersonas
      if personaActual.id == idPersona then
        @@almacenPersonas.delete personaActual
        return
        #deja de recorrer el array una vez encuentra la persona a borrar y la borra.
      end
    end
  end
  
  def list
    #devuelvo el array
    @@almacenPersonas 
  end
  
end
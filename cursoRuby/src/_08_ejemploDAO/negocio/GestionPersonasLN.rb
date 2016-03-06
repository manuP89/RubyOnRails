
class GestionPersonasLN
  #así el negocio solo me permite guardar personas en memoria, no en base de datos. Para ello tendría que venir y cambiar el código.
  #jamas debe saber el negocio que tipo de dao es.
  #@@personasDao = PersonasDAO.new
  #@@personasLog = LogDAO.new
  #en la inicialización me encargo de acoplar todo.
  
  def initialize(dao, log)
    @personasDao = dao
    @personasLog = log  
  end
  
  def guardarPersona(persona)
    @personasDao.insert persona
    @personasLog.generarLog "Persona insertada:  #{persona}."
  end
  
  def buscarPersona(idPersona)
    listaDePersonas = @personasDao.list
    #recorro el array buscando el idPersona
    for persona in listaDePersonas
      if idPersona == persona.id
        return persona    #aqui este return corta la funcion, por eso el log siguiente solo se muestra cuando no ha encontrado la persona.
      end
    end
    @personasLog.generarLog "Persona con id #{idPersona} no encontrada."
    return nil
  end
 
  def borrarPersonas(arrayIdPersonas)
    #recorro el array de personas
    for id in arrayIdPersonas do
      @personasDao.deletes id
    end
    @personasLog.generarLog "Personas borradas."
  end
  
  def actualizarPersona(persona)
    @personasDao.update persona
    @personasLog.generarLog "Persona actualizada."
  end
  
  def listarPersonas
    @personasDao.list
  end
  
end
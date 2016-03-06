class NegocioUsuario
  
  def initialize dao 
    @dao = dao
  end
  
  def crear usuario
    @dao.crear usuario
    true 
  end
  
  def validar usuario
    mapaUsuarios = @dao.getUsuarios
    usuarioDao = mapaUsuarios[usuario.nombre]
    if usuarioDao == nil
      return false
    else
      if usuarioDao.password == usuario.password
        return true
      else 
        return false
      end        
    end
  end
  
end
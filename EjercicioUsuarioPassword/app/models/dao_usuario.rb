class DaoUsuario
  
  @@usuarios = {}
  
  def crear usuario
    @@usuarios[usuario.nombre] = usuario
  end
  
  def getUsuarios
    @@usuarios
  end
  
end
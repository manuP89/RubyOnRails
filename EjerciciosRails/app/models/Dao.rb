class Dao
  
  @@usuarios = []    

  def self.insert (usuario)
    existe = @@usuarios.select {|usuarioExistente| usuarioExistente.user == usuario.user}
    puts "Existe?: #{existe}"
    if existe.size == 0
      @@usuarios << usuario
    end
    
    #for usuarioExistente in @@usuarios
    #  if usuarioExistente.user == usuario.user
    #    puts "No se puede sobreescribir un usuario"
    #  else
    #    @@usuarios << usuario
    #  end
    #end
        
  end

  def self.checkPassword (user, pass)
    for usuario in @@usuarios
      if usuario.user == user
        if usuario.pass == pass
          return true
        else
          return false
        end
      end
    end
    #busqueda = @@usuarios.select {|usuarioExistente| usuarioExistente.user == user}
    #puts "Busqueda?: #{busqueda}"
    #if busqueda.pass == pass
    #  return true
    #else
    #  return false
    #end
  end

  def self.list
    @@usuarios
  end

end     
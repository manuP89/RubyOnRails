
#load "../models/LoginUserDAO.rb"

class LoginUsuarioController < ApplicationController
  
  def loginUser
    #TODO: validamos la contraseña del usuario
    user = params[:user]
    pass = params[:password]
    if user && pass
      check = Dao.checkPassword(user, pass)
    end
    if check
      @mensaje = "USUARIO IDENTIFICADO CORRECTAMENTE"
    else
      @mensaje = "CONTRASEÑA INCORRECTA"
    end
  end
  
  def signinUser
    user = params[:user]
    pass = params[:password]
    if user && pass
      if user.size < 5 
        @mensaje = "EL USUARIO NO ES VÁLIDO. Debe tener una longitud superior a 5 caracteres"
      elsif pass.size < 6
        @mensaje = "LA CONTRASEÑA NO ES VÁLIDA. Debe tener una longitud superior a 6 caracteres"
      else
        usuario = Usuario.new(user, pass)
        Dao.insert usuario
        @mensaje = "USUARIO REGISTRADO CORRECTAMENTE"
        #TODO: comprobar que no exista un usuario con el nombre que se ha escrito.
      end
    end
    puts usuario
  end
  
  def listarUsuarios
    puts "HOLAAAAAAAAA"
    listado = Dao.list
    puts listado
  end
  
end

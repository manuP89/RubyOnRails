class UsuarioController < ApplicationController
  
  def validar
    usuario = crearObjetoUsuario
    negocio = NegocioUsuario.new(DaoUsuario.new)
    @usuarioValido = negocio.validar usuario
    
    #if @usuarioValido
    #  render "main"
    #else
    #  render "index"
    #end
  end
  
  def alta
    usuario = crearObjetoUsuario
    negocio = NegocioUsuario.new(DaoUsuario.new)
    negocio.crear usuario
  end

  private
  def crearObjetoUsuario
    usuario = Usuario.new
    usuario.nombre = params[:user]
    usuario.password = params[:password]
    return usuario
  end
end

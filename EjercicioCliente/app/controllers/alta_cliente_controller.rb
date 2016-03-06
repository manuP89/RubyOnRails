class AltaClienteController < ApplicationController
  
  def index
    @clientes = DaoCliente.new.getClientes  
  end
  
  def altaCliente
    @bandera = true
    cliente = crearObjetoCliente
    dao = DaoCliente.new
    dao.crear cliente
    @clientes = dao.getClientes
    render "index"
  end
  
  def detalle
    if params[:fin] == "detalle"
      id = params[:id].to_i
      @cliente = DaoCliente.new.getClienteById id
      render :detalle
    elsif params[:fin] == "modificar"
      id = params[:id].to_i
      @cliente = DaoCliente.new.getClienteById id
      render :modificar
    end
    id = params[:id].to_i
    @cliente = DaoCliente.new.getClienteById id
  end
  
  def borrar
    id = params[:id].to_i
    @cliente = DaoCliente.new.borrar id
    @clientes = DaoCliente.new.getClientes
    render :index
  end
  
  def modificar
    id = params[:id].to_i
    nombre = params[:nombre]
    apellidos = params[:apellidos]
    edad = params[:edad]
    telefono = params[:telefono]
    @cliente = DaoCliente.new.getClienteById id
    @cliente.nombre = nombre
    @cliente.apellidos = apellidos
    @cliente.edad = edad
    @cliente.telefono = telefono
    @clientes = DaoCliente.new.getClientes
    render :index
  end
  
  private
  def crearObjetoCliente
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellidos = params[:apellidos]
    cliente.edad = params[:edad]
    cliente.telefono = params[:telefono]
    return cliente
  end
  

  
end

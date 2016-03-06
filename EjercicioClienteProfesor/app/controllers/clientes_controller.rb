class ClientesController < ApplicationController
  
  def alta
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellidos = params[:apellidos]
    cliente.edad = params[:edad]
    cliente.telefono = params[:telefono]
    dao = DaoCliente.new
    dao.alta cliente
    @clientes = dao.getClientes
    render :index
  end

  def detalle
    id = params[:id].to_i
    @cliente = DaoCliente.new.getClienteById id
  end

  def index
    @clientes = DaoCliente.new.getClientes
  end

end

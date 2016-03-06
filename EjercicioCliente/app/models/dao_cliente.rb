class DaoCliente
  
  @@clientes = {}
  @@id = 0
  
  def crear cliente
    cliente.id = @@id
    @@clientes[@@id] = cliente
    @@id += 1
  end
  
  def getClientes
    @@clientes.values
  end
  
  def getClienteById id
    @@clientes[id]
  end
  
  def borrar id
    @@clientes.delete(id)
  end

end
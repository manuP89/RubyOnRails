class DaoCliente
  
  @@clientesHash = {}
  @@id = 0
  
  def alta cliente
    cliente.id = @@id
    @@clientesHash[@@id] = cliente
    @@id += 1
  end
  
  def getClientes
    @@clientesHash.values
  end
  
  def getClienteById id
    @@clientesHash[id]
  end
  
end
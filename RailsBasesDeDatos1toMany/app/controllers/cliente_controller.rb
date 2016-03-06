class ClienteController < ApplicationController
  
  #Para hacer este ejemplo se ejecutaronlos siguientes comandos
  #rails generate controller cliente
  #rails generate model cliente nombre apellidos
  #rails generate model factura descripcion:string valor:integer
  #A continuación se modificarón el modelo de cliente y dirección.rb
  #así como la clase de migrate para hacer la relación 1 to 1
  #Crear las tablas con el comando rake db:migrate
  
  @@variable_factura = 0
  @@variable_cliente = 0
  
  def alta
    factura = Factura.new
    arrayFacturas = Array.new
    
    @@variable_factura += 1
    factura.descripcion = "Factura #{@@variable_factura}"
    factura.valor = 50 * @@variable_factura
    arrayFacturas << factura
    
    factura = Factura.new
    @@variable_factura += 1
    factura.descripcion = "Factura #{@@variable_factura}"
    factura.valor = 50 * @@variable_factura
    arrayFacturas << factura

    cliente = Cliente.new
    @@variable_cliente += 1
    cliente.nombre = "Cliente #{@@variable_cliente}"
    cliente.apellidos = "apellidos #{@@variable_cliente}"
    cliente.facturas= arrayFacturas
    
    #Al almacenar el cliente, almacenamos tambien la factura
    cliente.save
    render :index
  end
  
  def borrar
    Cliente.first.destroy
    render :index
  end

end

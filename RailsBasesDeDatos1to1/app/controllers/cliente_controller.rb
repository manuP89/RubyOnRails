class ClienteController < ApplicationController
  
  #Para hacer este ejemplo se ejecutaronlos siguientes comandos
  #rails generate controller cliente
  #rails generate model cliente nombre:string apellidos:string
  #rails generate model direccion nombre_via:string numero:integer
  #A continuación se modificarón el modelo de cliente y dirección.rb
  #así como la clase de migrate para hacer la relación 1 to 1
  #Crear las tablas con el comando rake db:migrate
  
  def crear
    direccion = Direccion.new
    direccion.nombre_via = "Avenida de la oca"
    direccion.numero = 33
    
    cliente = Cliente.new
    cliente.nombre = "Félix"
    cliente.apellidos = "de Pablo"
    cliente.direccion= direccion
    
    #Al almacenar el cliente, almacenamos tambien la dirección
    cliente.save
    render :index
  end
  
  def borrar 
    Cliente.first.destroy
    render :index
  end
end

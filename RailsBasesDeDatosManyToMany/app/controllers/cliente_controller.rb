class ClienteController < ApplicationController
  
  #Tendremos relaciones entre clientes y comerciales many to many
  #A parte de los comandos para crear el cliente y el comercial
  #Cliente con nombre y apellidos
  #Comercial con nombre y salario
  
  #hemos tenido que crear la tabla intermedia
  #rails generate migration createClientesComercials
  #El nombre debe de ser así para seguir la convencion de Rails
  
  #Para empezar desde cero en la bd podemos poner el comando
  #'rake db:drop db:create db:migrate'
  
  @@variable_comercial = 0
  @@variable_cliente = 0
  
  def alta
    arrayComerciales = Array.new
    
    comercial = Comercial.new
    @@variable_comercial += 1
    comercial.nombre = "Comercial #{@@variable_comercial}"
    comercial.salario = 1000 * @@variable_comercial
    arrayComerciales << comercial
    
    comercial = Comercial.new
    @@variable_comercial += 1
    comercial.nombre = "Comercial #{@@variable_comercial}"
    comercial.salario = 1000 * @@variable_comercial
    arrayComerciales << comercial
    
    cliente = Cliente.new
    @@variable_cliente += 1
    cliente.nombre = "Cliente #{@@variable_cliente}"
    cliente.apellidos = "apellidos #{@@variable_cliente}"
    cliente.comercials= arrayComerciales
    
    #Al almacenar el cliente, almacenamos tambien la dirección
    cliente.save
    render :index
  end
  
end

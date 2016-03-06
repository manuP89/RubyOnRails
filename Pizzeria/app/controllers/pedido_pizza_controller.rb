class PedidoPizzaController < ApplicationController

  def procesarPedido
    @cliente = Cliente.new(params[:direccion], params[:telefono])
    @pizza = addPizza
    @pedido = Pedido.new(@cliente, @pizza)
    for pizza in @@pizzas
      @precioTotal += pizza.precio
    end
  end
  
  @@pizzas = []
  def addPizza
    @bandera = true
    @nuevaPizza = Pizza.new(params[:tamano], params[:ingredientes])
    @@pizzas << @nuevaPizza
    render "index"
  end
  
  def precioTotal
    
  end
  
end

class PedidoPizzaController < ApplicationController

  def procesarPedido
    @cliente = Cliente.new(params[:direccion], params[:telefono])
    @pizza = Pizza.new(params[:tamano], params[:ingredientes])
    @pedido = Pedido.new(@cliente, @pizza)
  end
  
end

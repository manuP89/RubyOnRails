class Pedido
  
  attr_accessor :cliente, :pizza
  
  def initialize (cliente, pizza)
    @cliente = cliente
    @pizza = pizza
  end
  
  def to_s
    "#{@cliente}\n#{@pizza}"
  end
  
end
class Calculadora

#explico el self en el main.
#cuando estoy dentro de un método de instancia, el self se refiere al objeto ya creado al cual el método pertenece, 
#mientras que cuando estamos fuera, como en este caso, se refiere a la clase como tal. 
  def self.suma(valor1,valor2)
    valor1 + valor2
  end

  def self.resta(valor1,valor2)
    valor1  - valor2 
  end
  
  def self.division(valor1,valor2)
    valor1  / valor2 
  end 

  def self.multiplicacion(valor1,valor2)
    valor1  * valor2 
  end
  
end
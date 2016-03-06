
class CalculadoraMemoria
  
  def self.borrar
    @@memoria = 0
  end
  
  def self.operar(a,operacion)
    case 
    when operacion == "+"
      @@memoria = Calculadora.suma(a,@@memoria)
    when operacion == "-"
      @@memoria = Calculadora.resta(a,@@memoria)
    when operacion == "*"
      @@memoria = Calculadora.multiplicacion(a,@@memoria)
    when operacion == "/"
      @@memoria = Calculadora.division(a,@@memoria)
    end  
  end
end
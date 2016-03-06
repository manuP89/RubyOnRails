
def mostrar (valor)
  puts valor
end

def suma (valor1, valor2)
  valor1.to_f + valor2
end

def resta (valor1, valor2)
  valor1.to_f - valor2
end

def multi (valor1, valor2)
  valor1.to_f * valor2
end

def divis (valor1, valor2)
  valor1.to_f / valor2
end

def menu
  mostrar "Introduzca el primer número"
  valor1 = gets.strip
  mostrar "Introduzca el segundo número"
  valor2 = gets.strip.to_f    #podemos ponerlo aqui o en los métodos. Podría ser recomendable ponerlo en los métodos porque así no se tiene que ir poniendo en todas las consolas
  mostrar "Los valores introducidos son: #{valor1}, #{valor2}"
  mostrar "El resultado de la suma entre ellos es: #{suma(valor1, valor2)}"
  mostrar "El resultado de la resta entre ellos es: #{resta(valor1, valor2)}"
  mostrar "El resultado de la multiplicacion entre ellos es: #{multi(valor1, valor2)}"
  mostrar "El resultado de la division entre ellos es: #{divis(valor1, valor2)}"
end

menu


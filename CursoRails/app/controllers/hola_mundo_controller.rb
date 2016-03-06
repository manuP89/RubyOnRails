class HolaMundoController < ApplicationController
  
  #cada vez que llega una peticion web a este controlador se creará un objeto nuevo, por lo que
  #hay que tener cuidado con las variables de instancia, ya que perderemos su valor en cada llamada a esta clase.
  #Principalmente, las variables de instancia nos van a servir para comunicarnos con la vista
  
  @@contadorClase = 0
  
  def initialize
    @contadorInstancia = 0
  end
  
  def saludame
    puts "saludame -> Entrando en el método"
    I18n.locale = :es
    @saludo = I18n.t 'hello'
    @@contadorClase +=1
    @contadorInstancia +=1
    puts "El contador de clase vale: #{@@contadorClase}"
    puts "El contador de instancia vale: #{@contadorInstancia}"
  end
  
  def saludameIngles
    puts "saludameIngles -> Entrando en el método"
    I18n.locale = :en
    @saludo = I18n.t 'hello'
    #redirige a la página html que le pongas, en este caso a saludame
    render 'saludame'
  end
  
end

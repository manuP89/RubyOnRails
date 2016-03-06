#Aqui simplemente vamos a definir la clase persona, sin hacer nada de lógica                                                                                                                                            
#las clases se escriben con mayúscula la primera, y utilizando camel case

#Ruby beans: clases que generalmente tienen atributos y setters y getters. Suelen ser clases simples, que no tienen mucha logica de negocio.

#los dos puntos ":" son simbolos. En concreto es como una cadena de texto.un sumbolo nombre es siempre el mismo aunque lo escriba mil veces, mientras que si escribo mil veces la misma cadena de texto son mil cadenas de texto en memoria.
class Persona
  
  #con esto estamos creando sus respectivos getters y setters
  attr_accessor :nombre, :sexo, :edad
  
  #con esto damos permisos de solo lectura, no de escritura
  attr_reader :dni
  
  #tambien tenemos permisos de solo escritura (es poco común)
  #attr_writer
  
  #genero una variable de clase.es una propiedad de la clase, no del objeto.
  @@numero_de_personas = 0
  
  #Defino el metodo de clase para acceder al número de personas
  
  def self.getNumeroDePersonas    #self es un atajo para crear los métodos de clases. a partir de ponerlo, todos los metodos son metodos publicos de clases.
    #la clase no ve ninguno de sus hijos. solo sabe crearlos. solo ve las variables de clase, en este caso "@@numero_de_personas"
    #desde la clase no se puede acceder a los atributos del objeto (variables de instancia), pero desde el objeto si se puede acceder a las variables de clase.
    #puts "El DNI es #{@dni}"
    @@numero_de_personas
  end
  
  
  #este es el constructor de clase. siempre se llama así. uno y no más.
  def initialize(dni, nombre, sexo, edad)
    #los atributos se llamas con la primera letra '@', sino serían variables sin mas. Se les llama variables de instancia.
    @dni = dni
    @nombre = nombre
    @sexo = sexo
    @edad = edad
    @colorOjos = nil
    @@numero_de_personas = @@numero_de_personas + 1
  end
  
  #Para definir un atributo dentro de un objeto (set) y para obtener dicho atributo (get)
  def setColorOjos (colorOjos)
    @colorOjos = colorOjos
  end
  
  def getColorOjos
    @colorOjos
  end
  #esto es otro set
  def colorOjos= colorOjos
    @colorOjos = colorOjos
  end
  #esto es otro get
  def colorOjos
    @colorOjos
  end
  
  def saludar
    puts "Hola a todos, soy una persona y me llamo #{@nombre}"
  end
  
  
  #al llamar al objeto, ruby directamente hace un llamamiento al to_s, y nos devuelve algo tipo "#<Persona:0x00000002c6c6e8>"
  #para poder imprimir una persona sobreescribimos el método to_s
  def to_s
    "#{@dni}, #{@nombre}, #{@sexo}, #{@edad}, #{@colorOjos}"
  end
  
  
  
end

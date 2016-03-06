class Pelicula
  attr_accessor :id, :titulo, :director, :actores

  #titulo -> string
  #director -> objeto de la clase Director
  #actores -> array de la clase Actor
  def initialize   titulo, director, actores
    #if director.instance_of? Director then ... 
    @titulo = titulo
    @id = nil
    @director = director
    @actores = actores
  end
  
  def to_s
    actores_to_s = ""
    for actor in @actores
      actores_to_s += actor.to_s+". "
    end
    "Id: #{@id} \n Título: #{@titulo} \n Director: #{@director} \n Actores: [#{actores_to_s}]"
  end

end
  
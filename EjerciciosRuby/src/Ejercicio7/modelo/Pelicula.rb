
class Pelicula
  
  attr_accessor :id, :titulo, :director, :actores
  
  def initialize (titulo, director,actores, id=nil)
    @titulo = titulo
    @director = director
    @actores = actores
    @id = id
  end
  
  def to_s
    "#{@id}. #{@titulo}. D: #{@director}. A: #{@actores}"
  end
  
end
module Biblioteca
  module Modelo
    class Libro
  
      attr_accessor :id, :titulo, :autor, :descripcion
      
      def initialize (titulo, autor, descripcion, id=nil)
        @titulo = titulo
        @autor = autor
        @descripcion = descripcion
        @id = id
      end
      
      def to_s
        "#{@id}. #{@titulo}, #{@autor}. D: #{@descripcion}"
      end
      
    end
  end
end

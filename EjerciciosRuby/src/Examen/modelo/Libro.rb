module Libreria
  module Modelo
    class Libro
      
      attr_accessor :titulo, :autor, :descripcion, :id
      
      def initialize (titulo, autor, descripcion, id = nil)
        
        @titulo, @autor, @descripcion, @id = titulo, autor, descripcion, id
        
      end
      
      def to_s
        
        "[#{@id}]. \n   #{@titulo}, #{@autor}. \n   D: #{@descripcion}"
        
      end
      
    end
  end
end
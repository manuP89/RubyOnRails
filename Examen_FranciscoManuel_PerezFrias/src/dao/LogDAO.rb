
#se genera un log para realizar trazas de seguimiento al programa.
module Libreria
  module Memoria
    class LogDAO
      
      def generarLog(texto)
        puts "---<LOG> #{texto}"
      end
      
    end
  end
end

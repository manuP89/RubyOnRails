class Direccion < ActiveRecord::Base
  #Mediante este comando decimos que una dirección pertenece
  #a un cliente. Es necesario decir donde se va a almacenar la 
  #ralacion, en este caso en direccion
  #Es decir para este caso, se va a crear un campo cliente_id
  #en la tabla direccion que va a ser foreign key de la tabla
  #clientes (por id)
  belongs_to :cliente
end

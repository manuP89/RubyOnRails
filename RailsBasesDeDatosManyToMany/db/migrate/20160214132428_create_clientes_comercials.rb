class CreateClientesComercials < ActiveRecord::Migration
  def change
    #add ', :id => false' para que no cree el id en esta tabla 
    create_table :clientes_comercials, :id => false do |t|
      #Add estas dos lineas al archivo que se creo automaticamente
      #Se añade este comando para decir que queremos crear
      #una relación en la base de datos a la tabla cliente
      #y a la tabla comercial
      t.belongs_to :cliente
      t.belongs_to :comercial
    end
  end
end

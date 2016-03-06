class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :descripcion
      t.float :valor
      
      #Se añade este comando para decir que queremos crear
      #una relación en la base de datos a la tabla cliente
      #por indice
      t.belongs_to :cliente, index: true
      t.timestamps
    end
  end
end

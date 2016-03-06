class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :nombre_via
      t.integer :numero
      
      #Se añade este comando para decir que queremos crear
      #una relación en la base de datos a la tabla cliente
      #por indice
      t.belongs_to :cliente, index: true
      t.timestamps
    end
  end
end

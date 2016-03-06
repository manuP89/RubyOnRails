class CreateComercials < ActiveRecord::Migration
  def change
    create_table :comercials do |t|
      t.string :nombre
      t.integer :salario

      t.timestamps
    end
  end
end

class CreateZapatos < ActiveRecord::Migration
  def change
    create_table :zapatos do |t|
      t.integer :talla
      t.string :tipo
      t.string :color

      t.timestamps
    end
  end
end

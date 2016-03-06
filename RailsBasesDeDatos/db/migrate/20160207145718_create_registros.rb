class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :titulo
      t.string :comentarios

      t.timestamps
    end
  end
end

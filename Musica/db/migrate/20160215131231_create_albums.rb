class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :titulo
      t.string :artista
      t.integer :anio

      t.timestamps
    end
  end
end

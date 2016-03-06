class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :codigoFactura
      t.string :nombreCliente
      t.integer :valor

      t.timestamps
    end
  end
end

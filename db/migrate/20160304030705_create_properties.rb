class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
    	t.string :direccion
		t.integer :precio
		t.string :descripcion
		t.integer :piezas
		t.integer :banos
		t.integer :superficie_total
		t.integer :pisos
		t.boolean :piscina
		t.integer :superficie_construida
		t.boolean :amoblado
		t.boolean :estacionamiento
		t.boolean :bodega
		t.boolean :estado
		t.boolean :casa
		t.boolean :departamento
		t.boolean :terreno
		t.boolean :gastos_comunes
		t.string :comentarios
		t.string :comuna
		t.string :ciudad
		t.references :user

      t.timestamps null: false
    end
  end
end

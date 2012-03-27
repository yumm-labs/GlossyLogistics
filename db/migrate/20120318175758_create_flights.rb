class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :name
      t.integer :no
      t.text :description
      t.references :airline

      t.timestamps
    end
    add_index :flights, :airline_id
  end
end

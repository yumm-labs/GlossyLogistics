class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :name
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end

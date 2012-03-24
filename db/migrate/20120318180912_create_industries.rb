class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.integer :owner_id
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end

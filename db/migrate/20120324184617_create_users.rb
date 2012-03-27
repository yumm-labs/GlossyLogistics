class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.string :name
      t.string :email
      t.integer :mobile
      t.integer :phone
      t.references :industry
      t.string :description
      t.string :password

      t.timestamps
    end
    add_index :users, :industry_id
  end
end

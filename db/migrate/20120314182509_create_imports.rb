class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.integer :igm_no
      t.date :igm_date

      t.timestamps
    end
  end
end

class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :no_of_pkgs
      t.string :invoice_reference
      t.text :goods_description
      t.string :mawb_mbl_no
      t.string :hawb_hbl_no
      t.string :agent
      t.string :bill_no
      t.date :bill_date
      t.string :transport_type
      t.integer :transport_id
      t.date :cargo_receipt_date
      t.integer :job_no

      t.timestamps
    end
  end
end

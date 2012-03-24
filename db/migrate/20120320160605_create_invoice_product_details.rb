class CreateInvoiceProductDetails < ActiveRecord::Migration
  def change
    create_table :invoice_product_details do |t|
      t.references :invoice
      t.references :product
      t.integer :amount

      t.timestamps
    end
    add_index :invoice_product_details, :invoice_id
    add_index :invoice_product_details, :product_id
  end
end

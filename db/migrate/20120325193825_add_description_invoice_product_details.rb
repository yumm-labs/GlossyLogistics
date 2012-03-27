class AddDescriptionInvoiceProductDetails < ActiveRecord::Migration
  def up
    add_column :invoice_product_details, :description, :string
  end

  def down
    remove_column :invoice_product_details, :description
  end
end

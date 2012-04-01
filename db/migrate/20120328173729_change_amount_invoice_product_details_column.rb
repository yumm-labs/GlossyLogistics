class ChangeAmountInvoiceProductDetailsColumn < ActiveRecord::Migration
  def up
    change_column :invoice_product_details, :amount, :float, :scope => 2, :default => 0
  end

  def down
    change_column :invoice_product_details, :amount, :integer
  end
end

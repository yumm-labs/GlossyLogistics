class ModifyInvoiceColumns < ActiveRecord::Migration
  def up

    add_column :invoices, :product_total, :float, :scale => 2, :default => 0
    remove_column :invoices, :total_amount
    add_column :invoices, :grand_total, :float, :scale => 2, :default => 0
    change_column :invoices, :service_charge, :float, :scale => 2, :default => 0
    change_column :invoices, :service_tax_amount, :float, :scale => 2, :default => 0
    change_column :invoices, :service_tax_percentage, :float, :scale => 2, :default => 0

  end

  def down

    change_table(:invoices) do |t|
      remove_column :invoices, :product_total
      add_column :invoices, :total_amount, :integer
      remove_column :invoices, :grand_total
      change_column :invoices, :service_charge, :integer
      change_column :invoices, :service_tax_amount, :integer
      change_column :invoices, :service_tax_percentage, :integer
    end

  end
end

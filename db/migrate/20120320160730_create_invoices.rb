class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :shipment
      t.string :name
      t.string :email
      t.string :phone
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.date :invoice_date
      t.integer :invoice_number
      t.integer :service_charge
      t.integer :service_tax_amount
      t.integer :service_tax_percentage
      t.integer :total_amount

      t.timestamps
    end
    add_index :invoices, :shipment_id
  end
end

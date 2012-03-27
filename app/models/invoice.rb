# == Schema Information
#
# Table name: invoices
#
#  id                     :integer         not null, primary key
#  shipment_id            :integer         indexed
#  name                   :string(255)
#  email                  :string(255)
#  phone                  :string(255)
#  line1                  :string(255)
#  line2                  :string(255)
#  city                   :string(255)
#  state                  :string(255)
#  country                :string(255)
#  pincode                :string(255)
#  invoice_date           :date
#  invoice_number         :integer
#  service_charge         :integer
#  service_tax_amount     :integer
#  service_tax_percentage :integer
#  total_amount           :integer
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#
# DOC. No.
# BE No.
# ASS. VALUE
# product_amount
#Importer
class Invoice < ActiveRecord::Base
  belongs_to :shipment
  has_many :invoice_product_details
  has_many :products, :through => :invoice_product_details

  accepts_nested_attributes_for :invoice_product_details, :allow_destroy => true
  def new_product_details_attributes=(attrs)
    attrs.each do |attr|
      self.invoice_product_details << InvoiceProductDetail.new(attr)
    end
  end

end

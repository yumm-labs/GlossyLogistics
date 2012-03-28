# == Schema Information
#
# Table name: invoice_product_details
#
#  id          :integer         not null, primary key
#  invoice_id  :integer         indexed
#  product_id  :integer         indexed
#  amount      :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  description :string(255)
#

class InvoiceProductDetail < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :product

  delegate :name, :to => :product
end

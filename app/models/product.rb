# == Schema Information
#
# Table name: products
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  identifier  :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Product < ActiveRecord::Base

  scope :exclude_ids, lambda {|ids| where(['id NOT IN (?)', ids]) if ids.any? }

  scope :exclude_product_details, lambda {|product_details|
    product_ids = product_details.collect(&:product_id)
    where(['id NOT IN (?)', product_ids]) if product_ids.any?
  }

end

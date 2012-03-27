# == Schema Information
#
# Table name: imports
#
#  id         :integer         not null, primary key
#  igm_no     :integer
#  igm_date   :date
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Import < ActiveRecord::Base
  has_one :shipment, :as => :transport, :dependent => :destroy
  accepts_nested_attributes_for :shipment
end

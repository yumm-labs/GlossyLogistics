class Import < ActiveRecord::Base
  has_one :shipment, :as => :transport, :dependent => :destroy
  accepts_nested_attributes_for :shipment
end

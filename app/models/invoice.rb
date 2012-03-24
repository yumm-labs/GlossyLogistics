class Invoice < ActiveRecord::Base
  belongs_to :shipment
end

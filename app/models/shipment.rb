class Shipment < ActiveRecord::Base
  
  belongs_to :transport, :polymorphic => true
  has_one :invoice
 
end

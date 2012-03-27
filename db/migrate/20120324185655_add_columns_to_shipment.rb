class AddColumnsToShipment < ActiveRecord::Migration
  def change
     change_table :shipments do |t|
     t.references :user
     t.references :industry
     t.references :mode_of_transport
     t.references :status
     t.references :destination  
    end
  end
end

class CreateModeOfTransports < ActiveRecord::Migration
  def change
    create_table :mode_of_transports do |t|
      t.string :name

      t.timestamps
    end
  end
end

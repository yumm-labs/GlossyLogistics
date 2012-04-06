class RenameOwnerToRepresentativeIndustry < ActiveRecord::Migration
  def up
    rename_column :industries, :owner_id, :representative_id
  end

  def down
    rename_column :industries, :representative_id, :owner_id
  end
end

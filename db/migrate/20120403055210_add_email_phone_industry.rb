class AddEmailPhoneIndustry < ActiveRecord::Migration
  def up
    add_column :industries, :email, :string
    add_column :industries, :office_phone, :string
  end

  def down
    remove_column :industries, :email
    remove_column :industries, :office_phone
  end
end

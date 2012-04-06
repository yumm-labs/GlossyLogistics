# == Schema Information
#
# Table name: industries
#
#  id                :integer         not null, primary key
#  name              :string(255)
#  representative_id :integer
#  description       :text
#  address           :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#  email             :string(255)
#  office_phone      :string(255)
#

class Industry < ActiveRecord::Base
  belongs_to :representative, :class_name => 'User'
  
  accepts_nested_attributes_for :representative
end

# == Schema Information
#
# Table name: flights
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  no          :integer
#  description :text
#  airline_id  :integer         indexed
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Flight < ActiveRecord::Base
  belongs_to :airline
end

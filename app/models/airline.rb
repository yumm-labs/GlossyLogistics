# == Schema Information
#
# Table name: airlines
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  country     :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Airline < ActiveRecord::Base
end

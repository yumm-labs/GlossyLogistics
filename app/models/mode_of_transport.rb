# == Schema Information
#
# Table name: mode_of_transports
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class ModeOfTransport < ActiveRecord::Base
end

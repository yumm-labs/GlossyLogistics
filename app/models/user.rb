# == Schema Information
#
# Table name: users
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  name        :string(255)
#  email       :string(255)
#  mobile      :integer
#  phone       :integer
#  industry_id :integer         indexed
#  description :string(255)
#  password    :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class User < ActiveRecord::Base
  belongs_to :industry
  
  validates :name, :presence => true, :length => { :minimum => 3, :maximum => 30 }
  validates :email, :uniqueness => true, :allow_blank => true
  
end

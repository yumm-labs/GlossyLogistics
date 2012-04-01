# == Schema Information
#
# Table name: shipments
#
#  id                   :integer         not null, primary key
#  no_of_pkgs           :string(255)
#  invoice_reference    :string(255)
#  goods_description    :text
#  mawb_mbl_no          :string(255)
#  hawb_hbl_no          :string(255)
#  agent                :string(255)
#  bill_no              :string(255)
#  bill_date            :date
#  transport_type       :string(255)
#  transport_id         :integer
#  cargo_receipt_date   :date
#  job_no               :integer
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#  user_id              :integer
#  industry_id          :integer
#  mode_of_transport_id :integer
#  status_id            :integer
#  destination_id       :integer
#
# bundle exec annotate -s --exclude tests,fixtures
class Shipment < ActiveRecord::Base

  belongs_to :user
  has_one :invoice
  belongs_to :transport, :polymorphic => true
  belongs_to :status 
  belongs_to :destination 
  belongs_to :industry

  def current_status
    self.status.name
  end
  
  validates :status, :presence => true

end

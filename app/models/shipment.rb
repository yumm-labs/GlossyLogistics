# == Schema Information
#
# Table name: shipments
#
#  id                 :integer         not null, primary key
#  no_of_pkgs         :string(255)
#  invoice_reference  :string(255)
#  goods_description  :text
#  mawb_mbl_no        :string(255)
#  hawb_hbl_no        :string(255)
#  agent              :string(255)
#  bill_no            :string(255)
#  bill_date          :date
#  transport_type     :string(255)
#  transport_id       :integer
#  cargo_receipt_date :date
#  job_no             :integer
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

# bundle exec annotate -s --exclude tests,fixtures
class Shipment < ActiveRecord::Base

  belongs_to :transport, :polymorphic => true
  has_one :invoice

end

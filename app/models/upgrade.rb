class Upgrade < ActiveRecord::Base
  attr_accessible :price, :profile_id
  belongs_to :profile
  has_many :lineitems
  belongs_to :event
  has_many :item_upgrades
end
